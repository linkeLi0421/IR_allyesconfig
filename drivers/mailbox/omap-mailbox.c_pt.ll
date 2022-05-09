; ModuleID = '/llk/IR_all_yes/drivers/mailbox/omap-mailbox.c_pt.bc'
source_filename = "../drivers/mailbox/omap-mailbox.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+omap_mbox_enable_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_omap_mbox_enable_irq\09\09\09\09"
module asm "\09.long\09__crc_omap_mbox_enable_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_mbox_enable_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_mbox_enable_irq\22\09\09\09\09\09"
module asm "__kstrtabns_omap_mbox_enable_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+omap_mbox_disable_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_omap_mbox_disable_irq\09\09\09\09"
module asm "\09.long\09__crc_omap_mbox_disable_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_mbox_disable_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_mbox_disable_irq\22\09\09\09\09\09"
module asm "__kstrtabns_omap_mbox_disable_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+omap_mbox_request_channel\22, \22a\22\09"
module asm "\09.weak\09__crc_omap_mbox_request_channel\09\09\09\09"
module asm "\09.long\09__crc_omap_mbox_request_channel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_mbox_request_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_mbox_request_channel\22\09\09\09\09\09"
module asm "__kstrtabns_omap_mbox_request_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_mbox_match_data = type { i32 }
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.omap_mbox = type { ptr, i32, ptr, ptr, ptr, %struct.omap_mbox_fifo, %struct.omap_mbox_fifo, i32, ptr, i8 }
%struct.omap_mbox_fifo = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.omap_mbox_device = type { ptr, %struct.mutex, ptr, ptr, i32, i32, i32, ptr, %struct.mbox_controller, %struct.list_head }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.omap_mbox_fifo_info = type { i32, i32, i32, i32, i32, i32, ptr, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.omap_mbox_queue = type { %struct.spinlock, %struct.kfifo, %struct.work_struct, ptr, i8 }
%struct.kfifo = type { %union.anon.71, [0 x i8] }
%union.anon.71 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }

@__param_str_mbox_kfifo_size = internal constant [29 x i8] c"omap_mailbox.mbox_kfifo_size\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@mbox_kfifo_size = internal global { i32, [28 x i8] } { i32 256, [28 x i8] zeroinitializer }, align 32
@__param_mbox_kfifo_size = internal constant %struct.kernel_param { ptr @__param_str_mbox_kfifo_size, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @mbox_kfifo_size } }, section "__param", align 4
@__UNIQUE_ID_mbox_kfifo_sizetype233 = internal constant [43 x i8] c"omap_mailbox.parmtype=mbox_kfifo_size:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_mbox_kfifo_size234 = internal constant [71 x i8] c"omap_mailbox.parm=mbox_kfifo_size:Size of omap's mailbox kfifo (bytes)\00", section ".modinfo", align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/mailbox/omap-mailbox.c\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_omap_mbox_enable_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_mbox_enable_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_mbox_enable_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_mbox_enable_irq to i32), ptr @__kstrtab_omap_mbox_enable_irq, ptr @__kstrtabns_omap_mbox_enable_irq }, section "___ksymtab+omap_mbox_enable_irq", align 4
@__kstrtab_omap_mbox_disable_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_mbox_disable_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_mbox_disable_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_mbox_disable_irq to i32), ptr @__kstrtab_omap_mbox_disable_irq, ptr @__kstrtabns_omap_mbox_disable_irq }, section "___ksymtab+omap_mbox_disable_irq", align 4
@omap_mbox_request_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\013%s: please use mbox_request_channel(), this API is supported only for OMAP non-DT usage\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"omap_mbox_request_channel\00", [38 x i8] zeroinitializer }, align 32
@omap_mbox_request_channel._entry_ptr = internal global ptr @omap_mbox_request_channel._entry, section ".printk_index", align 4
@omap_mbox_devices_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @omap_mbox_devices_lock, i64 52), ptr getelementptr (i8, ptr @omap_mbox_devices_lock, i64 52) }, ptr @omap_mbox_devices_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@omap_mbox_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @omap_mbox_devices, ptr @omap_mbox_devices }, [24 x i8] zeroinitializer }, align 32
@omap_mbox_request_channel._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.2, ptr @.str, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Unable to startup the chan (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@omap_mbox_request_channel._entry_ptr.5 = internal global ptr @omap_mbox_request_channel._entry.3, section ".printk_index", align 4
@__kstrtab_omap_mbox_request_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_mbox_request_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_mbox_request_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_mbox_request_channel to i32), ptr @__kstrtab_omap_mbox_request_channel, ptr @__kstrtabns_omap_mbox_request_channel }, section "___ksymtab+omap_mbox_request_channel", align 4
@__initcall__kmod_omap_mailbox__237_923_omap_mbox_init4 = internal global ptr @omap_mbox_init, section ".initcall4.init", align 4
@omap_mbox_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap_mbox_probe, ptr @omap_mbox_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.9, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_mailbox_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_mbox_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@omap_mbox_class = internal global { %struct.class, [36 x i8] } { %struct.class { ptr @.str.37, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_omap_mbox_exit = internal global ptr @omap_mbox_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file238 = internal constant [47 x i8] c"omap_mailbox.file=drivers/mailbox/omap-mailbox\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [28 x i8] c"omap_mailbox.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [66 x i8] c"omap_mailbox.description=omap mailbox: interrupt driven messaging\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [40 x i8] c"omap_mailbox.author=Toshihiro Kobayashi\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [33 x i8] c"omap_mailbox.author=Hiroshi DOYU\00", section ".modinfo", align 1
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"omap_mbox_devices_lock.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap_mbox_devices_lock\00", [41 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@omap_mbox_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"omap-mailbox\00", [19 x i8] zeroinitializer }, align 32
@omap_mailbox_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-mailbox\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-mailbox\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-mailbox\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-mailbox\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am64-mailbox\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_data }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@omap_mbox_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @omap_mbox_suspend, ptr @omap_mbox_resume, ptr @omap_mbox_suspend, ptr @omap_mbox_resume, ptr @omap_mbox_suspend, ptr @omap_mbox_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@omap_mbox_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: only DT-based devices are supported\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap_mbox_probe\00", [16 x i8] zeroinitializer }, align 32
@omap_mbox_probe._entry_ptr = internal global ptr @omap_mbox_probe._entry, section ".printk_index", align 4
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,mbox-num-users\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,mbox-num-fifos\00", [46 x i8] zeroinitializer }, align 32
@omap_mbox_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str, i32 735, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no available mbox devices found\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_mbox_probe._entry_ptr.18 = internal global ptr @omap_mbox_probe._entry.14, section ".printk_index", align 4
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti,mbox-tx\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti,mbox-rx\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti,mbox-send-noirq\00", [45 x i8] zeroinitializer }, align 32
@omap_mbox_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&mdev->cfg_lock\00", [16 x i8] zeroinitializer }, align 32
@omap_mbox_chan_ops = internal constant { %struct.mbox_chan_ops, [40 x i8] } { %struct.mbox_chan_ops { ptr @omap_mbox_chan_send_data, ptr null, ptr @omap_mbox_chan_startup, ptr @omap_mbox_chan_shutdown, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@omap_mbox_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.11, ptr @.str, i32 870, ptr @.str.25, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap mailbox rev 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@omap_mbox_probe._entry_ptr.26 = internal global ptr @omap_mbox_probe._entry.23, section ".printk_index", align 4
@omap_mbox_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013failed to register mailbox interrupt:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"omap_mbox_startup\00", [46 x i8] zeroinitializer }, align 32
@omap_mbox_startup._entry_ptr = internal global ptr @omap_mbox_startup._entry, section ".printk_index", align 4
@mbox_queue_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&mq->lock\00", [22 x i8] zeroinitializer }, align 32
@mbox_queue_alloc.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&mq->work)\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@omap_mbox_of_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: could not find node phandle 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap_mbox_of_xlate\00", [45 x i8] zeroinitializer }, align 32
@omap_mbox_of_xlate._entry_ptr = internal global ptr @omap_mbox_of_xlate._entry, section ".printk_index", align 4
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@omap2_data = internal constant { %struct.omap_mbox_match_data, [28 x i8] } zeroinitializer, align 32
@omap4_data = internal constant { %struct.omap_mbox_match_data, [28 x i8] } { %struct.omap_mbox_match_data { i32 1 }, [28 x i8] zeroinitializer }, align 32
@omap_mbox_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str, i32 612, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"fifo %d has unexpected unread messages\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"omap_mbox_suspend\00", [46 x i8] zeroinitializer }, align 32
@omap_mbox_suspend._entry_ptr = internal global ptr @omap_mbox_suspend._entry, section ".printk_index", align 4
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mbox\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"mbox_kfifo_size\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 119, i32 21 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 234, i32 6 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 428, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [23 x i8] c"omap_mbox_devices_lock\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"omap_mbox_devices\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 117, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 455, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"omap_mbox_driver\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 895, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant [16 x i8] c"omap_mbox_class\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 464, i32 21 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 116, i32 8 }
@___asan_gen_.81 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 87, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 909, i32 8 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 899, i32 11 }
@___asan_gen_.89 = private unnamed_addr constant [22 x i8] c"omap_mailbox_of_match\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 649, i32 34 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"omap_mbox_pm_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 642, i32 32 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 718, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 727, i32 33 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 730, i32 33 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 735, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 748, i32 43 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 756, i32 43 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 766, i32 31 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 835, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [19 x i8] c"omap_mbox_chan_ops\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 594, i32 35 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 870, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 371, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 338, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 343, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 690, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 480, i32 15 }
@___asan_gen_.182 = private unnamed_addr constant [11 x i8] c"omap2_data\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 646, i32 42 }
@___asan_gen_.185 = private unnamed_addr constant [11 x i8] c"omap4_data\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 647, i32 42 }
@___asan_gen_.188 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 611, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.198 = private constant [34 x i8] c"../drivers/mailbox/omap-mailbox.c\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 464, i32 49 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__UNIQUE_ID_mbox_kfifo_size234, ptr @__UNIQUE_ID_mbox_kfifo_sizetype233, ptr @__exitcall_omap_mbox_exit, ptr @__initcall__kmod_omap_mailbox__237_923_omap_mbox_init4, ptr @__ksymtab_omap_mbox_disable_irq, ptr @__ksymtab_omap_mbox_enable_irq, ptr @__ksymtab_omap_mbox_request_channel, ptr @__param_mbox_kfifo_size, ptr @omap_mbox_exit, ptr @omap_mbox_of_xlate._entry, ptr @omap_mbox_of_xlate._entry_ptr, ptr @omap_mbox_probe._entry, ptr @omap_mbox_probe._entry.14, ptr @omap_mbox_probe._entry.23, ptr @omap_mbox_probe._entry_ptr, ptr @omap_mbox_probe._entry_ptr.18, ptr @omap_mbox_probe._entry_ptr.26, ptr @omap_mbox_request_channel._entry, ptr @omap_mbox_request_channel._entry.3, ptr @omap_mbox_request_channel._entry_ptr, ptr @omap_mbox_request_channel._entry_ptr.5, ptr @omap_mbox_startup._entry, ptr @omap_mbox_startup._entry_ptr, ptr @omap_mbox_suspend._entry, ptr @omap_mbox_suspend._entry_ptr, ptr @mbox_kfifo_size, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @omap_mbox_devices_lock, ptr @omap_mbox_devices, ptr @.str.4, ptr @omap_mbox_driver, ptr @omap_mbox_class, ptr @.str.6, ptr @.str.7, ptr @init_completion.__key, ptr @.str.8, ptr @omap_mbox_init.__key, ptr @.str.9, ptr @omap_mailbox_of_match, ptr @omap_mbox_pm_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @omap_mbox_probe.__key, ptr @.str.22, ptr @omap_mbox_chan_ops, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @mbox_queue_alloc.__key, ptr @.str.29, ptr @mbox_queue_alloc.__key.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @omap2_data, ptr @omap4_data, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_kfifo_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mbox_request_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mbox_devices_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mbox_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mbox_request_channel._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mbox_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mbox_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mbox_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mailbox_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mbox_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mbox_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mbox_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mbox_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mbox_chan_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mbox_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mbox_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_queue_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_queue_alloc.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mbox_of_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mbox_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_mbox_enable_irq(ptr noundef readonly %chan, i32 noundef %irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %chan, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %mbox_chan_to_omap_mbox.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

mbox_chan_to_omap_mbox.exit:                      ; preds = %entry
  %con_priv.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %mbox_chan_to_omap_mbox.exit.do.end_crit_edge, label %if.end23, !prof !128

mbox_chan_to_omap_mbox.exit.do.end_crit_edge:     ; preds = %mbox_chan_to_omap_mbox.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %mbox_chan_to_omap_mbox.exit.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 234, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end23:                                         ; preds = %mbox_chan_to_omap_mbox.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %irq)
  %cmp.i = icmp eq i32 %irq, 1
  %tx_fifo.i = getelementptr inbounds %struct.omap_mbox, ptr %1, i32 0, i32 5
  %rx_fifo.i = getelementptr inbounds %struct.omap_mbox, ptr %1, i32 0, i32 6
  %cond.i = select i1 %cmp.i, ptr %tx_fifo.i, ptr %rx_fifo.i
  %intr_bit.i = getelementptr inbounds %struct.omap_mbox_fifo, ptr %cond.i, i32 0, i32 6
  %2 = ptrtoint ptr %intr_bit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intr_bit.i, align 4
  %irqenable1.i = getelementptr inbounds %struct.omap_mbox_fifo, ptr %cond.i, i32 0, i32 3
  %4 = ptrtoint ptr %irqenable1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irqenable1.i, align 4
  %parent.i = getelementptr inbounds %struct.omap_mbox, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 4
  %mbox_base.i.i = getelementptr inbounds %struct.omap_mbox_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %mbox_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mbox_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %5
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !129
  %or.i = or i32 %10, %3
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 4
  %mbox_base.i9.i = getelementptr inbounds %struct.omap_mbox_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %mbox_base.i9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mbox_base.i9.i, align 8
  %add.ptr.i10.i = getelementptr i8, ptr %14, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %or.i) #10, !srcloc !130
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_mbox_disable_irq(ptr noundef readonly %chan, i32 noundef %irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %chan, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %mbox_chan_to_omap_mbox.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

mbox_chan_to_omap_mbox.exit:                      ; preds = %entry
  %con_priv.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %mbox_chan_to_omap_mbox.exit.do.end_crit_edge, label %if.end23, !prof !128

mbox_chan_to_omap_mbox.exit.do.end_crit_edge:     ; preds = %mbox_chan_to_omap_mbox.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %mbox_chan_to_omap_mbox.exit.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 245, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end23:                                         ; preds = %mbox_chan_to_omap_mbox.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %irq)
  %cmp.i = icmp eq i32 %irq, 1
  %tx_fifo.i = getelementptr inbounds %struct.omap_mbox, ptr %1, i32 0, i32 5
  %rx_fifo.i = getelementptr inbounds %struct.omap_mbox, ptr %1, i32 0, i32 6
  %cond.i = select i1 %cmp.i, ptr %tx_fifo.i, ptr %rx_fifo.i
  %intr_bit.i = getelementptr inbounds %struct.omap_mbox_fifo, ptr %cond.i, i32 0, i32 6
  %2 = ptrtoint ptr %intr_bit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intr_bit.i, align 4
  %irqdisable1.i = getelementptr inbounds %struct.omap_mbox_fifo, ptr %cond.i, i32 0, i32 5
  %4 = ptrtoint ptr %irqdisable1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irqdisable1.i, align 4
  %intr_type.i = getelementptr inbounds %struct.omap_mbox, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %intr_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %intr_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i26 = icmp eq i32 %7, 0
  br i1 %tobool.not.i26, label %if.then.i, label %if.end23._omap_mbox_disable_irq.exit_crit_edge

if.end23._omap_mbox_disable_irq.exit_crit_edge:   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %_omap_mbox_disable_irq.exit

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %parent.i = getelementptr inbounds %struct.omap_mbox, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 4
  %mbox_base.i.i = getelementptr inbounds %struct.omap_mbox_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %mbox_base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mbox_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %5
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !129
  %neg.i = xor i32 %3, -1
  %and.i = and i32 %12, %neg.i
  br label %_omap_mbox_disable_irq.exit

_omap_mbox_disable_irq.exit:                      ; preds = %if.then.i, %if.end23._omap_mbox_disable_irq.exit_crit_edge
  %bit.0.i = phi i32 [ %3, %if.end23._omap_mbox_disable_irq.exit_crit_edge ], [ %and.i, %if.then.i ]
  %parent2.i = getelementptr inbounds %struct.omap_mbox, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %parent2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent2.i, align 4
  %mbox_base.i10.i = getelementptr inbounds %struct.omap_mbox_device, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %mbox_base.i10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mbox_base.i10.i, align 8
  %add.ptr.i11.i = getelementptr i8, ptr %16, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %bit.0.i) #10, !srcloc !130
  br label %cleanup

cleanup:                                          ; preds = %_omap_mbox_disable_irq.exit, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap_mbox_request_channel(ptr noundef %cl, ptr nocapture noundef readonly %chan_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @omap_mbox_devices_lock, i32 noundef 0) #10
  %.pn76 = load ptr, ptr @omap_mbox_devices, align 4
  %cmp.not77 = icmp eq ptr %.pn76, @omap_mbox_devices
  br i1 %cmp.not77, label %if.end6.for.end.thread_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end.thread_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.end.thread:                                   ; preds = %omap_mbox_device_find.exit.for.end.thread_crit_edge, %if.end6.for.end.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @omap_mbox_devices_lock) #10
  br label %cleanup

for.body:                                         ; preds = %omap_mbox_device_find.exit.for.body_crit_edge, %if.end6.for.body_crit_edge
  %.pn78 = phi ptr [ %.pn, %omap_mbox_device_find.exit.for.body_crit_edge ], [ %.pn76, %if.end6.for.body_crit_edge ]
  %mboxes1.i = getelementptr i8, ptr %.pn78, i32 -92
  %4 = ptrtoint ptr %mboxes1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mboxes1.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.body.omap_mbox_device_find.exit_crit_edge, label %for.cond.preheader.i

for.body.omap_mbox_device_find.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_mbox_device_find.exit

for.cond.preheader.i:                             ; preds = %for.body
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool2.not13.i = icmp eq ptr %7, null
  br i1 %tobool2.not13.i, label %for.cond.preheader.i.omap_mbox_device_find.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.omap_mbox_device_find.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_mbox_device_find.exit

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add i32 %i.014.i, 1
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %inc.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %for.cond.i.omap_mbox_device_find.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.omap_mbox_device_find.exit_crit_edge:  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_mbox_device_find.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %10 = phi ptr [ %9, %for.cond.i.for.body.i_crit_edge ], [ %7, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.014.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %12, ptr noundef %chan_name) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false, label %for.cond.i

omap_mbox_device_find.exit:                       ; preds = %for.cond.i.omap_mbox_device_find.exit_crit_edge, %for.cond.preheader.i.omap_mbox_device_find.exit_crit_edge, %for.body.omap_mbox_device_find.exit_crit_edge
  %13 = ptrtoint ptr %.pn78 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn78, align 4
  %cmp.not = icmp eq ptr %.pn, @omap_mbox_devices
  br i1 %cmp.not, label %omap_mbox_device_find.exit.for.end.thread_crit_edge, label %omap_mbox_device_find.exit.for.body_crit_edge

omap_mbox_device_find.exit.for.body_crit_edge:    ; preds = %omap_mbox_device_find.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

omap_mbox_device_find.exit.for.end.thread_crit_edge: ; preds = %omap_mbox_device_find.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

lor.lhs.false:                                    ; preds = %for.body.i
  tail call void @mutex_unlock(ptr noundef nonnull @omap_mbox_devices_lock) #10
  %chan17 = getelementptr inbounds %struct.omap_mbox, ptr %10, i32 0, i32 8
  %14 = ptrtoint ptr %chan17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chan17, align 4
  %tobool18.not = icmp eq ptr %15, null
  br i1 %tobool18.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end21

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.mbox_chan, ptr %15, i32 0, i32 8
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %msg_free = getelementptr inbounds %struct.mbox_chan, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %msg_free to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %msg_free, align 4
  %msg_count = getelementptr inbounds %struct.mbox_chan, ptr %15, i32 0, i32 5
  %17 = ptrtoint ptr %msg_count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %msg_count, align 4
  %active_req = getelementptr inbounds %struct.mbox_chan, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %active_req to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %active_req, align 4
  %cl33 = getelementptr inbounds %struct.mbox_chan, ptr %15, i32 0, i32 2
  %19 = ptrtoint ptr %cl33 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %cl, ptr %cl33, align 4
  %tx_complete = getelementptr inbounds %struct.mbox_chan, ptr %15, i32 0, i32 3
  %20 = ptrtoint ptr %tx_complete to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %tx_complete, align 4
  %wait.i = getelementptr inbounds %struct.mbox_chan, ptr %15, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_completion.__key) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call28) #10
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %15, align 4
  %ops = getelementptr inbounds %struct.mbox_controller, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %startup = getelementptr inbounds %struct.mbox_chan_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %startup to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %startup, align 4
  %call36 = tail call i32 %26(ptr noundef nonnull %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end21.cleanup_crit_edge, label %do.end41

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end41:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call36) #13
  tail call void @mbox_free_channel(ptr noundef nonnull %15) #10
  %27 = inttoptr i32 %call36 to ptr
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %if.end21.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.end.thread, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -19 to ptr), %do.end ], [ %27, %do.end41 ], [ %15, %if.end21.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.end.thread ], [ inttoptr (i32 -2 to ptr), %lor.lhs.false.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_free_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mbox_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__class_register(ptr noundef nonnull @omap_mbox_class, ptr noundef nonnull @omap_mbox_init.__key) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @mbox_kfifo_size, align 4
  %add = add i32 %0, 3
  %and = and i32 %add, -4
  %1 = tail call i32 @llvm.umax.i32(i32 %and, i32 4)
  store i32 %1, ptr @mbox_kfifo_size, align 4
  %call2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_mbox_driver, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @class_unregister(ptr noundef nonnull @omap_mbox_class) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap_mbox_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_mbox_driver) #10
  tail call void @class_unregister(ptr noundef nonnull @omap_mbox_class) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mbox_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %num_users = alloca i32, align 4
  %num_fifos = alloca i32, align 4
  %tmp = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_users) #10
  %2 = ptrtoint ptr %num_users to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %num_users, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_fifos) #10
  %3 = ptrtoint ptr %num_fifos to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %num_fifos, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp) #10
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tmp, align 4, !annotation !131
  %5 = getelementptr inbounds [3 x i32], ptr %tmp, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !131
  %7 = getelementptr inbounds [3 x i32], ptr %tmp, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !131
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call3, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %num_users, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool9.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call.i.i412 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %num_fifos, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i412)
  %tobool13.not = icmp sgt i32 %call.i.i412, -1
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %call.i = call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef null) #10
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %if.end15.do.end21_crit_edge, label %if.end15.for.body.i_crit_edge

if.end15.for.body.i_crit_edge:                    ; preds = %if.end15
  br label %for.body.i

if.end15.do.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end15.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end15.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.end15.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef nonnull %child.06.i) #10
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_available_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

of_get_available_child_count.exit:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool17.not = icmp eq i32 %inc.i, 0
  br i1 %tobool17.not, label %of_get_available_child_count.exit.do.end21_crit_edge, label %if.end23

of_get_available_child_count.exit.do.end21_crit_edge: ; preds = %of_get_available_child_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

do.end21:                                         ; preds = %of_get_available_child_count.exit.do.end21_crit_edge, %if.end15.do.end21_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #13
  br label %cleanup

if.end23:                                         ; preds = %of_get_available_child_count.exit
  %11 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i, i32 32) #10
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %if.end23.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !128

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end23
  %13 = extractvalue { i32, i1 } %11, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %13, i32 noundef 3520) #10
  %tobool26.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool26.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %devm_kcalloc.exit.for.body_crit_edge

devm_kcalloc.exit.for.body_crit_edge:             ; preds = %devm_kcalloc.exit
  br label %for.body

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %devm_kcalloc.exit.for.body_crit_edge
  %i.0461 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %devm_kcalloc.exit.for.body_crit_edge ]
  %child.0460 = phi ptr [ %call29, %for.inc.for.body_crit_edge ], [ null, %devm_kcalloc.exit.for.body_crit_edge ]
  %finfo.0459 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %call5.i.i, %devm_kcalloc.exit.for.body_crit_edge ]
  %call29 = call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef %child.0460) #10
  %call.i413 = call i32 @of_property_read_variable_u32_array(ptr noundef %call29, ptr noundef nonnull @.str.19, ptr noundef nonnull %tmp, i32 noundef 3, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i413)
  %tobool31.not = icmp sgt i32 %call.i413, -1
  br i1 %tobool31.not, label %if.end33, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %for.body
  %14 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tmp, align 4
  %16 = ptrtoint ptr %finfo.0459 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %finfo.0459, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %5, align 4
  %tx_irq = getelementptr inbounds %struct.omap_mbox_fifo_info, ptr %finfo.0459, i32 0, i32 2
  %19 = ptrtoint ptr %tx_irq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tx_irq, align 4
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %7, align 4
  %tx_usr = getelementptr inbounds %struct.omap_mbox_fifo_info, ptr %finfo.0459, i32 0, i32 1
  %22 = ptrtoint ptr %tx_usr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tx_usr, align 4
  %call.i414 = call i32 @of_property_read_variable_u32_array(ptr noundef %call29, ptr noundef nonnull @.str.20, ptr noundef nonnull %tmp, i32 noundef 3, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i414)
  %tobool38.not = icmp sgt i32 %call.i414, -1
  br i1 %tobool38.not, label %if.end40, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end40:                                         ; preds = %if.end33
  %23 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tmp, align 4
  %rx_id = getelementptr inbounds %struct.omap_mbox_fifo_info, ptr %finfo.0459, i32 0, i32 3
  %25 = ptrtoint ptr %rx_id to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %rx_id, align 4
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %5, align 4
  %rx_irq = getelementptr inbounds %struct.omap_mbox_fifo_info, ptr %finfo.0459, i32 0, i32 5
  %28 = ptrtoint ptr %rx_irq to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %rx_irq, align 4
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %7, align 4
  %rx_usr = getelementptr inbounds %struct.omap_mbox_fifo_info, ptr %finfo.0459, i32 0, i32 4
  %31 = ptrtoint ptr %rx_usr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %rx_usr, align 4
  %32 = ptrtoint ptr %call29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call29, align 4
  %name44 = getelementptr inbounds %struct.omap_mbox_fifo_info, ptr %finfo.0459, i32 0, i32 6
  %34 = ptrtoint ptr %name44 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %name44, align 4
  %call45 = call ptr @of_find_property(ptr noundef %call29, ptr noundef nonnull @.str.21, ptr noundef null) #10
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end40.if.end48_crit_edge, label %if.then47

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then47:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %send_no_irq = getelementptr inbounds %struct.omap_mbox_fifo_info, ptr %finfo.0459, i32 0, i32 7
  %35 = ptrtoint ptr %send_no_irq to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %send_no_irq, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end40.if.end48_crit_edge
  %36 = ptrtoint ptr %finfo.0459 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %finfo.0459, align 4
  %38 = ptrtoint ptr %num_fifos to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_fifos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp50.not = icmp ult i32 %37, %39
  br i1 %cmp50.not, label %lor.lhs.false, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end48
  %40 = ptrtoint ptr %rx_id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %39)
  %cmp52.not = icmp ult i32 %41, %39
  br i1 %cmp52.not, label %lor.lhs.false53, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false53:                                  ; preds = %lor.lhs.false
  %42 = ptrtoint ptr %tx_usr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_usr, align 4
  %44 = ptrtoint ptr %num_users to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_users, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp55.not = icmp ult i32 %43, %45
  br i1 %cmp55.not, label %lor.lhs.false56, label %lor.lhs.false53.cleanup_crit_edge

lor.lhs.false53.cleanup_crit_edge:                ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false56:                                  ; preds = %lor.lhs.false53
  %46 = ptrtoint ptr %rx_usr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_usr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %45)
  %cmp58.not = icmp ult i32 %47, %45
  br i1 %cmp58.not, label %for.inc, label %lor.lhs.false56.cleanup_crit_edge

lor.lhs.false56.cleanup_crit_edge:                ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false56
  %inc = add nuw i32 %i.0461, 1
  %incdec.ptr = getelementptr %struct.omap_mbox_fifo_info, ptr %finfo.0459, i32 1
  %exitcond.not = icmp eq i32 %i.0461, %num.07.i
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call.i415 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 216, i32 noundef 3520) #10
  %tobool63.not = icmp eq ptr %call.i415, null
  br i1 %tobool63.not, label %for.end.cleanup_crit_edge, label %if.end65

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end65:                                         ; preds = %for.end
  %call66 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #10
  %mbox_base = getelementptr inbounds %struct.omap_mbox_device, ptr %call.i415, i32 0, i32 2
  %48 = ptrtoint ptr %mbox_base to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call66, ptr %mbox_base, align 8
  %cmp.i = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then69, label %if.end72

if.then69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %call66 to i32
  br label %cleanup

if.end72:                                         ; preds = %if.end65
  %50 = ptrtoint ptr %num_users to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_users, align 4
  %52 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %51, i32 4) #10
  %53 = extractvalue { i32, i1 } %52, 1
  br i1 %53, label %devm_kcalloc.exit419.thread, label %devm_kcalloc.exit419, !prof !128

devm_kcalloc.exit419.thread:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %irq_ctx439 = getelementptr inbounds %struct.omap_mbox_device, ptr %call.i415, i32 0, i32 3
  %54 = ptrtoint ptr %irq_ctx439 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %irq_ctx439, align 4
  br label %cleanup

devm_kcalloc.exit419:                             ; preds = %if.end72
  %55 = extractvalue { i32, i1 } %52, 0
  %call5.i.i416 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %55, i32 noundef 3520) #10
  %irq_ctx = getelementptr inbounds %struct.omap_mbox_device, ptr %call.i415, i32 0, i32 3
  %56 = ptrtoint ptr %irq_ctx to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call5.i.i416, ptr %irq_ctx, align 4
  %tobool76.not = icmp eq ptr %call5.i.i416, null
  br i1 %tobool76.not, label %devm_kcalloc.exit419.cleanup_crit_edge, label %if.end78

devm_kcalloc.exit419.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit419
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end78:                                         ; preds = %devm_kcalloc.exit419
  %add = add i32 %num.07.i, 2
  %57 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #10
  %58 = extractvalue { i32, i1 } %57, 1
  br i1 %58, label %if.end78.cleanup_crit_edge, label %devm_kcalloc.exit423, !prof !128

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

devm_kcalloc.exit423:                             ; preds = %if.end78
  %59 = extractvalue { i32, i1 } %57, 0
  %call5.i.i420 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %59, i32 noundef 3520) #10
  %tobool81.not = icmp eq ptr %call5.i.i420, null
  br i1 %tobool81.not, label %devm_kcalloc.exit423.cleanup_crit_edge, label %if.end83

devm_kcalloc.exit423.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit423
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end83:                                         ; preds = %devm_kcalloc.exit423
  %60 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 208) #10
  %61 = extractvalue { i32, i1 } %60, 1
  br i1 %61, label %if.end83.cleanup_crit_edge, label %devm_kcalloc.exit427, !prof !128

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

devm_kcalloc.exit427:                             ; preds = %if.end83
  %62 = extractvalue { i32, i1 } %60, 0
  %call5.i.i424 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %62, i32 noundef 3520) #10
  %tobool87.not = icmp eq ptr %call5.i.i424, null
  br i1 %tobool87.not, label %devm_kcalloc.exit427.cleanup_crit_edge, label %if.end89

devm_kcalloc.exit427.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit427
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end89:                                         ; preds = %devm_kcalloc.exit427
  %63 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i, i32 88) #10
  %64 = extractvalue { i32, i1 } %63, 1
  br i1 %64, label %if.end89.cleanup_crit_edge, label %devm_kcalloc.exit431, !prof !128

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

devm_kcalloc.exit431:                             ; preds = %if.end89
  %65 = extractvalue { i32, i1 } %63, 0
  %call5.i.i428 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %65, i32 noundef 3520) #10
  %tobool92.not = icmp eq ptr %call5.i.i428, null
  br i1 %tobool92.not, label %devm_kcalloc.exit431.cleanup_crit_edge, label %for.body97.preheader

devm_kcalloc.exit431.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit431
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body97.preheader:                             ; preds = %devm_kcalloc.exit431
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool106.not = icmp eq i32 %10, 0
  %umax = call i32 @llvm.umax.i32(i32 %inc.i, i32 1)
  br label %for.body97

for.body97:                                       ; preds = %if.end194.for.body97_crit_edge, %for.body97.preheader
  %i.1468 = phi i32 [ %inc200, %if.end194.for.body97_crit_edge ], [ 0, %for.body97.preheader ]
  %finfo.1465 = phi ptr [ %incdec.ptr201, %if.end194.for.body97_crit_edge ], [ %call5.i.i, %for.body97.preheader ]
  %mbox.0463 = phi ptr [ %incdec.ptr197, %if.end194.for.body97_crit_edge ], [ %call5.i.i428, %for.body97.preheader ]
  %tx_fifo = getelementptr inbounds %struct.omap_mbox, ptr %mbox.0463, i32 0, i32 5
  %66 = ptrtoint ptr %finfo.1465 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %finfo.1465, align 4
  %mul = shl i32 %67, 2
  %add99 = add i32 %mul, 64
  %68 = ptrtoint ptr %tx_fifo to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add99, ptr %tx_fifo, align 4
  %add102 = add i32 %mul, 128
  %fifo_stat = getelementptr inbounds %struct.omap_mbox, ptr %mbox.0463, i32 0, i32 5, i32 1
  %69 = ptrtoint ptr %fifo_stat to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add102, ptr %fifo_stat, align 4
  %mul104 = shl i32 %67, 1
  %add105 = or i32 %mul104, 1
  %shl = shl nuw i32 1, %add105
  %intr_bit = getelementptr inbounds %struct.omap_mbox, ptr %mbox.0463, i32 0, i32 5, i32 6
  %70 = ptrtoint ptr %intr_bit to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %shl, ptr %intr_bit, align 4
  %tx_usr110 = getelementptr inbounds %struct.omap_mbox_fifo_info, ptr %finfo.1465, i32 0, i32 1
  %71 = ptrtoint ptr %tx_usr110 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tx_usr110, align 4
  br i1 %tobool106.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #12
  %mul108 = shl i32 %72, 4
  %add109 = add i32 %mul108, 264
  %add117 = add i32 %mul108, 260
  %add128 = add i32 %mul108, 268
  br label %cond.end133

cond.false:                                       ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #12
  %mul111 = shl i32 %72, 3
  %add112 = add i32 %mul111, 260
  %add121 = add i32 %mul111, 256
  br label %cond.end133

cond.end133:                                      ; preds = %cond.false, %cond.true
  %add109.sink = phi i32 [ %add112, %cond.false ], [ %add109, %cond.true ]
  %add117.sink = phi i32 [ %add121, %cond.false ], [ %add117, %cond.true ]
  %cond134 = phi i32 [ %add112, %cond.false ], [ %add128, %cond.true ]
  %73 = getelementptr inbounds %struct.omap_mbox, ptr %mbox.0463, i32 0, i32 5, i32 3
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add109.sink, ptr %73, align 4
  %75 = getelementptr inbounds %struct.omap_mbox, ptr %mbox.0463, i32 0, i32 5, i32 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add117.sink, ptr %75, align 4
  %irqdisable = getelementptr inbounds %struct.omap_mbox, ptr %mbox.0463, i32 0, i32 5, i32 5
  %77 = ptrtoint ptr %irqdisable to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %cond134, ptr %irqdisable, align 4
  %rx_fifo = getelementptr inbounds %struct.omap_mbox, ptr %mbox.0463, i32 0, i32 6
  %rx_id135 = getelementptr inbounds %struct.omap_mbox_fifo_info, ptr %finfo.1465, i32 0, i32 3
  %78 = ptrtoint ptr %rx_id135 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rx_id135, align 4
  %mul136 = shl i32 %79, 2
  %add137 = add i32 %mul136, 64
  %80 = ptrtoint ptr %rx_fifo to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add137, ptr %rx_fifo, align 4
  %add141 = add i32 %mul136, 192
  %msg_stat = getelementptr inbounds %struct.omap_mbox, ptr %mbox.0463, i32 0, i32 6, i32 2
  %81 = ptrtoint ptr %msg_stat to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add141, ptr %msg_stat, align 4
  %mul143 = shl i32 %79, 1
  %shl144 = shl nuw i32 1, %mul143
  %intr_bit145 = getelementptr inbounds %struct.omap_mbox, ptr %mbox.0463, i32 0, i32 6, i32 6
  %82 = ptrtoint ptr %intr_bit145 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %shl144, ptr %intr_bit145, align 4
  %rx_usr152 = getelementptr inbounds %struct.omap_mbox_fifo_info, ptr %finfo.1465, i32 0, i32 4
  %83 = ptrtoint ptr %rx_usr152 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rx_usr152, align 4
  br i1 %tobool106.not, label %cond.false151, label %cond.true147

cond.true147:                                     ; preds = %cond.end133
  call void @__sanitizer_cov_trace_pc() #12
  %mul149 = shl i32 %84, 4
  %add150 = add i32 %mul149, 264
  %add162 = add i32 %mul149, 260
  %add174 = add i32 %mul149, 268
  br label %cond.end179

cond.false151:                                    ; preds = %cond.end133
  call void @__sanitizer_cov_trace_pc() #12
  %mul153 = shl i32 %84, 3
  %add154 = add i32 %mul153, 260
  %add166 = add i32 %mul153, 256
  br label %cond.end179

cond.end179:                                      ; preds = %cond.false151, %cond.true147
  %add150.sink = phi i32 [ %add154, %cond.false151 ], [ %add150, %cond.true147 ]
  %add162.sink = phi i32 [ %add166, %cond.false151 ], [ %add162, %cond.true147 ]
  %cond180 = phi i32 [ %add154, %cond.false151 ], [ %add174, %cond.true147 ]
  %85 = getelementptr inbounds %struct.omap_mbox, ptr %mbox.0463, i32 0, i32 6, i32 3
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add150.sink, ptr %85, align 4
  %87 = getelementptr inbounds %struct.omap_mbox, ptr %mbox.0463, i32 0, i32 6, i32 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add162.sink, ptr %87, align 4
  %irqdisable181 = getelementptr inbounds %struct.omap_mbox, ptr %mbox.0463, i32 0, i32 6, i32 5
  %89 = ptrtoint ptr %irqdisable181 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %cond180, ptr %irqdisable181, align 4
  %send_no_irq182 = getelementptr inbounds %struct.omap_mbox_fifo_info, ptr %finfo.1465, i32 0, i32 7
  %90 = ptrtoint ptr %send_no_irq182 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %send_no_irq182, align 4, !range !132
  %send_no_irq184 = getelementptr inbounds %struct.omap_mbox, ptr %mbox.0463, i32 0, i32 9
  %92 = ptrtoint ptr %send_no_irq184 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %send_no_irq184, align 4
  %intr_type185 = getelementptr inbounds %struct.omap_mbox, ptr %mbox.0463, i32 0, i32 7
  %93 = ptrtoint ptr %intr_type185 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %10, ptr %intr_type185, align 4
  %parent = getelementptr inbounds %struct.omap_mbox, ptr %mbox.0463, i32 0, i32 4
  %94 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call.i415, ptr %parent, align 4
  %name186 = getelementptr inbounds %struct.omap_mbox_fifo_info, ptr %finfo.1465, i32 0, i32 6
  %95 = ptrtoint ptr %name186 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %name186, align 4
  %97 = ptrtoint ptr %mbox.0463 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %96, ptr %mbox.0463, align 4
  %tx_irq188 = getelementptr inbounds %struct.omap_mbox_fifo_info, ptr %finfo.1465, i32 0, i32 2
  %98 = ptrtoint ptr %tx_irq188 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tx_irq188, align 4
  %call189 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %99) #10
  %irq = getelementptr inbounds %struct.omap_mbox, ptr %mbox.0463, i32 0, i32 1
  %100 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %call189, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %cmp191 = icmp slt i32 %call189, 0
  br i1 %cmp191, label %cond.end179.cleanup_crit_edge, label %if.end194

cond.end179.cleanup_crit_edge:                    ; preds = %cond.end179
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end194:                                        ; preds = %cond.end179
  %arrayidx195 = getelementptr %struct.mbox_chan, ptr %call5.i.i424, i32 %i.1468
  %chan = getelementptr inbounds %struct.omap_mbox, ptr %mbox.0463, i32 0, i32 8
  %101 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %arrayidx195, ptr %chan, align 4
  %con_priv = getelementptr %struct.mbox_chan, ptr %call5.i.i424, i32 %i.1468, i32 9
  %102 = ptrtoint ptr %con_priv to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %mbox.0463, ptr %con_priv, align 4
  %incdec.ptr197 = getelementptr %struct.omap_mbox, ptr %mbox.0463, i32 1
  %arrayidx198 = getelementptr ptr, ptr %call5.i.i420, i32 %i.1468
  %103 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %mbox.0463, ptr %arrayidx198, align 4
  %inc200 = add nuw i32 %i.1468, 1
  %incdec.ptr201 = getelementptr %struct.omap_mbox_fifo_info, ptr %finfo.1465, i32 1
  %exitcond476.not = icmp eq i32 %inc200, %umax
  br i1 %exitcond476.not, label %do.body203, label %if.end194.for.body97_crit_edge

if.end194.for.body97_crit_edge:                   ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body97

do.body203:                                       ; preds = %if.end194
  %cfg_lock = getelementptr inbounds %struct.omap_mbox_device, ptr %call.i415, i32 0, i32 1
  call void @__mutex_init(ptr noundef %cfg_lock, ptr noundef nonnull @.str.22, ptr noundef nonnull @omap_mbox_probe.__key) #10
  %104 = ptrtoint ptr %call.i415 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %dev, ptr %call.i415, align 8
  %105 = ptrtoint ptr %num_users to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %num_users, align 4
  %num_users208 = getelementptr inbounds %struct.omap_mbox_device, ptr %call.i415, i32 0, i32 4
  %107 = ptrtoint ptr %num_users208 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %num_users208, align 8
  %108 = ptrtoint ptr %num_fifos to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_fifos, align 4
  %num_fifos209 = getelementptr inbounds %struct.omap_mbox_device, ptr %call.i415, i32 0, i32 5
  %110 = ptrtoint ptr %num_fifos209 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %num_fifos209, align 4
  %intr_type210 = getelementptr inbounds %struct.omap_mbox_device, ptr %call.i415, i32 0, i32 6
  %111 = ptrtoint ptr %intr_type210 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %10, ptr %intr_type210, align 8
  %mboxes = getelementptr inbounds %struct.omap_mbox_device, ptr %call.i415, i32 0, i32 7
  %112 = ptrtoint ptr %mboxes to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call5.i.i420, ptr %mboxes, align 4
  %controller = getelementptr inbounds %struct.omap_mbox_device, ptr %call.i415, i32 0, i32 8
  %txdone_irq = getelementptr inbounds %struct.omap_mbox_device, ptr %call.i415, i32 0, i32 8, i32 4
  %113 = ptrtoint ptr %txdone_irq to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %txdone_irq, align 8
  %114 = ptrtoint ptr %controller to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %dev, ptr %controller, align 8
  %ops = getelementptr inbounds %struct.omap_mbox_device, ptr %call.i415, i32 0, i32 8, i32 1
  %115 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @omap_mbox_chan_ops, ptr %ops, align 4
  %chans = getelementptr inbounds %struct.omap_mbox_device, ptr %call.i415, i32 0, i32 8, i32 2
  %116 = ptrtoint ptr %chans to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call5.i.i424, ptr %chans, align 8
  %num_chans = getelementptr inbounds %struct.omap_mbox_device, ptr %call.i415, i32 0, i32 8, i32 3
  %117 = ptrtoint ptr %num_chans to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %inc.i, ptr %num_chans, align 4
  %of_xlate = getelementptr inbounds %struct.omap_mbox_device, ptr %call.i415, i32 0, i32 8, i32 7
  %118 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @omap_mbox_of_xlate, ptr %of_xlate, align 8
  %call218 = call fastcc i32 @omap_mbox_register(ptr noundef nonnull %call.i415)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %if.end221, label %do.body203.cleanup_crit_edge

do.body203.cleanup_crit_edge:                     ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end221:                                        ; preds = %do.body203
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %119 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call.i415, ptr %driver_data.i.i, align 4
  %120 = ptrtoint ptr %call.i415 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %call.i415, align 8
  call void @pm_runtime_enable(ptr noundef %121) #10
  %122 = ptrtoint ptr %call.i415 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %call.i415, align 8
  %call.i432 = call i32 @__pm_runtime_resume(ptr noundef %123, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i432)
  %cmp225 = icmp slt i32 %call.i432, 0
  br i1 %cmp225, label %if.then226, label %if.end228

if.then226:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #12
  %124 = ptrtoint ptr %call.i415 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %call.i415, align 8
  call fastcc void @pm_runtime_put_noidle(ptr noundef %125)
  br label %unregister

if.end228:                                        ; preds = %if.end221
  %126 = ptrtoint ptr %mbox_base to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mbox_base, align 8
  %128 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #10, !srcloc !129
  %129 = ptrtoint ptr %call.i415 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %call.i415, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %130, ptr noundef nonnull @.str.24, i32 noundef %128) #13
  %131 = ptrtoint ptr %call.i415 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %call.i415, align 8
  %call.i433 = call i32 @__pm_runtime_idle(ptr noundef %132, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i433)
  %cmp236 = icmp sgt i32 %call.i433, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call.i433)
  %cmp237.not = icmp eq i32 %call.i433, -38
  %or.cond = or i1 %cmp236, %cmp237.not
  br i1 %or.cond, label %if.end239, label %if.end228.unregister_crit_edge

if.end228.unregister_crit_edge:                   ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #12
  br label %unregister

if.end239:                                        ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #12
  call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %call5.i.i) #10
  br label %cleanup

unregister:                                       ; preds = %if.end228.unregister_crit_edge, %if.then226
  %ret.0 = phi i32 [ %call.i432, %if.then226 ], [ %call.i433, %if.end228.unregister_crit_edge ]
  %133 = ptrtoint ptr %call.i415 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %call.i415, align 8
  call void @__pm_runtime_disable(ptr noundef %134, i1 noundef zeroext true) #10
  call fastcc void @omap_mbox_unregister(ptr noundef nonnull %call.i415)
  br label %cleanup

cleanup:                                          ; preds = %unregister, %if.end239, %do.body203.cleanup_crit_edge, %cond.end179.cleanup_crit_edge, %devm_kcalloc.exit431.cleanup_crit_edge, %if.end89.cleanup_crit_edge, %devm_kcalloc.exit427.cleanup_crit_edge, %if.end83.cleanup_crit_edge, %devm_kcalloc.exit423.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %devm_kcalloc.exit419.cleanup_crit_edge, %devm_kcalloc.exit419.thread, %if.then69, %for.end.cleanup_crit_edge, %lor.lhs.false56.cleanup_crit_edge, %lor.lhs.false53.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %for.body.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end21, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %49, %if.then69 ], [ %ret.0, %unregister ], [ 0, %if.end239 ], [ -19, %do.end21 ], [ -19, %do.end ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end6.cleanup_crit_edge ], [ -19, %if.end11.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %for.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit419.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit423.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit427.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit431.cleanup_crit_edge ], [ %call218, %do.body203.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit419.thread ], [ -12, %if.end23.cleanup_crit_edge ], [ -12, %if.end78.cleanup_crit_edge ], [ -12, %if.end83.cleanup_crit_edge ], [ -12, %if.end89.cleanup_crit_edge ], [ %call189, %cond.end179.cleanup_crit_edge ], [ -22, %lor.lhs.false56.cleanup_crit_edge ], [ -22, %lor.lhs.false53.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end48.cleanup_crit_edge ], [ %call.i414, %if.end33.cleanup_crit_edge ], [ %call.i413, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_fifos) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_users) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mbox_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #10
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.omap_mbox_unregister.exit_crit_edge, label %lor.lhs.false.i

entry.omap_mbox_unregister.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_mbox_unregister.exit

lor.lhs.false.i:                                  ; preds = %entry
  %mboxes1.i = getelementptr inbounds %struct.omap_mbox_device, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %mboxes1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mboxes1.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.omap_mbox_unregister.exit_crit_edge, label %if.end.i

lor.lhs.false.i.omap_mbox_unregister.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_mbox_unregister.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @omap_mbox_devices_lock, i32 noundef 0) #10
  %elem.i = getelementptr inbounds %struct.omap_mbox_device, ptr %1, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %elem.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.omap_mbox_device, ptr %1, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %elem.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %elem.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %12 = ptrtoint ptr %elem.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %elem.i, align 4
  %prev.i.i = getelementptr inbounds %struct.omap_mbox_device, ptr %1, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @omap_mbox_devices_lock) #10
  %14 = ptrtoint ptr %mboxes1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mboxes1.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool4.not1.i = icmp eq ptr %17, null
  br i1 %tobool4.not1.i, label %list_del.exit.i.omap_mbox_unregister.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  br label %for.body.i

list_del.exit.i.omap_mbox_unregister.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_mbox_unregister.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %list_del.exit.i.for.body.i_crit_edge
  %18 = phi ptr [ %22, %for.body.i.for.body.i_crit_edge ], [ %17, %list_del.exit.i.for.body.i_crit_edge ]
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %list_del.exit.i.for.body.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.omap_mbox, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void @device_unregister(ptr noundef %20) #10
  %inc.i = add i32 %i.02.i, 1
  %arrayidx.i = getelementptr ptr, ptr %15, i32 %inc.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not.i = icmp eq ptr %22, null
  br i1 %tobool4.not.i, label %for.body.i.omap_mbox_unregister.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.omap_mbox_unregister.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_mbox_unregister.exit

omap_mbox_unregister.exit:                        ; preds = %for.body.i.omap_mbox_unregister.exit_crit_edge, %list_del.exit.i.omap_mbox_unregister.exit_crit_edge, %lor.lhs.false.i.omap_mbox_unregister.exit_crit_edge, %entry.omap_mbox_unregister.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @omap_mbox_of_xlate(ptr noundef readonly %controller, ptr nocapture noundef readonly %sp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %sp, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %add.ptr = getelementptr i8, ptr %controller, i32 -120
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !128

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 685, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end24:                                         ; preds = %entry
  %call25 = tail call ptr @of_find_node_by_phandle(i32 noundef %1) #10
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %do.end30, label %if.end34

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef %1) #13
  br label %cleanup

if.end34:                                         ; preds = %if.end24
  %2 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call25, align 4
  %mboxes1.i = getelementptr i8, ptr %controller, i32 -4
  %4 = ptrtoint ptr %mboxes1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mboxes1.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end34.cond.false_crit_edge, label %for.cond.preheader.i

if.end34.cond.false_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

for.cond.preheader.i:                             ; preds = %if.end34
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool2.not13.i = icmp eq ptr %7, null
  br i1 %tobool2.not13.i, label %for.cond.preheader.i.cond.false_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.cond.false_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add i32 %i.014.i, 1
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %inc.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %for.cond.i.cond.false_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.cond.false_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %10 = phi ptr [ %9, %for.cond.i.for.body.i_crit_edge ], [ %7, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.014.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %12, ptr noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %cond.true, label %for.cond.i

cond.true:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @of_node_put(ptr noundef nonnull %call25) #10
  %chan = getelementptr inbounds %struct.omap_mbox, ptr %10, i32 0, i32 8
  %13 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chan, align 4
  br label %cleanup

cond.false:                                       ; preds = %for.cond.i.cond.false_crit_edge, %for.cond.preheader.i.cond.false_crit_edge, %if.end34.cond.false_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call25) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %cond.true, %do.end30, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -19 to ptr), %do.end30 ], [ %14, %cond.true ], [ inttoptr (i32 -2 to ptr), %cond.false ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_mbox_register(ptr noundef %mdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mdev, null
  br i1 %tobool.not, label %entry.cleanup21_crit_edge, label %lor.lhs.false

entry.cleanup21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup21

lor.lhs.false:                                    ; preds = %entry
  %mboxes1 = getelementptr inbounds %struct.omap_mbox_device, ptr %mdev, i32 0, i32 7
  %0 = ptrtoint ptr %mboxes1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mboxes1, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup21_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup21

for.cond.preheader:                               ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool4.not47 = icmp eq ptr %3, null
  br i1 %tobool4.not47, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %4 = phi ptr [ %12, %for.inc.for.body_crit_edge ], [ %3, %for.cond.preheader.for.body_crit_edge ]
  %i.048 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %5 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdev, align 8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %call = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef nonnull @omap_mbox_class, ptr noundef %6, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull @.str.34, ptr noundef %8) #10
  %dev6 = getelementptr inbounds %struct.omap_mbox, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %dev6, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup, label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %call to i32
  br label %err_out

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.048, 1
  %arrayidx = getelementptr ptr, ptr %1, i32 %inc
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %12, null
  br i1 %tobool4.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @omap_mbox_devices_lock, i32 noundef 0) #10
  %elem = getelementptr inbounds %struct.omap_mbox_device, ptr %mdev, i32 0, i32 9
  %13 = load ptr, ptr @omap_mbox_devices, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %elem, ptr noundef nonnull @omap_mbox_devices, ptr noundef %13) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add.exit_crit_edge

for.end.list_add.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %elem, ptr %prev1.i.i, align 4
  %15 = ptrtoint ptr %elem to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %elem, align 4
  %prev3.i.i = getelementptr inbounds %struct.omap_mbox_device, ptr %mdev, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @omap_mbox_devices, ptr %prev3.i.i, align 4
  store volatile ptr %elem, ptr @omap_mbox_devices, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %for.end.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @omap_mbox_devices_lock) #10
  %17 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mdev, align 8
  %controller = getelementptr inbounds %struct.omap_mbox_device, ptr %mdev, i32 0, i32 8
  %call14 = tail call i32 @devm_mbox_controller_register(ptr noundef %18, ptr noundef %controller) #10
  br label %err_out

err_out:                                          ; preds = %list_add.exit, %cleanup
  %i.046 = phi i32 [ %i.048, %cleanup ], [ %i.0.lcssa, %list_add.exit ]
  %ret.2 = phi i32 [ %10, %cleanup ], [ %call14, %list_add.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool15.not = icmp eq i32 %ret.2, 0
  br i1 %tobool15.not, label %err_out.cleanup21_crit_edge, label %while.cond.preheader

err_out.cleanup21_crit_edge:                      ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup21

while.cond.preheader:                             ; preds = %err_out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.046)
  %tobool17.not49 = icmp eq i32 %i.046, 0
  br i1 %tobool17.not49, label %while.cond.preheader.cleanup21_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup21_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup21

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.150 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.046, %while.cond.preheader.while.body_crit_edge ]
  %dec = add i32 %i.150, -1
  %arrayidx18 = getelementptr ptr, ptr %1, i32 %dec
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx18, align 4
  %dev19 = getelementptr inbounds %struct.omap_mbox, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev19, align 4
  tail call void @device_unregister(ptr noundef %22) #10
  %tobool17.not = icmp eq i32 %dec, 0
  br i1 %tobool17.not, label %while.body.cleanup21_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.cleanup21_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup21

cleanup21:                                        ; preds = %while.body.cleanup21_crit_edge, %while.cond.preheader.cleanup21_crit_edge, %err_out.cleanup21_crit_edge, %lor.lhs.false.cleanup21_crit_edge, %entry.cleanup21_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup21_crit_edge ], [ -22, %entry.cleanup21_crit_edge ], [ 0, %err_out.cleanup21_crit_edge ], [ %ret.2, %while.cond.preheader.cleanup21_crit_edge ], [ %ret.2, %while.body.cleanup21_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #10, !srcloc !134
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !135
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_mbox_unregister(ptr noundef %mdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mdev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %mboxes1 = getelementptr inbounds %struct.omap_mbox_device, ptr %mdev, i32 0, i32 7
  %0 = ptrtoint ptr %mboxes1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mboxes1, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @mutex_lock_nested(ptr noundef nonnull @omap_mbox_devices_lock, i32 noundef 0) #10
  %elem = getelementptr inbounds %struct.omap_mbox_device, ptr %mdev, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %elem) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.omap_mbox_device, ptr %mdev, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %elem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elem, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %elem to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %elem, align 4
  %prev.i = getelementptr inbounds %struct.omap_mbox_device, ptr %mdev, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @omap_mbox_devices_lock) #10
  %10 = ptrtoint ptr %mboxes1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mboxes1, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool4.not1 = icmp eq ptr %13, null
  br i1 %tobool4.not1, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  br label %for.body

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_del.exit.for.body_crit_edge
  %14 = phi ptr [ %18, %for.body.for.body_crit_edge ], [ %13, %list_del.exit.for.body_crit_edge ]
  %i.02 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %list_del.exit.for.body_crit_edge ]
  %dev = getelementptr inbounds %struct.omap_mbox, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void @device_unregister(ptr noundef %16) #10
  %inc = add i32 %i.02, 1
  %arrayidx = getelementptr ptr, ptr %11, i32 %inc
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %18, null
  br i1 %tobool4.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %list_del.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mbox_chan_send_data(ptr noundef readonly %chan, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %chan, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %mbox_chan_to_omap_mbox.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mbox_chan_to_omap_mbox.exit:                      ; preds = %entry
  %con_priv.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv.i, align 4
  %2 = ptrtoint ptr %data to i32
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %mbox_chan_to_omap_mbox.exit.cleanup_crit_edge, label %if.end

mbox_chan_to_omap_mbox.exit.cleanup_crit_edge:    ; preds = %mbox_chan_to_omap_mbox.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %mbox_chan_to_omap_mbox.exit
  %send_no_irq = getelementptr inbounds %struct.omap_mbox, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %send_no_irq to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %send_no_irq, align 4, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  %parent.i.i13 = getelementptr inbounds %struct.omap_mbox, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %parent.i.i13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i.i13, align 4
  %fifo_stat.i.i14 = getelementptr inbounds %struct.omap_mbox, ptr %1, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %fifo_stat.i.i14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fifo_stat.i.i14, align 4
  %mbox_base.i.i.i15 = getelementptr inbounds %struct.omap_mbox_device, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %mbox_base.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mbox_base.i.i.i15, align 8
  %add.ptr.i.i.i16 = getelementptr i8, ptr %10, i32 %8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i17 = icmp eq i32 %11, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  br i1 %tobool.not.i17, label %if.then.i, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.then2
  %rx_fifo.i.i = getelementptr inbounds %struct.omap_mbox, ptr %1, i32 0, i32 6
  %intr_bit.i.i = getelementptr inbounds %struct.omap_mbox, ptr %1, i32 0, i32 6, i32 6
  %12 = ptrtoint ptr %intr_bit.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %intr_bit.i.i, align 4
  %irqenable1.i.i = getelementptr inbounds %struct.omap_mbox, ptr %1, i32 0, i32 6, i32 3
  %14 = ptrtoint ptr %irqenable1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irqenable1.i.i, align 4
  %16 = ptrtoint ptr %parent.i.i13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i.i13, align 4
  %mbox_base.i.i8.i = getelementptr inbounds %struct.omap_mbox_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %mbox_base.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mbox_base.i.i8.i, align 8
  %add.ptr.i.i9.i = getelementptr i8, ptr %19, i32 %15
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i) #10, !srcloc !129
  %or.i.i = or i32 %20, %13
  %21 = ptrtoint ptr %parent.i.i13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent.i.i13, align 4
  %mbox_base.i9.i.i = getelementptr inbounds %struct.omap_mbox_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %mbox_base.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mbox_base.i9.i.i, align 8
  %add.ptr.i10.i.i = getelementptr i8, ptr %24, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %or.i.i) #10, !srcloc !130
  %tx_fifo.i10.i = getelementptr inbounds %struct.omap_mbox, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %parent.i.i13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent.i.i13, align 4
  %27 = ptrtoint ptr %tx_fifo.i10.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_fifo.i10.i, align 4
  %mbox_base.i.i12.i = getelementptr inbounds %struct.omap_mbox_device, ptr %26, i32 0, i32 2
  %29 = ptrtoint ptr %mbox_base.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mbox_base.i.i12.i, align 8
  %add.ptr.i.i13.i = getelementptr i8, ptr %30, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i13.i, i32 %2) #10, !srcloc !130
  %31 = ptrtoint ptr %intr_bit.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %intr_bit.i.i, align 4
  %irqdisable1.i.i = getelementptr inbounds %struct.omap_mbox, ptr %1, i32 0, i32 6, i32 5
  %33 = ptrtoint ptr %irqdisable1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irqdisable1.i.i, align 4
  %intr_type.i.i = getelementptr inbounds %struct.omap_mbox, ptr %1, i32 0, i32 7
  %35 = ptrtoint ptr %intr_type.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %intr_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i._omap_mbox_disable_irq.exit.i_crit_edge

if.then.i._omap_mbox_disable_irq.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_omap_mbox_disable_irq.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %parent.i.i13 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent.i.i13, align 4
  %mbox_base.i.i18.i = getelementptr inbounds %struct.omap_mbox_device, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %mbox_base.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mbox_base.i.i18.i, align 8
  %add.ptr.i.i19.i = getelementptr i8, ptr %40, i32 %34
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19.i) #10, !srcloc !129
  %neg.i.i = xor i32 %32, -1
  %and.i.i = and i32 %41, %neg.i.i
  br label %_omap_mbox_disable_irq.exit.i

_omap_mbox_disable_irq.exit.i:                    ; preds = %if.then.i.i, %if.then.i._omap_mbox_disable_irq.exit.i_crit_edge
  %bit.0.i.i = phi i32 [ %32, %if.then.i._omap_mbox_disable_irq.exit.i_crit_edge ], [ %and.i.i, %if.then.i.i ]
  %42 = ptrtoint ptr %parent.i.i13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %parent.i.i13, align 4
  %mbox_base.i10.i.i = getelementptr inbounds %struct.omap_mbox_device, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %mbox_base.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mbox_base.i10.i.i, align 8
  %add.ptr.i11.i.i = getelementptr i8, ptr %45, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 %bit.0.i.i) #10, !srcloc !130
  %46 = ptrtoint ptr %parent.i.i13 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %parent.i.i13, align 4
  %48 = ptrtoint ptr %rx_fifo.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_fifo.i.i, align 4
  %mbox_base.i.i22.i = getelementptr inbounds %struct.omap_mbox_device, ptr %47, i32 0, i32 2
  %50 = ptrtoint ptr %mbox_base.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mbox_base.i.i22.i, align 8
  %add.ptr.i.i23.i = getelementptr i8, ptr %51, i32 %49
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i23.i) #10, !srcloc !129
  %53 = ptrtoint ptr %intr_bit.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %intr_bit.i.i, align 4
  %irqstatus1.i.i = getelementptr inbounds %struct.omap_mbox, ptr %1, i32 0, i32 6, i32 4
  %55 = ptrtoint ptr %irqstatus1.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irqstatus1.i.i, align 4
  %57 = ptrtoint ptr %parent.i.i13 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %parent.i.i13, align 4
  %mbox_base.i.i28.i = getelementptr inbounds %struct.omap_mbox_device, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %mbox_base.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mbox_base.i.i28.i, align 8
  %add.ptr.i.i29.i = getelementptr i8, ptr %60, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i29.i, i32 %54) #10, !srcloc !130
  %61 = ptrtoint ptr %parent.i.i13 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %parent.i.i13, align 4
  %mbox_base.i8.i.i = getelementptr inbounds %struct.omap_mbox_device, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %mbox_base.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mbox_base.i8.i.i, align 8
  %add.ptr.i9.i.i = getelementptr i8, ptr %64, i32 %56
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i.i) #10, !srcloc !129
  br label %cleanup

if.else:                                          ; preds = %if.end
  br i1 %tobool.not.i17, label %if.then.i18, label %if.else.omap_mbox_chan_send.exit_crit_edge

if.else.omap_mbox_chan_send.exit_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_mbox_chan_send.exit

if.then.i18:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %tx_fifo.i.i = getelementptr inbounds %struct.omap_mbox, ptr %1, i32 0, i32 5
  %66 = ptrtoint ptr %parent.i.i13 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %parent.i.i13, align 4
  %68 = ptrtoint ptr %tx_fifo.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_fifo.i.i, align 4
  %mbox_base.i.i4.i = getelementptr inbounds %struct.omap_mbox_device, ptr %67, i32 0, i32 2
  %70 = ptrtoint ptr %mbox_base.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mbox_base.i.i4.i, align 8
  %add.ptr.i.i5.i = getelementptr i8, ptr %71, i32 %69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i5.i, i32 %2) #10, !srcloc !130
  br label %omap_mbox_chan_send.exit

omap_mbox_chan_send.exit:                         ; preds = %if.then.i18, %if.else.omap_mbox_chan_send.exit_crit_edge
  %ret.0.i19 = phi i32 [ -16, %if.else.omap_mbox_chan_send.exit_crit_edge ], [ 0, %if.then.i18 ]
  %intr_bit.i.i20 = getelementptr inbounds %struct.omap_mbox, ptr %1, i32 0, i32 5, i32 6
  %72 = ptrtoint ptr %intr_bit.i.i20 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %intr_bit.i.i20, align 4
  %irqenable1.i.i21 = getelementptr inbounds %struct.omap_mbox, ptr %1, i32 0, i32 5, i32 3
  %74 = ptrtoint ptr %irqenable1.i.i21 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %irqenable1.i.i21, align 4
  %76 = ptrtoint ptr %parent.i.i13 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %parent.i.i13, align 4
  %mbox_base.i.i8.i22 = getelementptr inbounds %struct.omap_mbox_device, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %mbox_base.i.i8.i22 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mbox_base.i.i8.i22, align 8
  %add.ptr.i.i9.i23 = getelementptr i8, ptr %79, i32 %75
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9.i23) #10, !srcloc !129
  %or.i.i24 = or i32 %80, %73
  %81 = ptrtoint ptr %parent.i.i13 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %parent.i.i13, align 4
  %mbox_base.i9.i.i25 = getelementptr inbounds %struct.omap_mbox_device, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %mbox_base.i9.i.i25 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mbox_base.i9.i.i25, align 8
  %add.ptr.i10.i.i26 = getelementptr i8, ptr %84, i32 %75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i26, i32 %or.i.i24) #10, !srcloc !130
  br label %cleanup

cleanup:                                          ; preds = %omap_mbox_chan_send.exit, %_omap_mbox_disable_irq.exit.i, %if.then2.cleanup_crit_edge, %mbox_chan_to_omap_mbox.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %mbox_chan_to_omap_mbox.exit.cleanup_crit_edge ], [ %ret.0.i19, %omap_mbox_chan_send.exit ], [ -16, %if.then2.cleanup_crit_edge ], [ 0, %_omap_mbox_disable_irq.exit.i ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mbox_chan_startup(ptr noundef readonly %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %chan, null
  br i1 %tobool.not.i, label %entry.mbox_chan_to_omap_mbox.exit_crit_edge, label %lor.lhs.false.i

entry.mbox_chan_to_omap_mbox.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mbox_chan_to_omap_mbox.exit

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %con_priv.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv.i, align 4
  br label %mbox_chan_to_omap_mbox.exit

mbox_chan_to_omap_mbox.exit:                      ; preds = %lor.lhs.false.i, %entry.mbox_chan_to_omap_mbox.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.mbox_chan_to_omap_mbox.exit_crit_edge ], [ %1, %lor.lhs.false.i ]
  %parent = getelementptr inbounds %struct.omap_mbox, ptr %retval.0.i, i32 0, i32 4
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %cfg_lock = getelementptr inbounds %struct.omap_mbox_device, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cfg_lock, i32 noundef 0) #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 116) #15
  %tobool1.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool1.not.i.i, label %mbox_chan_to_omap_mbox.exit.if.then_crit_edge, label %do.body.i.i

mbox_chan_to_omap_mbox.exit.if.then_crit_edge:    ; preds = %mbox_chan_to_omap_mbox.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

do.body.i.i:                                      ; preds = %mbox_chan_to_omap_mbox.exit
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @mbox_queue_alloc.__key, i16 noundef signext 3) #10
  %fifo.i.i = getelementptr inbounds %struct.omap_mbox_queue, ptr %call7.i.i.i.i, i32 0, i32 1
  %7 = load i32, ptr @mbox_kfifo_size, align 4
  %call5.i.i = tail call i32 @__kfifo_alloc(ptr noundef %fifo.i.i, i32 noundef %7, i32 noundef 1, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool7.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end.i, label %error.i.i

error.i.i:                                        ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  br label %if.then

if.end.i:                                         ; preds = %do.body.i.i
  %work11.i.i = getelementptr inbounds %struct.omap_mbox_queue, ptr %call7.i.i.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work11.i.i, i32 noundef 0) #10
  %8 = ptrtoint ptr %work11.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %work11.i.i, align 8
  %lockdep_map.i.i = getelementptr inbounds %struct.omap_mbox_queue, ptr %call7.i.i.i.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @mbox_queue_alloc.__key.30, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry15.i.i = getelementptr inbounds %struct.omap_mbox_queue, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %entry15.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry15.i.i, ptr %entry15.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.omap_mbox_queue, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry15.i.i, ptr %prev.i.i.i, align 8
  %func.i.i = getelementptr inbounds %struct.omap_mbox_queue, ptr %call7.i.i.i.i, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mbox_rx_work, ptr %func.i.i, align 4
  %rxq.i = getelementptr inbounds %struct.omap_mbox, ptr %retval.0.i, i32 0, i32 2
  %12 = ptrtoint ptr %rxq.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i.i.i, ptr %rxq.i, align 4
  %mbox1.i = getelementptr inbounds %struct.omap_mbox_queue, ptr %call7.i.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %mbox1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %retval.0.i, ptr %mbox1.i, align 4
  %irq.i = getelementptr inbounds %struct.omap_mbox, ptr %retval.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq.i, align 4
  %16 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %retval.0.i, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %15, ptr noundef nonnull @mbox_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %17, ptr noundef %retval.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %if.end8.i, label %do.end.i, !prof !136

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %call.i.i) #13
  %18 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rxq.i, align 4
  %fifo.i27.i = getelementptr inbounds %struct.omap_mbox_queue, ptr %19, i32 0, i32 1
  tail call void @__kfifo_free(ptr noundef %fifo.i27.i) #10
  tail call void @kfree(ptr noundef %19) #10
  br label %if.then

if.end8.i:                                        ; preds = %if.end.i
  %send_no_irq.i = getelementptr inbounds %struct.omap_mbox, ptr %retval.0.i, i32 0, i32 9
  %20 = ptrtoint ptr %send_no_irq.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %send_no_irq.i, align 4, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool9.not.i = icmp eq i8 %21, 0
  br i1 %tobool9.not.i, label %if.end8.i.omap_mbox_startup.exit_crit_edge, label %if.then10.i

if.end8.i.omap_mbox_startup.exit_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_mbox_startup.exit

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %chan.i = getelementptr inbounds %struct.omap_mbox, ptr %retval.0.i, i32 0, i32 8
  %22 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chan.i, align 4
  %txdone_method.i = getelementptr inbounds %struct.mbox_chan, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %txdone_method.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %txdone_method.i, align 4
  br label %omap_mbox_startup.exit

omap_mbox_startup.exit:                           ; preds = %if.then10.i, %if.end8.i.omap_mbox_startup.exit_crit_edge
  %intr_bit.i.i = getelementptr inbounds %struct.omap_mbox, ptr %retval.0.i, i32 0, i32 6, i32 6
  %25 = ptrtoint ptr %intr_bit.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %intr_bit.i.i, align 4
  %irqenable1.i.i = getelementptr inbounds %struct.omap_mbox, ptr %retval.0.i, i32 0, i32 6, i32 3
  %27 = ptrtoint ptr %irqenable1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irqenable1.i.i, align 4
  %29 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent, align 4
  %mbox_base.i.i.i = getelementptr inbounds %struct.omap_mbox_device, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %mbox_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mbox_base.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %32, i32 %28
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !129
  %or.i.i = or i32 %33, %26
  %34 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent, align 4
  %mbox_base.i9.i.i = getelementptr inbounds %struct.omap_mbox_device, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %mbox_base.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mbox_base.i9.i.i, align 8
  %add.ptr.i10.i.i = getelementptr i8, ptr %37, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %or.i.i) #10, !srcloc !130
  br label %if.end

if.then:                                          ; preds = %do.end.i, %error.i.i, %mbox_chan_to_omap_mbox.exit.if.then_crit_edge
  %retval.0.i11.ph = phi i32 [ -12, %mbox_chan_to_omap_mbox.exit.if.then_crit_edge ], [ -12, %error.i.i ], [ %call.i.i, %do.end.i ]
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 8
  %call.i12 = tail call i32 @__pm_runtime_idle(ptr noundef %39, i32 noundef 4) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %omap_mbox_startup.exit
  %retval.0.i1116 = phi i32 [ %retval.0.i11.ph, %if.then ], [ 0, %omap_mbox_startup.exit ]
  tail call void @mutex_unlock(ptr noundef %cfg_lock) #10
  ret i32 %retval.0.i1116
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_mbox_chan_shutdown(ptr noundef readonly %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %chan, null
  br i1 %tobool.not.i, label %entry.mbox_chan_to_omap_mbox.exit_crit_edge, label %lor.lhs.false.i

entry.mbox_chan_to_omap_mbox.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mbox_chan_to_omap_mbox.exit

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %con_priv.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv.i, align 4
  br label %mbox_chan_to_omap_mbox.exit

mbox_chan_to_omap_mbox.exit:                      ; preds = %lor.lhs.false.i, %entry.mbox_chan_to_omap_mbox.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.mbox_chan_to_omap_mbox.exit_crit_edge ], [ %1, %lor.lhs.false.i ]
  %parent = getelementptr inbounds %struct.omap_mbox, ptr %retval.0.i, i32 0, i32 4
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %cfg_lock = getelementptr inbounds %struct.omap_mbox_device, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cfg_lock, i32 noundef 0) #10
  %intr_bit.i.i = getelementptr inbounds %struct.omap_mbox, ptr %retval.0.i, i32 0, i32 6, i32 6
  %4 = ptrtoint ptr %intr_bit.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %intr_bit.i.i, align 4
  %irqdisable1.i.i = getelementptr inbounds %struct.omap_mbox, ptr %retval.0.i, i32 0, i32 6, i32 5
  %6 = ptrtoint ptr %irqdisable1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irqdisable1.i.i, align 4
  %intr_type.i.i = getelementptr inbounds %struct.omap_mbox, ptr %retval.0.i, i32 0, i32 7
  %8 = ptrtoint ptr %intr_type.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %intr_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %mbox_chan_to_omap_mbox.exit.omap_mbox_fini.exit_crit_edge

mbox_chan_to_omap_mbox.exit.omap_mbox_fini.exit_crit_edge: ; preds = %mbox_chan_to_omap_mbox.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_mbox_fini.exit

if.then.i.i:                                      ; preds = %mbox_chan_to_omap_mbox.exit
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 4
  %mbox_base.i.i.i = getelementptr inbounds %struct.omap_mbox_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %mbox_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mbox_base.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 %7
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !129
  %neg.i.i = xor i32 %5, -1
  %and.i.i = and i32 %14, %neg.i.i
  br label %omap_mbox_fini.exit

omap_mbox_fini.exit:                              ; preds = %if.then.i.i, %mbox_chan_to_omap_mbox.exit.omap_mbox_fini.exit_crit_edge
  %bit.0.i.i = phi i32 [ %5, %mbox_chan_to_omap_mbox.exit.omap_mbox_fini.exit_crit_edge ], [ %and.i.i, %if.then.i.i ]
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 4
  %mbox_base.i10.i.i = getelementptr inbounds %struct.omap_mbox_device, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %mbox_base.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mbox_base.i10.i.i, align 8
  %add.ptr.i11.i.i = getelementptr i8, ptr %18, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 %bit.0.i.i) #10, !srcloc !130
  %irq.i = getelementptr inbounds %struct.omap_mbox, ptr %retval.0.i, i32 0, i32 1
  %19 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %20, ptr noundef %retval.0.i) #10
  %rxq.i = getelementptr inbounds %struct.omap_mbox, ptr %retval.0.i, i32 0, i32 2
  %21 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rxq.i, align 4
  %work.i = getelementptr inbounds %struct.omap_mbox_queue, ptr %22, i32 0, i32 2
  %call1.i = tail call zeroext i1 @flush_work(ptr noundef %work.i) #10
  %23 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rxq.i, align 4
  %fifo.i.i = getelementptr inbounds %struct.omap_mbox_queue, ptr %24, i32 0, i32 1
  tail call void @__kfifo_free(ptr noundef %fifo.i.i) #10
  tail call void @kfree(ptr noundef %24) #10
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 8
  %call.i6 = tail call i32 @__pm_runtime_idle(ptr noundef %26, i32 noundef 4) #10
  tail call void @mutex_unlock(ptr noundef %cfg_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mbox_rx_work(ptr noundef %work) #0 align 64 {
entry:
  %msg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg) #10
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %msg, align 4, !annotation !131
  %fifo = getelementptr i8, ptr %work, i32 -20
  %out = getelementptr i8, ptr %work, i32 -16
  %1 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fifo, align 4
  %3 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %out, align 4
  %sub40 = sub i32 %2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub40)
  %cmp41 = icmp ugt i32 %sub40, 3
  br i1 %cmp41, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %mbox = getelementptr i8, ptr %work, i32 44
  %full = getelementptr i8, ptr %work, i32 48
  br label %while.body

while.body:                                       ; preds = %if.end29.while.body_crit_edge, %while.body.lr.ph
  %call = call i32 @__kfifo_out(ptr noundef %fifo, ptr noundef nonnull %msg, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp5.not = icmp eq i32 %call, 4
  br i1 %cmp5.not, label %while.body.if.end_crit_edge, label %do.end, !prof !136

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 265, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %while.body.if.end_crit_edge
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg, align 4
  %7 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mbox, align 4
  %chan = getelementptr inbounds %struct.omap_mbox, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chan, align 4
  %11 = inttoptr i32 %6 to ptr
  call void @mbox_chan_received_data(ptr noundef %10, ptr noundef %11) #10
  call void @_raw_spin_lock_irq(ptr noundef %add.ptr) #10
  %12 = ptrtoint ptr %full to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %full, align 4, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool25.not = icmp eq i8 %13, 0
  br i1 %tobool25.not, label %if.end.if.end29_crit_edge, label %if.then26

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %full to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %full, align 4
  %15 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mbox, align 4
  %intr_bit.i = getelementptr inbounds %struct.omap_mbox, ptr %16, i32 0, i32 6, i32 6
  %17 = ptrtoint ptr %intr_bit.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %intr_bit.i, align 4
  %irqenable1.i = getelementptr inbounds %struct.omap_mbox, ptr %16, i32 0, i32 6, i32 3
  %19 = ptrtoint ptr %irqenable1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irqenable1.i, align 4
  %parent.i = getelementptr inbounds %struct.omap_mbox, ptr %16, i32 0, i32 4
  %21 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent.i, align 4
  %mbox_base.i.i = getelementptr inbounds %struct.omap_mbox_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %mbox_base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mbox_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %20
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !129
  %or.i = or i32 %25, %18
  %26 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent.i, align 4
  %mbox_base.i9.i = getelementptr inbounds %struct.omap_mbox_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %mbox_base.i9.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mbox_base.i9.i, align 8
  %add.ptr.i10.i = getelementptr i8, ptr %29, i32 %20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %or.i) #10, !srcloc !130
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end.if.end29_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %add.ptr) #10
  %30 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fifo, align 4
  %32 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %out, align 4
  %sub = sub i32 %31, %33
  %cmp = icmp ugt i32 %sub, 3
  br i1 %cmp, label %if.end29.while.body_crit_edge, label %if.end29.while.end_crit_edge

if.end29.while.end_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end29.while.body_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end29.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mbox_interrupt(i32 noundef %irq, ptr noundef readonly %p) #0 align 64 {
entry:
  %msg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_bit.i = getelementptr inbounds %struct.omap_mbox, ptr %p, i32 0, i32 5, i32 6
  %0 = ptrtoint ptr %intr_bit.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intr_bit.i, align 4
  %irqenable1.i = getelementptr inbounds %struct.omap_mbox, ptr %p, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %irqenable1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irqenable1.i, align 4
  %irqstatus2.i = getelementptr inbounds %struct.omap_mbox, ptr %p, i32 0, i32 5, i32 4
  %4 = ptrtoint ptr %irqstatus2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irqstatus2.i, align 4
  %parent.i = getelementptr inbounds %struct.omap_mbox, ptr %p, i32 0, i32 4
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 4
  %mbox_base.i.i = getelementptr inbounds %struct.omap_mbox_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %mbox_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mbox_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %3
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !129
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 4
  %mbox_base.i11.i = getelementptr inbounds %struct.omap_mbox_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %mbox_base.i11.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mbox_base.i11.i, align 8
  %add.ptr.i12.i = getelementptr i8, ptr %14, i32 %5
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #10, !srcloc !129
  %and.i = and i32 %10, %1
  %and5.i = and i32 %and.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not = icmp eq i32 %and5.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %16 = ptrtoint ptr %intr_bit.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %intr_bit.i, align 4
  %irqdisable1.i.i = getelementptr inbounds %struct.omap_mbox, ptr %p, i32 0, i32 5, i32 5
  %18 = ptrtoint ptr %irqdisable1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irqdisable1.i.i, align 4
  %intr_type.i.i = getelementptr inbounds %struct.omap_mbox, ptr %p, i32 0, i32 7
  %20 = ptrtoint ptr %intr_type.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %intr_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.__mbox_tx_interrupt.exit_crit_edge

if.then.__mbox_tx_interrupt.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %__mbox_tx_interrupt.exit

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent.i, align 4
  %mbox_base.i.i.i = getelementptr inbounds %struct.omap_mbox_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %mbox_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mbox_base.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 %19
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !129
  %neg.i.i = xor i32 %17, -1
  %and.i.i = and i32 %26, %neg.i.i
  br label %__mbox_tx_interrupt.exit

__mbox_tx_interrupt.exit:                         ; preds = %if.then.i.i, %if.then.__mbox_tx_interrupt.exit_crit_edge
  %bit.0.i.i = phi i32 [ %17, %if.then.__mbox_tx_interrupt.exit_crit_edge ], [ %and.i.i, %if.then.i.i ]
  %27 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent.i, align 4
  %mbox_base.i10.i.i = getelementptr inbounds %struct.omap_mbox_device, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %mbox_base.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mbox_base.i10.i.i, align 8
  %add.ptr.i11.i.i = getelementptr i8, ptr %30, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 %bit.0.i.i) #10, !srcloc !130
  %31 = ptrtoint ptr %intr_bit.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %intr_bit.i, align 4
  %33 = ptrtoint ptr %irqstatus2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irqstatus2.i, align 4
  %35 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent.i, align 4
  %mbox_base.i.i7.i = getelementptr inbounds %struct.omap_mbox_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %mbox_base.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mbox_base.i.i7.i, align 8
  %add.ptr.i.i8.i = getelementptr i8, ptr %38, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i8.i, i32 %32) #10, !srcloc !130
  %39 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent.i, align 4
  %mbox_base.i8.i.i = getelementptr inbounds %struct.omap_mbox_device, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %mbox_base.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mbox_base.i8.i.i, align 8
  %add.ptr.i9.i.i = getelementptr i8, ptr %42, i32 %34
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i.i) #10, !srcloc !129
  %chan.i = getelementptr inbounds %struct.omap_mbox, ptr %p, i32 0, i32 8
  %44 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chan.i, align 4
  tail call void @mbox_chan_txdone(ptr noundef %45, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %__mbox_tx_interrupt.exit, %entry.if.end_crit_edge
  %rx_fifo.i9 = getelementptr inbounds %struct.omap_mbox, ptr %p, i32 0, i32 6
  %intr_bit.i10 = getelementptr inbounds %struct.omap_mbox, ptr %p, i32 0, i32 6, i32 6
  %46 = ptrtoint ptr %intr_bit.i10 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %intr_bit.i10, align 4
  %irqenable1.i11 = getelementptr inbounds %struct.omap_mbox, ptr %p, i32 0, i32 6, i32 3
  %48 = ptrtoint ptr %irqenable1.i11 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irqenable1.i11, align 4
  %irqstatus2.i12 = getelementptr inbounds %struct.omap_mbox, ptr %p, i32 0, i32 6, i32 4
  %50 = ptrtoint ptr %irqstatus2.i12 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irqstatus2.i12, align 4
  %52 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %parent.i, align 4
  %mbox_base.i.i14 = getelementptr inbounds %struct.omap_mbox_device, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %mbox_base.i.i14 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mbox_base.i.i14, align 8
  %add.ptr.i.i15 = getelementptr i8, ptr %55, i32 %49
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i15) #10, !srcloc !129
  %57 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %parent.i, align 4
  %mbox_base.i11.i16 = getelementptr inbounds %struct.omap_mbox_device, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %mbox_base.i11.i16 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mbox_base.i11.i16, align 8
  %add.ptr.i12.i17 = getelementptr i8, ptr %60, i32 %51
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i17) #10, !srcloc !129
  %and.i18 = and i32 %56, %47
  %and5.i19 = and i32 %and.i18, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i19)
  %tobool2.not = icmp eq i32 %and5.i19, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %rxq.i = getelementptr inbounds %struct.omap_mbox, ptr %p, i32 0, i32 2
  %62 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rxq.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg.i) #10
  %64 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %msg.i, align 4, !annotation !131
  %msg_stat.i.i = getelementptr inbounds %struct.omap_mbox, ptr %p, i32 0, i32 6, i32 2
  %65 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %parent.i, align 4
  %67 = ptrtoint ptr %msg_stat.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %msg_stat.i.i, align 4
  %mbox_base.i.i65.i = getelementptr inbounds %struct.omap_mbox_device, ptr %66, i32 0, i32 2
  %69 = ptrtoint ptr %mbox_base.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mbox_base.i.i65.i, align 8
  %add.ptr.i.i66.i = getelementptr i8, ptr %70, i32 %68
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i66.i) #10, !srcloc !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i.not67.i = icmp eq i32 %71, 0
  br i1 %cmp.i.not67.i, label %if.then3.while.end.i_crit_edge, label %while.body.lr.ph.i

if.then3.while.end.i_crit_edge:                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.then3
  %fifo.i = getelementptr inbounds %struct.omap_mbox_queue, ptr %63, i32 0, i32 1
  %mask.i = getelementptr inbounds %struct.omap_mbox_queue, ptr %63, i32 0, i32 1, i32 0, i32 0, i32 2
  %out.i = getelementptr inbounds %struct.omap_mbox_queue, ptr %63, i32 0, i32 1, i32 0, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end31.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %72 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mask.i, align 4
  %74 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fifo.i, align 4
  %76 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %out.i, align 4
  %sub.neg.i = add i32 %73, 1
  %add.i = sub i32 %sub.neg.i, %75
  %sub1.i = add i32 %add.i, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub1.i)
  %cmp.i = icmp ult i32 %sub1.i, 4
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !prof !128

if.then.i:                                        ; preds = %while.body.i
  %78 = ptrtoint ptr %intr_bit.i10 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %intr_bit.i10, align 4
  %irqdisable1.i.i22 = getelementptr inbounds %struct.omap_mbox, ptr %p, i32 0, i32 6, i32 5
  %80 = ptrtoint ptr %irqdisable1.i.i22 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %irqdisable1.i.i22, align 4
  %intr_type.i.i23 = getelementptr inbounds %struct.omap_mbox, ptr %p, i32 0, i32 7
  %82 = ptrtoint ptr %intr_type.i.i23 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %intr_type.i.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i.i24 = icmp eq i32 %83, 0
  br i1 %tobool.not.i.i24, label %if.then.i.i27, label %if.then.i._omap_mbox_disable_irq.exit.i_crit_edge

if.then.i._omap_mbox_disable_irq.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_omap_mbox_disable_irq.exit.i

if.then.i.i27:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %parent.i, align 4
  %mbox_base.i.i52.i = getelementptr inbounds %struct.omap_mbox_device, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %mbox_base.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mbox_base.i.i52.i, align 8
  %add.ptr.i.i53.i = getelementptr i8, ptr %87, i32 %81
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i53.i) #10, !srcloc !129
  %neg.i.i25 = xor i32 %79, -1
  %and.i.i26 = and i32 %88, %neg.i.i25
  br label %_omap_mbox_disable_irq.exit.i

_omap_mbox_disable_irq.exit.i:                    ; preds = %if.then.i.i27, %if.then.i._omap_mbox_disable_irq.exit.i_crit_edge
  %bit.0.i.i28 = phi i32 [ %79, %if.then.i._omap_mbox_disable_irq.exit.i_crit_edge ], [ %and.i.i26, %if.then.i.i27 ]
  %89 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %parent.i, align 4
  %mbox_base.i10.i.i29 = getelementptr inbounds %struct.omap_mbox_device, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %mbox_base.i10.i.i29 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mbox_base.i10.i.i29, align 8
  %add.ptr.i11.i.i30 = getelementptr i8, ptr %92, i32 %81
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i30, i32 %bit.0.i.i28) #10, !srcloc !130
  %full.i = getelementptr inbounds %struct.omap_mbox_queue, ptr %63, i32 0, i32 4
  %93 = ptrtoint ptr %full.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %full.i, align 4
  br label %__mbox_rx_interrupt.exit

if.end.i:                                         ; preds = %while.body.i
  %94 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %parent.i, align 4
  %96 = ptrtoint ptr %rx_fifo.i9 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rx_fifo.i9, align 4
  %mbox_base.i.i56.i = getelementptr inbounds %struct.omap_mbox_device, ptr %95, i32 0, i32 2
  %98 = ptrtoint ptr %mbox_base.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mbox_base.i.i56.i, align 8
  %add.ptr.i.i57.i = getelementptr i8, ptr %99, i32 %97
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57.i) #10, !srcloc !129
  %101 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %msg.i, align 4
  %call11.i = call i32 @__kfifo_in(ptr noundef %fifo.i, ptr noundef nonnull %msg.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call11.i)
  %cmp12.not.i = icmp eq i32 %call11.i, 4
  br i1 %cmp12.not.i, label %if.end.i.if.end31.i_crit_edge, label %do.end.i, !prof !136

if.end.i.if.end31.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 304, i32 noundef 9, ptr noundef null) #10
  br label %if.end31.i

if.end31.i:                                       ; preds = %do.end.i, %if.end.i.if.end31.i_crit_edge
  %102 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %parent.i, align 4
  %104 = ptrtoint ptr %msg_stat.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %msg_stat.i.i, align 4
  %mbox_base.i.i.i31 = getelementptr inbounds %struct.omap_mbox_device, ptr %103, i32 0, i32 2
  %106 = ptrtoint ptr %mbox_base.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mbox_base.i.i.i31, align 8
  %add.ptr.i.i.i32 = getelementptr i8, ptr %107, i32 %105
  %108 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i32) #10, !srcloc !129
  %cmp.i.not.i = icmp eq i32 %108, 0
  br i1 %cmp.i.not.i, label %if.end31.i.while.end.i_crit_edge, label %if.end31.i.while.body.i_crit_edge

if.end31.i.while.body.i_crit_edge:                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end31.i.while.end.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %if.end31.i.while.end.i_crit_edge, %if.then3.while.end.i_crit_edge
  %109 = ptrtoint ptr %intr_bit.i10 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %intr_bit.i10, align 4
  %111 = ptrtoint ptr %irqstatus2.i12 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %irqstatus2.i12, align 4
  %113 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %parent.i, align 4
  %mbox_base.i.i62.i = getelementptr inbounds %struct.omap_mbox_device, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %mbox_base.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mbox_base.i.i62.i, align 8
  %add.ptr.i.i63.i = getelementptr i8, ptr %116, i32 %112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i63.i, i32 %110) #10, !srcloc !130
  %117 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %parent.i, align 4
  %mbox_base.i8.i.i34 = getelementptr inbounds %struct.omap_mbox_device, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %mbox_base.i8.i.i34 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %mbox_base.i8.i.i34, align 8
  %add.ptr.i9.i.i35 = getelementptr i8, ptr %120, i32 %112
  %121 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i.i35) #10, !srcloc !129
  br label %__mbox_rx_interrupt.exit

__mbox_rx_interrupt.exit:                         ; preds = %while.end.i, %_omap_mbox_disable_irq.exit.i
  %122 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rxq.i, align 4
  %work.i = getelementptr inbounds %struct.omap_mbox_queue, ptr %123, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %124 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %124, ptr noundef %work.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg.i) #10
  br label %if.end4

if.end4:                                          ; preds = %__mbox_rx_interrupt.exit, %if.end.if.end4_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_received_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_txdone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_phandle(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mbox_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mbox_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_fifos = getelementptr inbounds %struct.omap_mbox_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %num_fifos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_fifos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp38.not = icmp eq i32 %5, 0
  br i1 %cmp38.not, label %for.cond.preheader.for.cond6.preheader_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.cond6.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond6.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mbox_base.i = getelementptr inbounds %struct.omap_mbox_device, ptr %1, i32 0, i32 2
  br label %for.body

for.cond6.preheader:                              ; preds = %for.inc.for.cond6.preheader_crit_edge, %for.cond.preheader.for.cond6.preheader_crit_edge
  %num_users = getelementptr inbounds %struct.omap_mbox_device, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %num_users to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp740.not = icmp eq i32 %7, 0
  br i1 %cmp740.not, label %for.cond6.preheader.cleanup_crit_edge, label %for.body8.lr.ph

for.cond6.preheader.cleanup_crit_edge:            ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body8.lr.ph:                                  ; preds = %for.cond6.preheader
  %intr_type = getelementptr inbounds %struct.omap_mbox_device, ptr %1, i32 0, i32 6
  %mbox_base.i35 = getelementptr inbounds %struct.omap_mbox_device, ptr %1, i32 0, i32 2
  %irq_ctx = getelementptr inbounds %struct.omap_mbox_device, ptr %1, i32 0, i32 3
  br label %for.body8

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %fifo.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = shl i32 %fifo.039, 2
  %add = add i32 %mul, 192
  %8 = ptrtoint ptr %mbox_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mbox_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %for.inc, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.35, i32 noundef %fifo.039) #13
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %fifo.039, 1
  %13 = ptrtoint ptr %num_fifos to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_fifos, align 4
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond6.preheader_crit_edge

for.inc.for.cond6.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond6.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.body8.lr.ph
  %usr.041 = phi i32 [ 0, %for.body8.lr.ph ], [ %inc16, %for.body8.for.body8_crit_edge ]
  %15 = ptrtoint ptr %intr_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %intr_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool9.not = icmp eq i32 %16, 0
  %mul10 = shl i32 %usr.041, 4
  %add11 = add i32 %mul10, 264
  %mul12 = shl i32 %usr.041, 3
  %add13 = add i32 %mul12, 260
  %cond = select i1 %tobool9.not, i32 %add13, i32 %add11
  %17 = ptrtoint ptr %mbox_base.i35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mbox_base.i35, align 8
  %add.ptr.i36 = getelementptr i8, ptr %18, i32 %cond
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #10, !srcloc !129
  %20 = ptrtoint ptr %irq_ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %irq_ctx, align 4
  %arrayidx = getelementptr i32, ptr %21, i32 %usr.041
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %arrayidx, align 4
  %inc16 = add nuw i32 %usr.041, 1
  %23 = ptrtoint ptr %num_users to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_users, align 8
  %cmp7 = icmp ult i32 %inc16, %24
  br i1 %cmp7, label %for.body8.for.body8_crit_edge, label %for.body8.cleanup_crit_edge

for.body8.cleanup_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body8

cleanup:                                          ; preds = %for.body8.cleanup_crit_edge, %do.end, %for.cond6.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond6.preheader.cleanup_crit_edge ], [ 0, %for.body8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mbox_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_users = getelementptr inbounds %struct.omap_mbox_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %num_users to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp14.not = icmp eq i32 %5, 0
  br i1 %cmp14.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %intr_type = getelementptr inbounds %struct.omap_mbox_device, ptr %1, i32 0, i32 6
  %irq_ctx = getelementptr inbounds %struct.omap_mbox_device, ptr %1, i32 0, i32 3
  %mbox_base.i = getelementptr inbounds %struct.omap_mbox_device, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %usr.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %intr_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %intr_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %mul = shl i32 %usr.015, 4
  %add = add i32 %mul, 264
  %mul2 = shl i32 %usr.015, 3
  %add3 = add i32 %mul2, 260
  %cond = select i1 %tobool.not, i32 %add3, i32 %add
  %8 = ptrtoint ptr %irq_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_ctx, align 4
  %arrayidx = getelementptr i32, ptr %9, i32 %usr.015
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %mbox_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mbox_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #10, !srcloc !130
  %inc = add nuw i32 %usr.015, 1
  %14 = ptrtoint ptr %num_users to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_users, align 8
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !18, !19, !20, !22, !24, !26, !28, !29, !31, !33, !35, !36, !38, !40, !41, !42, !44, !46, !47, !49, !51, !53, !55, !56, !57, !58, !60, !62, !64, !65, !66, !67, !68, !70, !72, !74, !76, !77, !79, !80, !81, !82, !84, !86, !87, !88, !89, !91, !92, !94, !95, !97, !98, !99, !100, !102, !104, !106, !108, !110, !112, !113, !114, !115, !117}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @__param_mbox_kfifo_size, !1, !"__param_mbox_kfifo_size", i1 false, i1 false}
!1 = !{!"../drivers/mailbox/omap-mailbox.c", i32 120, i32 1}
!2 = !{ptr @__UNIQUE_ID_mbox_kfifo_sizetype233, !1, !"__UNIQUE_ID_mbox_kfifo_sizetype233", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_mbox_kfifo_size234, !4, !"__UNIQUE_ID_mbox_kfifo_size234", i1 false, i1 false}
!4 = !{!"../drivers/mailbox/omap-mailbox.c", i32 121, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/mailbox/omap-mailbox.c", i32 234, i32 6}
!7 = !{ptr @__ksymtab_omap_mbox_enable_irq, !8, !"__ksymtab_omap_mbox_enable_irq", i1 false, i1 false}
!8 = !{!"../drivers/mailbox/omap-mailbox.c", i32 239, i32 1}
!9 = !{ptr @__ksymtab_omap_mbox_disable_irq, !10, !"__ksymtab_omap_mbox_disable_irq", i1 false, i1 false}
!10 = !{!"../drivers/mailbox/omap-mailbox.c", i32 250, i32 1}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mailbox/omap-mailbox.c", i32 428, i32 3}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @omap_mbox_request_channel._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @omap_mbox_request_channel._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mailbox/omap-mailbox.c", i32 455, i32 3}
!18 = !{ptr @omap_mbox_request_channel._entry.3, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @omap_mbox_request_channel._entry_ptr.5, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_omap_mbox_request_channel, !21, !"__ksymtab_omap_mbox_request_channel", i1 false, i1 false}
!21 = !{!"../drivers/mailbox/omap-mailbox.c", i32 462, i32 1}
!22 = !{ptr @__initcall__kmod_omap_mailbox__237_923_omap_mbox_init4, !23, !"__initcall__kmod_omap_mailbox__237_923_omap_mbox_init4", i1 false, i1 false}
!23 = !{!"../drivers/mailbox/omap-mailbox.c", i32 923, i32 1}
!24 = !{ptr @__exitcall_omap_mbox_exit, !25, !"__exitcall_omap_mbox_exit", i1 false, i1 false}
!25 = !{!"../drivers/mailbox/omap-mailbox.c", i32 930, i32 1}
!26 = !{ptr @__UNIQUE_ID_file238, !27, !"__UNIQUE_ID_file238", i1 false, i1 false}
!27 = !{!"../drivers/mailbox/omap-mailbox.c", i32 932, i32 1}
!28 = !{ptr @__UNIQUE_ID_license239, !27, !"__UNIQUE_ID_license239", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_description240, !30, !"__UNIQUE_ID_description240", i1 false, i1 false}
!30 = !{!"../drivers/mailbox/omap-mailbox.c", i32 933, i32 1}
!31 = !{ptr @__UNIQUE_ID_author241, !32, !"__UNIQUE_ID_author241", i1 false, i1 false}
!32 = !{!"../drivers/mailbox/omap-mailbox.c", i32 934, i32 1}
!33 = !{ptr @__UNIQUE_ID_author242, !34, !"__UNIQUE_ID_author242", i1 false, i1 false}
!34 = !{!"../drivers/mailbox/omap-mailbox.c", i32 935, i32 1}
!35 = !{ptr @__param_str_mbox_kfifo_size, !1, !"__param_str_mbox_kfifo_size", i1 false, i1 false}
!36 = !{ptr @mbox_kfifo_size, !37, !"mbox_kfifo_size", i1 false, i1 false}
!37 = !{!"../drivers/mailbox/omap-mailbox.c", i32 119, i32 21}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mailbox/omap-mailbox.c", i32 116, i32 8}
!40 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @omap_mbox_devices_lock, !39, !"omap_mbox_devices_lock", i1 false, i1 false}
!42 = !{ptr @omap_mbox_devices, !43, !"omap_mbox_devices", i1 false, i1 false}
!43 = !{!"../drivers/mailbox/omap-mailbox.c", i32 117, i32 8}
!44 = !{ptr @init_completion.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../include/linux/completion.h", i32 87, i32 2}
!46 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @omap_mbox_init.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/mailbox/omap-mailbox.c", i32 909, i32 8}
!49 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mailbox/omap-mailbox.c", i32 899, i32 11}
!51 = !{ptr @omap_mbox_driver, !52, !"omap_mbox_driver", i1 false, i1 false}
!52 = !{!"../drivers/mailbox/omap-mailbox.c", i32 895, i32 31}
!53 = !{ptr @.str.10, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mailbox/omap-mailbox.c", i32 718, i32 3}
!55 = !{ptr @.str.11, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @omap_mbox_probe._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @omap_mbox_probe._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.12, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mailbox/omap-mailbox.c", i32 727, i32 33}
!60 = !{ptr @.str.13, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mailbox/omap-mailbox.c", i32 730, i32 33}
!62 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mailbox/omap-mailbox.c", i32 735, i32 3}
!64 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @omap_mbox_probe._entry.14, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @omap_mbox_probe._entry_ptr.18, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mailbox/omap-mailbox.c", i32 748, i32 43}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mailbox/omap-mailbox.c", i32 756, i32 43}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mailbox/omap-mailbox.c", i32 766, i32 31}
!74 = !{ptr @omap_mbox_probe.__key, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/mailbox/omap-mailbox.c", i32 835, i32 2}
!76 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mailbox/omap-mailbox.c", i32 870, i32 2}
!79 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @omap_mbox_probe._entry.23, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @omap_mbox_probe._entry_ptr.26, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @omap_mbox_chan_ops, !83, !"omap_mbox_chan_ops", i1 false, i1 false}
!83 = !{!"../drivers/mailbox/omap-mailbox.c", i32 594, i32 35}
!84 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mailbox/omap-mailbox.c", i32 371, i32 3}
!86 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @omap_mbox_startup._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @omap_mbox_startup._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @mbox_queue_alloc.__key, !90, !"__key", i1 false, i1 false}
!90 = !{!"../drivers/mailbox/omap-mailbox.c", i32 338, i32 2}
!91 = !{ptr @.str.29, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @mbox_queue_alloc.__key.30, !93, !"__key", i1 false, i1 false}
!93 = !{!"../drivers/mailbox/omap-mailbox.c", i32 343, i32 2}
!94 = !{ptr @.str.31, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mailbox/omap-mailbox.c", i32 690, i32 3}
!97 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @omap_mbox_of_xlate._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @omap_mbox_of_xlate._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.34, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mailbox/omap-mailbox.c", i32 480, i32 15}
!102 = !{ptr @omap_mailbox_of_match, !103, !"omap_mailbox_of_match", i1 false, i1 false}
!103 = !{!"../drivers/mailbox/omap-mailbox.c", i32 649, i32 34}
!104 = !{ptr @omap2_data, !105, !"omap2_data", i1 false, i1 false}
!105 = !{!"../drivers/mailbox/omap-mailbox.c", i32 646, i32 42}
!106 = !{ptr @omap4_data, !107, !"omap4_data", i1 false, i1 false}
!107 = !{!"../drivers/mailbox/omap-mailbox.c", i32 647, i32 42}
!108 = !{ptr @omap_mbox_pm_ops, !109, !"omap_mbox_pm_ops", i1 false, i1 false}
!109 = !{!"../drivers/mailbox/omap-mailbox.c", i32 642, i32 32}
!110 = !{ptr @.str.35, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mailbox/omap-mailbox.c", i32 611, i32 4}
!112 = !{ptr @.str.36, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @omap_mbox_suspend._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @omap_mbox_suspend._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mailbox/omap-mailbox.c", i32 464, i32 49}
!117 = !{ptr @omap_mbox_class, !118, !"omap_mbox_class", i1 false, i1 false}
!118 = !{!"../drivers/mailbox/omap-mailbox.c", i32 464, i32 21}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{!"branch_weights", i32 1, i32 2000}
!129 = !{i64 4218673}
!130 = !{i64 4218255}
!131 = !{!"auto-init"}
!132 = !{i8 0, i8 2}
!133 = !{i64 2148255051}
!134 = !{i64 739874, i64 739899, i64 739921, i64 739937, i64 739949, i64 739969, i64 739993, i64 740009, i64 740021}
!135 = !{i64 2148255239}
!136 = !{!"branch_weights", i32 2000, i32 1}
