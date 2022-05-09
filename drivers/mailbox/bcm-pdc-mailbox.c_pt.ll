; ModuleID = '/llk/IR_all_yes/drivers/mailbox/bcm-pdc-mailbox.c_pt.bc'
source_filename = "../drivers/mailbox/bcm-pdc-mailbox.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pdc_state = type { i8, ptr, %struct.mbox_controller, i32, %struct.tasklet_struct, i32, i8, i32, ptr, ptr, ptr, %struct.pdc_ring_alloc, %struct.pdc_ring_alloc, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, [512 x i32], i32, i32, i32, i32, [512 x %struct.pdc_rx_ctx], [512 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.71, i32 }
%union.anon.71 = type { ptr }
%struct.pdc_ring_alloc = type { i32, ptr, i32 }
%struct.pdc_rx_ctx = type { ptr, ptr, i32, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pdc_regs = type { i32, i32, i32, i32, [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [48 x i32], i32, i32, i32, i32, [4 x i32], i32, i32, i32, [21 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [11 x i32], i32, i32, i32, [5 x i32], [4 x %struct.dma64] }
%struct.dma64 = type { %struct.dma64_regs, [2 x i32], %struct.dma64_regs, [2 x i32] }
%struct.dma64_regs = type { i32, i32, i32, i32, i32, i32 }
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }
%struct.brcm_message = type { i32, %union.anon.73, ptr, i32 }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma64dd = type { i32, i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__initcall__kmod_bcm_pdc_mailbox__251_1641_pdc_mbox_driver_init6 = internal global ptr @pdc_mbox_driver_init, section ".initcall6.init", align 4
@pdc_mbox_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pdc_probe, ptr @pdc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pdc_mbox_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pdc_mbox_driver_exit = internal global ptr @pdc_mbox_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author252 = internal constant [56 x i8] c"bcm_pdc_mailbox.author=Rob Rice <rob.rice@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description253 = internal constant [56 x i8] c"bcm_pdc_mailbox.description=Broadcom PDC mailbox driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file254 = internal constant [53 x i8] c"bcm_pdc_mailbox.file=drivers/mailbox/bcm-pdc-mailbox\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [31 x i8] c"bcm_pdc_mailbox.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"brcm-iproc-pdc-mbox\00", [44 x i8] zeroinitializer }, align 32
@pdc_mbox_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-pdc-mbox\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pdc_hw }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-fa2-mbox\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fa_hw }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@pdcg.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pdc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1553, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PDC device cannot perform DMA. Error %d.\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pdc_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/mailbox/bcm-pdc-mailbox.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pdc_probe._entry_ptr = internal global ptr @pdc_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pdc rings\00", [22 x i8] zeroinitializer }, align 32
@pdc_probe.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 1, i8 -119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bcm_pdc_mailbox\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"PDC register region res.start = %pa, res.end = %pa\00", [45 x i8] zeroinitializer }, align 32
@pdc_probe.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 1, i8 -111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pdc_probe() successful\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"brcm,rx-status-len\00", [45 x i8] zeroinitializer }, align 32
@pdc_dt_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 1506, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s failed to get DMA receive status length from device tree\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pdc_dt_read\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pdc_dt_read._entry_ptr = internal global ptr @pdc_dt_read._entry, section ".printk_index", align 4
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcm,use-bcm-hdr\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pdc rx bufs\00", [20 x i8] zeroinitializer }, align 32
@pdc_hw_init.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 1, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pdc_hw_init\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PDC %u initial values:\00", [41 x i8] zeroinitializer }, align 32
@pdc_hw_init.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.16, ptr @.str.3, ptr @.str.18, i8 1, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"state structure:                   %p\00", [58 x i8] zeroinitializer }, align 32
@pdc_hw_init.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.16, ptr @.str.3, ptr @.str.19, i8 1, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" - base virtual addr of hw regs    %p\00", [58 x i8] zeroinitializer }, align 32
@pdc_receive_one.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 -102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pdc_receive_one\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PDC %u reclaimed %d tx descriptors\00", [61 x i8] zeroinitializer }, align 32
@pdc_receive_one.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.20, ptr @.str.3, ptr @.str.22, i8 0, i8 -98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PDC %u reclaimed %d rx descriptors\00", [61 x i8] zeroinitializer }, align 32
@pdc_receive_one.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.20, ptr @.str.3, ptr @.str.23, i8 0, i8 -97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"PDC %u txin %u, txout %u, rxin %u, rxout %u, last_rx_curr %u\0A\00", [34 x i8] zeroinitializer }, align 32
@pdc_receive_one.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.20, ptr @.str.3, ptr @.str.24, i8 0, i8 -95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SPU response length %u bytes\00", [35 x i8] zeroinitializer }, align 32
@pdc_receive_one._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@pdc_receive_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.20, ptr @.str.3, i32 651, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"crypto receive overflow\00", [40 x i8] zeroinitializer }, align 32
@pdc_receive_one._entry_ptr = internal global ptr @pdc_receive_one._entry, section ".printk_index", align 4
@pdc_receive_one._rs.27 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@pdc_receive_one._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.20, ptr @.str.3, i32 654, ptr @.str.30, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"crypto rx len = 0\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pdc_receive_one._entry_ptr.31 = internal global ptr @pdc_receive_one._entry.28, section ".printk_index", align 4
@pdc_interrupts_init.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 1, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pdc_interrupts_init\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pdc device %s irq %u for pdcs %p\00", [63 x i8] zeroinitializer }, align 32
@pdc_interrupts_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 1412, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"IRQ %u request failed with err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@pdc_interrupts_init._entry_ptr = internal global ptr @pdc_interrupts_init._entry, section ".printk_index", align 4
@pdc_mbox_chan_ops = internal constant { %struct.mbox_chan_ops, [40 x i8] } { %struct.mbox_chan_ops { ptr @pdc_send_data, ptr null, ptr @pdc_startup, ptr @pdc_shutdown, ptr @pdc_last_tx_done, ptr null }, [40 x i8] zeroinitializer }, align 32
@pdc_mb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 1464, ptr @.str.37, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Failed to register PDC mailbox controller. Error %d.\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pdc_mb_init\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@pdc_mb_init._entry_ptr = internal global ptr @pdc_mb_init._entry, section ".printk_index", align 4
@pdc_send_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 1251, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s failed with error %d\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pdc_send_data\00", [18 x i8] zeroinitializer }, align 32
@pdc_send_data._entry_ptr = internal global ptr @pdc_send_data._entry, section ".printk_index", align 4
@pdc_build_rxd.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 -124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pdc_build_rxd\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Writing rx descriptor for PDC %u at index %u with length %u. flags %#x\0A\00", [56 x i8] zeroinitializer }, align 32
@pdc_build_txd.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.42, ptr @.str.3, ptr @.str.43, i8 0, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pdc_build_txd\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Writing tx descriptor for PDC %u at index %u with length %u, flags %#x\0A\00", [56 x i8] zeroinitializer }, align 32
@pdc_ring_init.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 0, i8 -5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pdc_ring_init\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" - base DMA addr of tx ring      %pad\00", [58 x i8] zeroinitializer }, align 32
@pdc_ring_init.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.44, ptr @.str.3, ptr @.str.46, i8 0, i8 -4, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c" - base virtual addr of tx ring  %p\00", [60 x i8] zeroinitializer }, align 32
@pdc_ring_init.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.44, ptr @.str.3, ptr @.str.47, i8 0, i8 -4, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" - base DMA addr of rx ring      %pad\00", [58 x i8] zeroinitializer }, align 32
@pdc_ring_init.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.44, ptr @.str.3, ptr @.str.48, i8 0, i8 -4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c" - base virtual addr of rx ring  %p\00", [60 x i8] zeroinitializer }, align 32
@pdc_shutdown.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.49, ptr @.str.3, ptr @.str.50, i8 1, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pdc_shutdown\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Shutdown mailbox channel for PDC %u\00", [60 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pdc%d_stats\00", [20 x i8] zeroinitializer }, align 32
@debugfs_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pdc_debugfs_stats = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @pdc_debugfs_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SPU %u stats:\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PDC requests....................%u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PDC responses...................%u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Tx not done.....................%u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Tx ring full....................%u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Rx ring full....................%u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Tx desc write fail. Ring full...%u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Rx desc write fail. Ring full...%u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Receive overflow................%u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Num frags in rx ring............%u\0A\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pdc_hw = internal constant { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@fa_hw = internal constant { i32, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.62 = private unnamed_addr constant [16 x i8] c"pdc_mbox_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1633, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1637, i32 14 }
@___asan_gen_.68 = private unnamed_addr constant [18 x i8] c"pdc_mbox_of_match\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1474, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"pdcg.0\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1553, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1558, i32 36 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1574, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1604, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1501, i32 33 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1504, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1508, i32 48 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1365, i32 38 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1289, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1290, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1292, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 616, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 632, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 635, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 646, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 650, i32 5 }
@___asan_gen_.162 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 654, i32 5 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1405, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1411, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [18 x i8] c"pdc_mbox_chan_ops\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1418, i32 35 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1462, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1250, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 526, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 554, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1007, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1008, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1009, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1010, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1268, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 497, i32 31 }
@___asan_gen_.246 = private unnamed_addr constant [12 x i8] c"debugfs_dir\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 422, i32 23 }
@___asan_gen_.249 = private unnamed_addr constant [18 x i8] c"pdc_debugfs_stats\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 478, i32 37 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 440, i32 11 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 442, i32 11 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 445, i32 11 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 448, i32 11 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 451, i32 11 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 454, i32 11 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 457, i32 11 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 460, i32 11 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 463, i32 11 }
@___asan_gen_.279 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 466, i32 11 }
@___asan_gen_.282 = private unnamed_addr constant [7 x i8] c"pdc_hw\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1471, i32 18 }
@___asan_gen_.285 = private unnamed_addr constant [6 x i8] c"fa_hw\00", align 1
@___asan_gen_.286 = private constant [37 x i8] c"../drivers/mailbox/bcm-pdc-mailbox.c\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1472, i32 18 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file254, ptr @__UNIQUE_ID_license255, ptr @__exitcall_pdc_mbox_driver_exit, ptr @__initcall__kmod_bcm_pdc_mailbox__251_1641_pdc_mbox_driver_init6, ptr @pdc_dt_read._entry, ptr @pdc_dt_read._entry_ptr, ptr @pdc_interrupts_init._entry, ptr @pdc_interrupts_init._entry_ptr, ptr @pdc_mb_init._entry, ptr @pdc_mb_init._entry_ptr, ptr @pdc_mbox_driver_exit, ptr @pdc_probe._entry, ptr @pdc_probe._entry_ptr, ptr @pdc_receive_one._entry, ptr @pdc_receive_one._entry.28, ptr @pdc_receive_one._entry_ptr, ptr @pdc_receive_one._entry_ptr.31, ptr @pdc_send_data._entry, ptr @pdc_send_data._entry_ptr, ptr @pdc_mbox_driver, ptr @.str, ptr @pdc_mbox_of_match, ptr @pdcg.0, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @pdc_receive_one._rs, ptr @.str.25, ptr @.str.26, ptr @pdc_receive_one._rs.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @pdc_mbox_chan_ops, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @debugfs_dir, ptr @pdc_debugfs_stats, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @pdc_hw, ptr @fa_hw], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_mbox_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_mbox_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdcg.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_dt_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_receive_one._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_receive_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_receive_one._rs.27 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_receive_one._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_interrupts_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_mbox_chan_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_mb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_send_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debugfs_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_debugfs_stats to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_hw to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fa_hw to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_mbox_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pdc_mbox_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pdc_mbox_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @pdc_mbox_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 14608, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup67_crit_edge, label %if.end

entry.cleanup67_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup67

if.end:                                           ; preds = %entry
  %pdev2 = getelementptr inbounds %struct.pdc_state, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %pdev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %pdev2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %2 = load i32, ptr @pdcg.0, align 4
  %conv = trunc i32 %2 to i8
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %call.i, align 8
  %inc = add i32 %2, 1
  store i32 %inc, ptr @pdcg.0, align 4
  %call.i111 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 549755813887) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %cmp.i = icmp eq i32 %call.i111, 0
  br i1 %cmp.i, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %call.i111) #12
  br label %cleanup67

if.end6:                                          ; preds = %if.end
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 549755813887) #9
  %call7 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.6, ptr noundef %dev1, i32 noundef 8192, i32 noundef 8192, i32 noundef 0) #9
  %ring_pool = getelementptr inbounds %struct.pdc_state, ptr %call.i, i32 0, i32 9
  %4 = ptrtoint ptr %ring_pool to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7, ptr %ring_pool, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.end6.cleanup67_crit_edge, label %if.end11

if.end6.cleanup67_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup67

if.end11:                                         ; preds = %if.end6
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node.i, align 8
  %rx_status_len.i = getelementptr inbounds %struct.pdc_state, ptr %call.i, i32 0, i32 5
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.10, ptr noundef %rx_status_len.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i112 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i112, label %do.end.i, label %if.end11.if.end.i_crit_edge

if.end11.if.end.i_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end11.if.end.i_crit_edge
  %call.i.i = tail call ptr @of_find_property(ptr noundef %6, ptr noundef nonnull @.str.14, ptr noundef null) #9
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %use_bcm_hdr.i = getelementptr inbounds %struct.pdc_state, ptr %call.i, i32 0, i32 6
  %frombool.i = zext i1 %tobool.i.i to i8
  %7 = ptrtoint ptr %use_bcm_hdr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool.i, ptr %use_bcm_hdr.i, align 8
  %hw_type4.i = getelementptr inbounds %struct.pdc_state, ptr %call.i, i32 0, i32 40
  %8 = ptrtoint ptr %hw_type4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %hw_type4.i, align 4
  %call5.i = tail call ptr @of_match_device(ptr noundef nonnull @pdc_mbox_of_match, ptr noundef %dev1) #9
  %cmp6.not.i = icmp eq ptr %call5.i, null
  br i1 %cmp6.not.i, label %if.end.i.pdc_dt_read.exit_crit_edge, label %if.then7.i

if.end.i.pdc_dt_read.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc_dt_read.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call5.i, i32 0, i32 3
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = ptrtoint ptr %hw_type4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %hw_type4.i, align 4
  br label %pdc_dt_read.exit

pdc_dt_read.exit:                                 ; preds = %if.then7.i, %if.end.i.pdc_dt_read.exit_crit_edge
  %call16 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %pdc_dt_read.exit.cleanup_ring_pool_crit_edge, label %do.body20

pdc_dt_read.exit.cleanup_ring_pool_crit_edge:     ; preds = %pdc_dt_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup_ring_pool

do.body20:                                        ; preds = %pdc_dt_read.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_probe.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_probe, %if.then25)) #9
          to label %do.end28 [label %if.then25], !srcloc !167

if.then25:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  %end = getelementptr inbounds %struct.resource, ptr %call16, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_probe.__UNIQUE_ID_ddebug249, ptr noundef %dev1, ptr noundef nonnull @.str.8, ptr noundef nonnull %call16, ptr noundef %end) #9
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %do.body20
  %call30 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call16) #9
  %pdc_reg_vbase = getelementptr inbounds %struct.pdc_state, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %pdc_reg_vbase to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call30, ptr %pdc_reg_vbase, align 8
  %cmp.i113 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113, label %if.then33, label %if.end36

if.then33:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %call30 to i32
  br label %cleanup_ring_pool

if.end36:                                         ; preds = %do.end28
  %16 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev2, align 4
  %18 = ptrtoint ptr %rx_status_len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_status_len.i, align 4
  %pdc_resp_hdr_len.i = getelementptr inbounds %struct.pdc_state, ptr %call.i, i32 0, i32 7
  %20 = ptrtoint ptr %pdc_resp_hdr_len.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %pdc_resp_hdr_len.i, align 4
  %21 = ptrtoint ptr %use_bcm_hdr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %use_bcm_hdr.i, align 8, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.end36.pdc_rx_buf_pool_create.exit_crit_edge, label %if.then.i116

if.end36.pdc_rx_buf_pool_create.exit_crit_edge:   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc_rx_buf_pool_create.exit

if.then.i116:                                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i32 %19, 8
  %23 = ptrtoint ptr %pdc_resp_hdr_len.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.i, ptr %pdc_resp_hdr_len.i, align 4
  br label %pdc_rx_buf_pool_create.exit

pdc_rx_buf_pool_create.exit:                      ; preds = %if.then.i116, %if.end36.pdc_rx_buf_pool_create.exit_crit_edge
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %24 = ptrtoint ptr %pdc_resp_hdr_len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pdc_resp_hdr_len.i, align 4
  %call.i117 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.15, ptr noundef %dev2.i, i32 noundef %25, i32 noundef 32, i32 noundef 0) #9
  %rx_buf_pool.i = getelementptr inbounds %struct.pdc_state, ptr %call.i, i32 0, i32 10
  %26 = ptrtoint ptr %rx_buf_pool.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i117, ptr %rx_buf_pool.i, align 8
  %tobool6.not.i.not = icmp eq ptr %call.i117, null
  br i1 %tobool6.not.i.not, label %pdc_rx_buf_pool_create.exit.cleanup_ring_pool_crit_edge, label %if.end40

pdc_rx_buf_pool_create.exit.cleanup_ring_pool_crit_edge: ; preds = %pdc_rx_buf_pool_create.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup_ring_pool

if.end40:                                         ; preds = %pdc_rx_buf_pool_create.exit
  tail call fastcc void @pdc_hw_init(ptr noundef nonnull %call.i)
  %rx_tasklet = getelementptr inbounds %struct.pdc_state, ptr %call.i, i32 0, i32 4
  tail call void @tasklet_setup(ptr noundef %rx_tasklet, ptr noundef nonnull @pdc_tasklet_cb) #9
  %call41 = tail call fastcc i32 @pdc_interrupts_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.cleanup_buf_pool_crit_edge

if.end40.cleanup_buf_pool_crit_edge:              ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup_buf_pool

if.end44:                                         ; preds = %if.end40
  %call45 = tail call fastcc i32 @pdc_mb_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end44.cleanup_buf_pool_crit_edge

if.end44.cleanup_buf_pool_crit_edge:              ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup_buf_pool

if.end48:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pdc_setup_debugfs(ptr noundef nonnull %call.i)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_probe.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_probe, %if.then61)) #9
          to label %cleanup67 [label %if.then61], !srcloc !167

if.then61:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_probe.__UNIQUE_ID_ddebug250, ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  br label %cleanup67

cleanup_buf_pool:                                 ; preds = %if.end44.cleanup_buf_pool_crit_edge, %if.end40.cleanup_buf_pool_crit_edge
  %err.0 = phi i32 [ %call41, %if.end40.cleanup_buf_pool_crit_edge ], [ %call45, %if.end44.cleanup_buf_pool_crit_edge ]
  tail call void @tasklet_kill(ptr noundef %rx_tasklet) #9
  %27 = ptrtoint ptr %rx_buf_pool.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_buf_pool.i, align 8
  tail call void @dma_pool_destroy(ptr noundef %28) #9
  br label %cleanup_ring_pool

cleanup_ring_pool:                                ; preds = %cleanup_buf_pool, %pdc_rx_buf_pool_create.exit.cleanup_ring_pool_crit_edge, %if.then33, %pdc_dt_read.exit.cleanup_ring_pool_crit_edge
  %err.1 = phi i32 [ %15, %if.then33 ], [ -12, %pdc_rx_buf_pool_create.exit.cleanup_ring_pool_crit_edge ], [ %err.0, %cleanup_buf_pool ], [ -19, %pdc_dt_read.exit.cleanup_ring_pool_crit_edge ]
  %29 = ptrtoint ptr %ring_pool to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ring_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %30) #9
  br label %cleanup67

cleanup67:                                        ; preds = %cleanup_ring_pool, %if.then61, %if.end48, %if.end6.cleanup67_crit_edge, %do.end, %entry.cleanup67_crit_edge
  %retval.0 = phi i32 [ 0, %if.then61 ], [ %call.i111, %do.end ], [ %err.1, %cleanup_ring_pool ], [ -12, %entry.cleanup67_crit_edge ], [ -12, %if.end6.cleanup67_crit_edge ], [ 0, %if.end48 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load ptr, ptr @debugfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %2) #9
  store ptr null, ptr @debugfs_dir, align 4
  %rx_tasklet = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 4
  tail call void @tasklet_kill(ptr noundef %rx_tasklet) #9
  %regs.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %dmaregs.i = getelementptr inbounds %struct.pdc_regs, ptr %4, i32 0, i32 41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmaregs.i, i32 527360) #9, !srcloc !170
  %rx_status_len.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %rx_status_len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_status_len.i, align 4
  %shl.i = shl i32 %6, 1
  %add.i = add i32 %shl.i, 790016
  %dmarcv.i = getelementptr inbounds %struct.pdc_regs, ptr %4, i32 0, i32 41, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 @llvm.bswap.i32(i32 %add.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmarcv.i, i32 %7) #9, !srcloc !170
  %rx_buf_pool = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %rx_buf_pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_buf_pool, align 8
  tail call void @dma_pool_destroy(ptr noundef %9) #9
  %ring_pool = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %ring_pool to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ring_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %11) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pdc_hw_init(ptr noundef %pdcs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_hw_init.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_hw_init, %if.then)) #9
          to label %do.body5 [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %pdcs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pdcs, align 8
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_hw_init.__UNIQUE_ID_ddebug245, ptr noundef %dev2, ptr noundef nonnull @.str.17, i32 noundef %conv) #9
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_hw_init.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_hw_init, %if.then17)) #9
          to label %do.body21 [label %if.then17], !srcloc !167

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_hw_init.__UNIQUE_ID_ddebug246, ptr noundef %dev2, ptr noundef nonnull @.str.18, ptr noundef %pdcs) #9
  br label %do.body21

do.body21:                                        ; preds = %if.then17, %do.body5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_hw_init.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_hw_init, %if.then33)) #9
          to label %do.end36 [label %if.then33], !srcloc !167

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  %pdc_reg_vbase = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 8
  %4 = ptrtoint ptr %pdc_reg_vbase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdc_reg_vbase, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_hw_init.__UNIQUE_ID_ddebug247, ptr noundef %dev2, ptr noundef nonnull @.str.19, ptr noundef %5) #9
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %do.body21
  %pdc_reg_vbase37 = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 8
  %6 = ptrtoint ptr %pdc_reg_vbase37 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdc_reg_vbase37, align 8
  %regs = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 13
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 512
  %txregs_64 = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 14
  %9 = ptrtoint ptr %txregs_64 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %txregs_64, align 8
  %add.ptr41 = getelementptr i8, ptr %7, i32 544
  %rxregs_64 = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 15
  %10 = ptrtoint ptr %rxregs_64 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr41, ptr %rxregs_64, align 4
  %ntxd = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 18
  %11 = ptrtoint ptr %ntxd to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 512, ptr %ntxd, align 8
  %nrxd = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 19
  %12 = ptrtoint ptr %nrxd to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 512, ptr %nrxd, align 4
  %ntxpost = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 21
  %13 = ptrtoint ptr %ntxpost to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 511, ptr %ntxpost, align 4
  %nrxpost = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 20
  %14 = ptrtoint ptr %nrxpost to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 511, ptr %nrxpost, align 8
  %intmask = getelementptr inbounds %struct.pdc_regs, ptr %7, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %intmask, i32 0) #9, !srcloc !170
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %dmaregs = getelementptr inbounds %struct.pdc_regs, ptr %16, i32 0, i32 41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmaregs, i32 527360) #9, !srcloc !170
  %rx_status_len = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 5
  %17 = ptrtoint ptr %rx_status_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_status_len, align 4
  %shl = shl i32 %18, 1
  %add = add i32 %shl, 790016
  %dmarcv = getelementptr inbounds %struct.pdc_regs, ptr %16, i32 0, i32 41, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %add) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmarcv, i32 %19) #9, !srcloc !170
  %ptr = getelementptr inbounds %struct.pdc_regs, ptr %16, i32 0, i32 41, i32 0, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ptr, i32 0) #9, !srcloc !170
  %ptr49 = getelementptr inbounds %struct.pdc_regs, ptr %16, i32 0, i32 41, i32 0, i32 2, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ptr49, i32 0) #9, !srcloc !170
  %pdc_resp_hdr_len = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 7
  %20 = ptrtoint ptr %pdc_resp_hdr_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pdc_resp_hdr_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %21)
  %cmp = icmp eq i32 %21, 17
  br i1 %cmp, label %if.then51, label %do.end36.if.end54_crit_edge

do.end36.if.end54_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then51:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %pdc_reg_vbase37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdc_reg_vbase37, align 8
  %add.ptr53 = getelementptr i8, ptr %23, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 8) #9, !srcloc !170
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %do.end36.if.end54_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc_tasklet_cb(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -100
  %rxregs_64.i = getelementptr i8, ptr %t, i32 80
  %0 = ptrtoint ptr %rxregs_64.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxregs_64.i, align 4
  %status0.i = getelementptr inbounds %struct.dma64_regs, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status0.i) #9, !srcloc !171
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %and.i = lshr i32 %3, 4
  %div1.i = and i32 %and.i, 511
  %last_rx_curr.i = getelementptr i8, ptr %t, i32 2176
  %4 = ptrtoint ptr %last_rx_curr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div1.i, ptr %last_rx_curr.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %call1.i = tail call fastcc i32 @pdc_receive_one(ptr noundef %add.ptr) #9
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %pdc_receive.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

pdc_receive.exit:                                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdc_reg_vbase = getelementptr i8, ptr %t, i32 36
  %5 = ptrtoint ptr %pdc_reg_vbase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdc_reg_vbase, align 8
  %add.ptr1 = getelementptr i8, ptr %6, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 256) #9, !srcloc !170
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pdc_interrupts_init(ptr noundef %pdcs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %pdc_reg_vbase = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 8
  %4 = ptrtoint ptr %pdc_reg_vbase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdc_reg_vbase, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 256) #9, !srcloc !170
  %hw_type = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 40
  %6 = ptrtoint ptr %hw_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %8 = ptrtoint ptr %pdc_reg_vbase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdc_reg_vbase, align 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr5 = getelementptr i8, ptr %9, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 270991361) #9, !srcloc !170
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr7 = getelementptr i8, ptr %9, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 270991361) #9, !srcloc !170
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = tail call i32 @irq_of_parse_and_map(ptr noundef %3, i32 noundef 0) #9
  %pdc_irq = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 3
  %10 = ptrtoint ptr %pdc_irq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call, ptr %pdc_irq, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_interrupts_init.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_interrupts_init, %if.then11)) #9
          to label %do.end [label %if.then11], !srcloc !167

if.then11:                                        ; preds = %if.end
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then11.dev_name.exit_crit_edge

if.then11.dev_name.exit_crit_edge:                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev2, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then11.dev_name.exit_crit_edge
  %retval.0.i45 = phi ptr [ %14, %if.end.i ], [ %12, %if.then11.dev_name.exit_crit_edge ]
  %15 = ptrtoint ptr %pdc_irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pdc_irq, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_interrupts_init.__UNIQUE_ID_ddebug248, ptr noundef %dev2, ptr noundef nonnull @.str.33, ptr noundef %retval.0.i45, i32 noundef %16, ptr noundef %pdcs) #9
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %if.end
  %17 = ptrtoint ptr %pdc_irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pdc_irq, align 8
  %init_name.i46 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %init_name.i46 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i46, align 8
  %tobool.not.i47 = icmp eq ptr %20, null
  br i1 %tobool.not.i47, label %if.end.i48, label %do.end.dev_name.exit50_crit_edge

do.end.dev_name.exit50_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit50

if.end.i48:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev2, align 4
  br label %dev_name.exit50

dev_name.exit50:                                  ; preds = %if.end.i48, %do.end.dev_name.exit50_crit_edge
  %retval.0.i49 = phi ptr [ %22, %if.end.i48 ], [ %20, %do.end.dev_name.exit50_crit_edge ]
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev2, i32 noundef %18, ptr noundef nonnull @pdc_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i49, ptr noundef %dev2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %dev_name.exit50.cleanup_crit_edge, label %do.end22

dev_name.exit50.cleanup_crit_edge:                ; preds = %dev_name.exit50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end22:                                         ; preds = %dev_name.exit50
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %pdc_irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pdc_irq, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.34, i32 noundef %24, i32 noundef %call.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %dev_name.exit50.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pdc_mb_init(ptr noundef %pdcs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %mbc2 = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 2
  %2 = ptrtoint ptr %mbc2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %mbc2, align 8
  %ops = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @pdc_mbox_chan_ops, ptr %ops, align 4
  %num_chans = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %num_chans to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %num_chans, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 208, i32 noundef 3520) #9
  %chans = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %chans to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5.i.i, ptr %chans, align 8
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %txdone_irq = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %txdone_irq to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %txdone_irq, align 8
  %txdone_poll = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 2, i32 5
  %7 = ptrtoint ptr %txdone_poll to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %txdone_poll, align 1
  %txpoll_period = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 2, i32 6
  %8 = ptrtoint ptr %txpoll_period to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %txpoll_period, align 4
  %9 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp35 = icmp sgt i32 %10, 0
  br i1 %cmp35, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %chan_index.036 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %11 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chans, align 8
  %con_priv = getelementptr %struct.mbox_chan, ptr %12, i32 %chan_index.036, i32 9
  %13 = ptrtoint ptr %con_priv to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pdcs, ptr %con_priv, align 4
  %inc = add nuw nsw i32 %chan_index.036, 1
  %14 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_chans, align 4
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %call8 = tail call i32 @devm_mbox_controller_register(ptr noundef %dev1, ptr noundef %mbc2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.end.cleanup_crit_edge, label %do.end

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev1, ptr noundef nonnull @.str.35, i32 noundef %call8) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pdc_setup_debugfs(ptr noundef %pdcs) unnamed_addr #2 align 64 {
entry:
  %spu_stats_name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %spu_stats_name) #9
  %0 = call ptr @memset(ptr %spu_stats_name, i32 255, i32 16)
  %call = tail call zeroext i1 @debugfs_initialized() #9
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %pdcs to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pdcs, align 8
  %conv = zext i8 %2 to i32
  %call1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %spu_stats_name, i32 noundef 16, ptr noundef nonnull @.str.51, i32 noundef %conv)
  %3 = load ptr, ptr @debugfs_dir, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.7, ptr noundef null) #9
  store ptr %call3, ptr @debugfs_dir, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %4 = load ptr, ptr @debugfs_dir, align 4
  %call6 = call ptr @debugfs_create_file(ptr noundef nonnull %spu_stats_name, i16 noundef zeroext 256, ptr noundef %4, ptr noundef %pdcs, ptr noundef nonnull @pdc_debugfs_stats) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %spu_stats_name) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pdc_receive_one(ptr noundef %pdcs) unnamed_addr #2 align 64 {
entry:
  %mssg = alloca %struct.brcm_message, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mssg) #9
  %2 = getelementptr inbounds %struct.brcm_message, ptr %mssg, i32 0, i32 2
  %chans = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 2, i32 2
  %3 = getelementptr inbounds i8, ptr %mssg, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 20)
  %5 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chans, align 8
  %7 = ptrtoint ptr %mssg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %mssg, align 4
  %last_rx_curr = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 28
  %8 = ptrtoint ptr %last_rx_curr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_rx_curr, align 4
  %rxin = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 26
  %10 = ptrtoint ptr %rxin to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rxin, align 4
  %sub = sub i32 %9, %11
  %nrxpost = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 20
  %12 = ptrtoint ptr %nrxpost to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nrxpost, align 8
  %and = and i32 %sub, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rxin_numd = getelementptr %struct.pdc_state, ptr %pdcs, i32 0, i32 30, i32 %11, i32 2
  %14 = ptrtoint ptr %rxin_numd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rxin_numd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %15)
  %cmp6 = icmp ult i32 %and, %15
  br i1 %cmp6, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %txin = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 22
  %16 = ptrtoint ptr %txin to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %txin, align 8
  %arrayidx7 = getelementptr %struct.pdc_state, ptr %pdcs, i32 0, i32 25, i32 %17
  %18 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp8 = icmp eq i32 %19, 0
  br i1 %cmp8, label %do.end, label %if.end.if.end22_crit_edge, !prof !173

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 609, i32 noundef 9, ptr noundef null) #9
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.end.if.end22_crit_edge
  %20 = ptrtoint ptr %txin to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %txin, align 8
  %arrayidx30 = getelementptr %struct.pdc_state, ptr %pdcs, i32 0, i32 31, i32 %21
  %22 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx30, align 4
  %call = tail call i32 @sg_nents(ptr noundef %23) #9
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev1, ptr noundef %23, i32 noundef %call, i32 noundef 1, i32 noundef 0) #9
  %24 = ptrtoint ptr %txin to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %txin, align 8
  %add = add i32 %25, %19
  %ntxpost = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 21
  %26 = ptrtoint ptr %ntxpost to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ntxpost, align 4
  %and35 = and i32 %add, %27
  store i32 %and35, ptr %txin, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_receive_one.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_receive_one, %if.then47)) #9
          to label %do.end50 [label %if.then47], !srcloc !167

if.then47:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %pdcs to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pdcs, align 8
  %conv = zext i8 %29 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_receive_one.__UNIQUE_ID_ddebug236, ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %conv, i32 noundef %19) #9
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %if.end22
  %30 = ptrtoint ptr %rxin to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rxin, align 4
  %arrayidx53 = getelementptr %struct.pdc_state, ptr %pdcs, i32 0, i32 30, i32 %31
  %rxin_numd54 = getelementptr %struct.pdc_state, ptr %pdcs, i32 0, i32 30, i32 %31, i32 2
  %32 = ptrtoint ptr %rxin_numd54 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rxin_numd54, align 4
  %34 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx53, align 4
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %2, align 4
  store ptr null, ptr %arrayidx53, align 4
  %resp_hdr56 = getelementptr %struct.pdc_state, ptr %pdcs, i32 0, i32 30, i32 %31, i32 3
  %37 = ptrtoint ptr %resp_hdr56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %resp_hdr56, align 4
  %resp_hdr_daddr57 = getelementptr %struct.pdc_state, ptr %pdcs, i32 0, i32 30, i32 %31, i32 4
  %39 = ptrtoint ptr %resp_hdr_daddr57 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %resp_hdr_daddr57, align 4
  %dst_sg = getelementptr %struct.pdc_state, ptr %pdcs, i32 0, i32 30, i32 %31, i32 1
  %41 = ptrtoint ptr %dst_sg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dst_sg, align 4
  %call59 = tail call i32 @sg_nents(ptr noundef %42) #9
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev1, ptr noundef %42, i32 noundef %call59, i32 noundef 2, i32 noundef 0) #9
  %43 = ptrtoint ptr %rxin to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rxin, align 4
  %add61 = add i32 %44, %33
  %45 = ptrtoint ptr %nrxpost to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nrxpost, align 8
  %and63 = and i32 %add61, %46
  store i32 %and63, ptr %rxin, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_receive_one.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_receive_one, %if.then77)) #9
          to label %do.body83 [label %if.then77], !srcloc !167

if.then77:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %pdcs to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pdcs, align 8
  %conv79 = zext i8 %48 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_receive_one.__UNIQUE_ID_ddebug237, ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %conv79, i32 noundef %33) #9
  br label %do.body83

do.body83:                                        ; preds = %if.then77, %do.end50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_receive_one.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_receive_one, %if.then95)) #9
          to label %do.end103 [label %if.then95], !srcloc !167

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %pdcs to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pdcs, align 8
  %conv97 = zext i8 %50 to i32
  %51 = ptrtoint ptr %txin to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %txin, align 8
  %txout = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 24
  %53 = ptrtoint ptr %txout to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %txout, align 8
  %55 = ptrtoint ptr %rxin to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rxin, align 4
  %rxout = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 29
  %57 = ptrtoint ptr %rxout to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rxout, align 8
  %59 = ptrtoint ptr %last_rx_curr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %last_rx_curr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_receive_one.__UNIQUE_ID_ddebug238, ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %conv97, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60) #9
  br label %do.end103

do.end103:                                        ; preds = %if.then95, %do.body83
  %pdc_resp_hdr_len = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 7
  %61 = ptrtoint ptr %pdc_resp_hdr_len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pdc_resp_hdr_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %62)
  %cmp104 = icmp eq i32 %62, 32
  br i1 %cmp104, label %if.then106, label %do.end103.if.end161_crit_edge

do.end103.if.end161_crit_edge:                    ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end161

if.then106:                                       ; preds = %do.end103
  %63 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %38, align 4
  %and107 = and i32 %64, 65535
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_receive_one.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_receive_one, %if.then120)) #9
          to label %do.end123 [label %if.then120], !srcloc !167

if.then120:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_receive_one.__UNIQUE_ID_ddebug239, ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %and107) #9
  br label %do.end123

do.end123:                                        ; preds = %if.then120, %if.then106
  %and124 = and i32 %64, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool126.not = icmp eq i32 %and107, 0
  %not.tobool125.not = xor i1 %tobool125.not, true
  %spec.select = select i1 %not.tobool125.not, i1 true, i1 %tobool126.not
  br i1 %spec.select, label %if.then135, label %do.end123.if.end161_crit_edge, !prof !173

do.end123.if.end161_crit_edge:                    ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end161

if.then135:                                       ; preds = %do.end123
  br i1 %tobool125.not, label %do.body149, label %do.body139

do.body139:                                       ; preds = %if.then135
  %call140 = tail call i32 @___ratelimit(ptr noundef nonnull @pdc_receive_one._rs, ptr noundef nonnull @.str.20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %do.body139.do.end148_crit_edge, label %do.end145

do.body139.do.end148_crit_edge:                   ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end148

do.end145:                                        ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #12
  br label %do.end148

do.end148:                                        ; preds = %do.end145, %do.body139.do.end148_crit_edge
  %rx_oflow = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 39
  %65 = ptrtoint ptr %rx_oflow to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx_oflow, align 8
  %inc = add i32 %66, 1
  store i32 %inc, ptr %rx_oflow, align 8
  br label %cleanup

do.body149:                                       ; preds = %if.then135
  %call150 = tail call i32 @___ratelimit(ptr noundef nonnull @pdc_receive_one._rs.27, ptr noundef nonnull @.str.20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %do.body149.cleanup_crit_edge, label %do.end155

do.body149.cleanup_crit_edge:                     ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end155:                                        ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.29) #12
  br label %cleanup

if.end161:                                        ; preds = %do.end123.if.end161_crit_edge, %do.end103.if.end161_crit_edge
  %rx_buf_pool = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 10
  %67 = ptrtoint ptr %rx_buf_pool to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rx_buf_pool, align 8
  tail call void @dma_pool_free(ptr noundef %68, ptr noundef %38, i32 noundef %40) #9
  call void @mbox_chan_received_data(ptr noundef %6, ptr noundef nonnull %mssg) #9
  %pdc_replies = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 33
  %69 = ptrtoint ptr %pdc_replies to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pdc_replies, align 8
  %inc162 = add i32 %70, 1
  store i32 %inc162, ptr %pdc_replies, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end161, %do.end155, %do.body149.cleanup_crit_edge, %do.end148, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end161 ], [ -11, %lor.lhs.false.cleanup_crit_edge ], [ -11, %entry.cleanup_crit_edge ], [ -5, %do.body149.cleanup_crit_edge ], [ -5, %do.end155 ], [ -5, %do.end148 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mssg) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_received_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdc_reg_vbase = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pdc_reg_vbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdc_reg_vbase, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !173

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %pdc_reg_vbase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdc_reg_vbase, align 8
  %add.ptr4 = getelementptr i8, ptr %6, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #9, !srcloc !170
  %7 = ptrtoint ptr %pdc_reg_vbase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdc_reg_vbase, align 8
  %add.ptr6 = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %4) #9, !srcloc !170
  %state.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 4, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %rx_tasklet = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 4
  tail call void @__tasklet_schedule(ptr noundef %rx_tasklet) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mbox_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_send_data(ptr nocapture noundef readonly %chan, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %pdev = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !174

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds %struct.brcm_message, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call = tail call i32 @sg_nents(ptr noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end.if.end22_crit_edge, label %if.then10, !prof !173

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then10:                                        ; preds = %if.end
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %call12 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev1, ptr noundef %10, i32 noundef %call, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then10.cleanup_crit_edge, label %if.then10.if.end22_crit_edge, !prof !173

if.then10.if.end22_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.then10.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %dst = getelementptr inbounds %struct.brcm_message, ptr %data, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dst, align 4
  %call23 = tail call i32 @sg_nents(ptr noundef %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.if.end44_crit_edge, label %if.then31, !prof !173

if.end22.if.end44_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then31:                                        ; preds = %if.end22
  %13 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dst, align 4
  %call33 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev1, ptr noundef %14, i32 noundef %call23, i32 noundef 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then41, label %if.then31.if.end44_crit_edge, !prof !173

if.then31.if.end44_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then41:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %6, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev1, ptr noundef %16, i32 noundef %call, i32 noundef 1, i32 noundef 0) #9
  br label %cleanup

if.end44:                                         ; preds = %if.then31.if.end44_crit_edge, %if.end22.if.end44_crit_edge
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %6, align 4
  %tobool.not6.i = icmp eq ptr %18, null
  br i1 %tobool.not6.i, label %if.end44.pdc_desc_count.exit_crit_edge, label %if.end44.while.body.i_crit_edge

if.end44.while.body.i_crit_edge:                  ; preds = %if.end44
  br label %while.body.i

if.end44.pdc_desc_count.exit_crit_edge:           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc_desc_count.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end44.while.body.i_crit_edge
  %cnt.08.i = phi i32 [ %add1.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end44.while.body.i_crit_edge ]
  %sg.addr.07.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %18, %if.end44.while.body.i_crit_edge ]
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.07.i, i32 0, i32 2
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length.i, align 4
  %div5.i = lshr i32 %20, 14
  %add.i = add i32 %cnt.08.i, 1
  %add1.i = add i32 %add.i, %div5.i
  %call.i = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.07.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.i.pdc_desc_count.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.pdc_desc_count.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc_desc_count.exit

pdc_desc_count.exit:                              ; preds = %while.body.i.pdc_desc_count.exit_crit_edge, %if.end44.pdc_desc_count.exit_crit_edge
  %cnt.0.lcssa.i = phi i32 [ 0, %if.end44.pdc_desc_count.exit_crit_edge ], [ %add1.i, %while.body.i.pdc_desc_count.exit_crit_edge ]
  %21 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dst, align 4
  %tobool.not6.i114 = icmp eq ptr %22, null
  br i1 %tobool.not6.i114, label %pdc_desc_count.exit.pdc_desc_count.exit125_crit_edge, label %pdc_desc_count.exit.while.body.i123_crit_edge

pdc_desc_count.exit.while.body.i123_crit_edge:    ; preds = %pdc_desc_count.exit
  br label %while.body.i123

pdc_desc_count.exit.pdc_desc_count.exit125_crit_edge: ; preds = %pdc_desc_count.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %pdc_desc_count.exit125

while.body.i123:                                  ; preds = %while.body.i123.while.body.i123_crit_edge, %pdc_desc_count.exit.while.body.i123_crit_edge
  %cnt.08.i115 = phi i32 [ %add1.i120, %while.body.i123.while.body.i123_crit_edge ], [ 0, %pdc_desc_count.exit.while.body.i123_crit_edge ]
  %sg.addr.07.i116 = phi ptr [ %call.i121, %while.body.i123.while.body.i123_crit_edge ], [ %22, %pdc_desc_count.exit.while.body.i123_crit_edge ]
  %length.i117 = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.07.i116, i32 0, i32 2
  %23 = ptrtoint ptr %length.i117 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length.i117, align 4
  %div5.i118 = lshr i32 %24, 14
  %add.i119 = add i32 %cnt.08.i115, 1
  %add1.i120 = add i32 %add.i119, %div5.i118
  %call.i121 = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.07.i116) #9
  %tobool.not.i122 = icmp eq ptr %call.i121, null
  br i1 %tobool.not.i122, label %pdc_desc_count.exit125.loopexit, label %while.body.i123.while.body.i123_crit_edge

while.body.i123.while.body.i123_crit_edge:        ; preds = %while.body.i123
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i123

pdc_desc_count.exit125.loopexit:                  ; preds = %while.body.i123
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo = add i32 %add1.i120, 1
  br label %pdc_desc_count.exit125

pdc_desc_count.exit125:                           ; preds = %pdc_desc_count.exit125.loopexit, %pdc_desc_count.exit.pdc_desc_count.exit125_crit_edge
  %cnt.0.lcssa.i124 = phi i32 [ 1, %pdc_desc_count.exit.pdc_desc_count.exit125_crit_edge ], [ %phi.bo, %pdc_desc_count.exit125.loopexit ]
  %nrxpost.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 20
  %25 = ptrtoint ptr %nrxpost.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nrxpost.i, align 8
  %rxout.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 29
  %27 = ptrtoint ptr %rxout.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rxout.i, align 8
  %rxin.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 26
  %29 = ptrtoint ptr %rxin.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rxin.i, align 4
  %31 = xor i32 %28, -1
  %sub.not.i = add i32 %30, %31
  %sub2.i = and i32 %sub.not.i, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %sub2.i, i32 %cnt.0.lcssa.i124)
  %cmp.i = icmp ult i32 %sub2.i, %cnt.0.lcssa.i124
  br i1 %cmp.i, label %if.then.i, label %if.then13.critedge.i, !prof !173

if.then.i:                                        ; preds = %pdc_desc_count.exit125
  call void @__sanitizer_cov_trace_pc() #11
  %rx_ring_full.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 36
  %32 = ptrtoint ptr %rx_ring_full.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_ring_full.i, align 4
  %inc.i = add i32 %33, 1
  store i32 %inc.i, ptr %rx_ring_full.i, align 4
  br label %cleanup

if.then13.critedge.i:                             ; preds = %pdc_desc_count.exit125
  %ntxpost.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 21
  %34 = ptrtoint ptr %ntxpost.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ntxpost.i, align 4
  %txout.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 24
  %36 = ptrtoint ptr %txout.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %txout.i, align 8
  %txin.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 22
  %38 = ptrtoint ptr %txin.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %txin.i, align 8
  %40 = xor i32 %37, -1
  %sub14.not.i = add i32 %39, %40
  %sub17.i = and i32 %sub14.not.i, %35
  call void @__sanitizer_cov_trace_cmp4(i32 %sub17.i, i32 %cnt.0.lcssa.i)
  %cmp18.i = icmp ult i32 %sub17.i, %cnt.0.lcssa.i
  br i1 %cmp18.i, label %if.then25.i, label %if.end57, !prof !173

if.then25.i:                                      ; preds = %if.then13.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  %tx_ring_full.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 35
  %41 = ptrtoint ptr %tx_ring_full.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_ring_full.i, align 8
  %inc26.i = add i32 %42, 1
  store i32 %inc26.i, ptr %tx_ring_full.i, align 8
  br label %cleanup

if.end57:                                         ; preds = %if.then13.critedge.i
  %43 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dst, align 4
  %ctx = getelementptr inbounds %struct.brcm_message, ptr %data, i32 0, i32 2
  %45 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctx, align 4
  %call59 = tail call fastcc i32 @pdc_rx_list_init(ptr noundef %1, ptr noundef %44, ptr noundef %46)
  %47 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dst, align 4
  %call61 = tail call fastcc i32 @pdc_rx_list_sg_add(ptr noundef %1, ptr noundef %48)
  %or = or i32 %call61, %call59
  %49 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %6, align 4
  %call63 = tail call fastcc i32 @pdc_tx_list_sg_add(ptr noundef %1, ptr noundef %50)
  %or64 = or i32 %or, %call63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !175
  tail call void @arm_heavy_mb() #9
  %51 = ptrtoint ptr %rxout.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rxout.i, align 8
  %shl.i = shl i32 %52, 4
  %rxregs_64.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 15
  %53 = ptrtoint ptr %rxregs_64.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rxregs_64.i, align 4
  %ptr.i = getelementptr inbounds %struct.dma64_regs, ptr %54, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %55 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ptr.i, i32 %55) #9, !srcloc !170
  %56 = ptrtoint ptr %txout.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %txout.i, align 8
  %shl1.i = shl i32 %57, 4
  %txregs_64.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 14
  %58 = ptrtoint ptr %txregs_64.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %txregs_64.i, align 8
  %ptr2.i = getelementptr inbounds %struct.dma64_regs, ptr %59, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %60 = tail call i32 @llvm.bswap.i32(i32 %shl1.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ptr2.i, i32 %60) #9, !srcloc !170
  %pdc_requests.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 32
  %61 = ptrtoint ptr %pdc_requests.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pdc_requests.i, align 4
  %inc.i128 = add i32 %62, 1
  store i32 %inc.i128, ptr %pdc_requests.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or64)
  %tobool67.not = icmp eq i32 %or64, 0
  br i1 %tobool67.not, label %if.end57.cleanup_crit_edge, label %do.end, !prof !174

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pdev, align 4
  %dev76 = getelementptr inbounds %struct.platform_device, ptr %64, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev76, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef %or64) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end57.cleanup_crit_edge, %if.then25.i, %if.then.i, %if.then41, %if.then10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then41 ], [ -524, %entry.cleanup_crit_edge ], [ -5, %if.then10.cleanup_crit_edge ], [ %or64, %do.end ], [ 0, %if.end57.cleanup_crit_edge ], [ -28, %if.then25.i ], [ -28, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_startup(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %call = tail call fastcc i32 @pdc_ring_init(ptr noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc_shutdown(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_shutdown.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_shutdown, %if.then4)) #9
          to label %do.end [label %if.then4], !srcloc !167

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 8
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_shutdown.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %vbase.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 11, i32 1
  %6 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vbase.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.end.if.end.i_crit_edge, label %if.then.i

do.end.if.end.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %tx_ring_alloc.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 11
  %ring_pool.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %ring_pool.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring_pool.i, align 4
  %10 = ptrtoint ptr %tx_ring_alloc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_ring_alloc.i, align 4
  tail call void @dma_pool_free(ptr noundef %9, ptr noundef nonnull %7, i32 noundef %11) #9
  %12 = ptrtoint ptr %vbase.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %vbase.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end.if.end.i_crit_edge
  %vbase6.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 12, i32 1
  %13 = ptrtoint ptr %vbase6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vbase6.i, align 4
  %tobool7.not.i = icmp eq ptr %14, null
  br i1 %tobool7.not.i, label %if.end.i.cleanup_crit_edge, label %if.then8.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_ring_alloc.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 12
  %ring_pool9.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %ring_pool9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring_pool9.i, align 4
  %17 = ptrtoint ptr %rx_ring_alloc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_ring_alloc.i, align 8
  tail call void @dma_pool_free(ptr noundef %16, ptr noundef nonnull %14, i32 noundef %18) #9
  %19 = ptrtoint ptr %vbase6.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %vbase6.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then8.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @pdc_last_tx_done(ptr nocapture noundef readonly %chan) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %nrxpost.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %nrxpost.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nrxpost.i, align 8
  %rxout.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 29
  %4 = ptrtoint ptr %rxout.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rxout.i, align 8
  %rxin.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %rxin.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rxin.i, align 4
  %8 = xor i32 %5, -1
  %sub.not.i = add i32 %7, %8
  %sub2.i = and i32 %sub.not.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub2.i)
  %cmp.i = icmp ult i32 %sub2.i, 15
  br i1 %cmp.i, label %if.then.i, label %if.then13.critedge.i, !prof !173

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rx_ring_full.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 36
  %9 = ptrtoint ptr %rx_ring_full.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_ring_full.i, align 4
  %inc.i = add i32 %10, 1
  store i32 %inc.i, ptr %rx_ring_full.i, align 4
  br label %if.then

if.then13.critedge.i:                             ; preds = %entry
  %ntxpost.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 21
  %11 = ptrtoint ptr %ntxpost.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ntxpost.i, align 4
  %txout.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 24
  %13 = ptrtoint ptr %txout.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %txout.i, align 8
  %txin.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 22
  %15 = ptrtoint ptr %txin.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %txin.i, align 8
  %17 = xor i32 %14, -1
  %sub14.not.i = add i32 %16, %17
  %sub17.i = and i32 %sub14.not.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub17.i)
  %cmp18.i = icmp ult i32 %sub17.i, 15
  br i1 %cmp18.i, label %if.then25.i, label %if.then13.critedge.i.if.end_crit_edge, !prof !173

if.then13.critedge.i.if.end_crit_edge:            ; preds = %if.then13.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then25.i:                                      ; preds = %if.then13.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  %tx_ring_full.i = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 35
  %18 = ptrtoint ptr %tx_ring_full.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_ring_full.i, align 8
  %inc26.i = add i32 %19, 1
  store i32 %inc26.i, ptr %tx_ring_full.i, align 8
  br label %if.then

if.then:                                          ; preds = %if.then25.i, %if.then.i
  %last_tx_not_done = getelementptr inbounds %struct.pdc_state, ptr %1, i32 0, i32 34
  %20 = ptrtoint ptr %last_tx_not_done to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %last_tx_not_done, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %last_tx_not_done, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then13.critedge.i.if.end_crit_edge
  %full.1.off0.i5 = phi i1 [ false, %if.then ], [ true, %if.then13.critedge.i.if.end_crit_edge ]
  ret i1 %full.1.off0.i5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pdc_rx_list_init(ptr nocapture noundef %pdcs, ptr noundef %dst_sg, ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  %daddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %daddr) #9
  %0 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %daddr, align 4, !annotation !176
  %nrxpost = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 20
  %1 = ptrtoint ptr %nrxpost to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nrxpost, align 8
  %rxout = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 29
  %3 = ptrtoint ptr %rxout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rxout, align 8
  %rxin = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 26
  %5 = ptrtoint ptr %rxin to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rxin, align 4
  %7 = xor i32 %4, -1
  %sub.not = add i32 %6, %7
  %sub2 = and i32 %sub.not, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2)
  %cmp = icmp eq i32 %sub2, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !173

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rxnobuf = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 38
  %8 = ptrtoint ptr %rxnobuf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rxnobuf, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %rxnobuf, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_buf_pool = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 10
  %10 = ptrtoint ptr %rx_buf_pool to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_buf_pool, align 8
  %call.i = call ptr @dma_pool_alloc(ptr noundef %11, i32 noundef 2848, ptr noundef nonnull %daddr) #9
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end14, !prof !173

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %12 = ptrtoint ptr %rxout to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rxout, align 8
  %rx_msg_start = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 27
  %14 = ptrtoint ptr %rx_msg_start to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %rx_msg_start, align 8
  %txout = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 24
  %15 = ptrtoint ptr %txout to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %txout, align 8
  %tx_msg_start = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 23
  %17 = ptrtoint ptr %tx_msg_start to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tx_msg_start, align 4
  %rxin_numd = getelementptr %struct.pdc_state, ptr %pdcs, i32 0, i32 30, i32 %13, i32 2
  %18 = ptrtoint ptr %rxin_numd to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %rxin_numd, align 4
  %19 = load i32, ptr %rxout, align 8
  %nrxd = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 19
  %20 = ptrtoint ptr %nrxd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nrxd, align 4
  %sub19 = add i32 %21, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %sub19)
  %cmp20 = icmp eq i32 %19, %sub19
  br i1 %cmp20, label %if.then27, label %if.end14.if.end28_crit_edge, !prof !173

if.end14.if.end28_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then27:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end14.if.end28_crit_edge
  %flags.0 = phi i32 [ -1879048192, %if.then27 ], [ -2147483648, %if.end14.if.end28_crit_edge ]
  %arrayidx31 = getelementptr %struct.pdc_state, ptr %pdcs, i32 0, i32 30, i32 %19
  %22 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ctx, ptr %arrayidx31, align 4
  %dst_sg32 = getelementptr %struct.pdc_state, ptr %pdcs, i32 0, i32 30, i32 %19, i32 1
  %23 = ptrtoint ptr %dst_sg32 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dst_sg, ptr %dst_sg32, align 4
  %resp_hdr = getelementptr %struct.pdc_state, ptr %pdcs, i32 0, i32 30, i32 %19, i32 3
  %24 = ptrtoint ptr %resp_hdr to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %resp_hdr, align 4
  %25 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %daddr, align 4
  %resp_hdr_daddr = getelementptr %struct.pdc_state, ptr %pdcs, i32 0, i32 30, i32 %19, i32 4
  %27 = ptrtoint ptr %resp_hdr_daddr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %resp_hdr_daddr, align 4
  %pdc_resp_hdr_len = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 7
  %28 = ptrtoint ptr %pdc_resp_hdr_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pdc_resp_hdr_len, align 4
  %pdev.i = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 1
  %30 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i, align 4
  %rxd_64.i = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 17
  %32 = ptrtoint ptr %rxd_64.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rxd_64.i, align 4
  %34 = ptrtoint ptr %rxout to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rxout, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_build_rxd.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_rx_list_init, %if.then.i)) #9
          to label %pdc_build_rxd.exit [label %if.then.i], !srcloc !167

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  %36 = ptrtoint ptr %pdcs to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %pdcs, align 8
  %conv.i = zext i8 %37 to i32
  %38 = ptrtoint ptr %rxout to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rxout, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_build_rxd.__UNIQUE_ID_ddebug234, ptr noundef %dev1.i, ptr noundef nonnull @.str.41, i32 noundef %conv.i, i32 noundef %39, i32 noundef %29, i32 noundef %flags.0) #9
  br label %pdc_build_rxd.exit

pdc_build_rxd.exit:                               ; preds = %if.then.i, %if.end28
  %arrayidx.i = getelementptr %struct.dma64dd, ptr %33, i32 %35
  %40 = call i32 @llvm.bswap.i32(i32 %26) #9
  %addrlow.i = getelementptr %struct.dma64dd, ptr %33, i32 %35, i32 2
  %41 = ptrtoint ptr %addrlow.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %addrlow.i, align 4
  %addrhigh.i = getelementptr %struct.dma64dd, ptr %33, i32 %35, i32 3
  %42 = ptrtoint ptr %addrhigh.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %addrhigh.i, align 4
  %43 = lshr exact i32 %flags.0, 24
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx.i, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %29) #9
  %ctrl2.i = getelementptr %struct.dma64dd, ptr %33, i32 %35, i32 1
  %46 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %ctrl2.i, align 4
  %47 = ptrtoint ptr %rxout to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rxout, align 8
  %add.i = add i32 %48, 1
  %49 = ptrtoint ptr %nrxpost to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nrxpost, align 8
  %and7.i = and i32 %add.i, %50
  store i32 %and7.i, ptr %rxout, align 8
  br label %cleanup

cleanup:                                          ; preds = %pdc_build_rxd.exit, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -28, %if.then ], [ 0, %pdc_build_rxd.exit ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %daddr) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pdc_rx_list_sg_add(ptr nocapture noundef %pdcs, ptr noundef %sg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sg_nents(ptr noundef %sg) #9
  %nrxpost = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 20
  %0 = ptrtoint ptr %nrxpost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nrxpost, align 8
  %rxout = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 29
  %2 = ptrtoint ptr %rxout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rxout, align 8
  %rxin = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 26
  %4 = ptrtoint ptr %rxin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rxin, align 4
  %6 = xor i32 %3, -1
  %sub.not = add i32 %5, %6
  %sub2 = and i32 %sub.not, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %sub2)
  %cmp = icmp ugt i32 %call, %sub2
  br i1 %cmp, label %if.then, label %while.cond.preheader, !prof !173

while.cond.preheader:                             ; preds = %entry
  %tobool4.not89 = icmp eq ptr %sg, null
  br i1 %tobool4.not89, label %while.cond.preheader.while.end36_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end36_crit_edge:       ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end36

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %nrxd = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 19
  %pdev.i = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 1
  %rxd_64.i = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 17
  br label %while.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rxnobuf = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 38
  br label %cleanup

while.body:                                       ; preds = %pdc_build_rxd.exit80.while.body_crit_edge, %while.body.lr.ph
  %desc_w.091 = phi i32 [ 0, %while.body.lr.ph ], [ %inc34, %pdc_build_rxd.exit80.while.body_crit_edge ]
  %sg.addr.090 = phi ptr [ %sg, %while.body.lr.ph ], [ %call35, %pdc_build_rxd.exit80.while.body_crit_edge ]
  %7 = ptrtoint ptr %rxout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rxout, align 8
  %9 = ptrtoint ptr %nrxd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nrxd, align 4
  %sub6 = add i32 %10, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %sub6)
  %cmp7 = icmp eq i32 %8, %sub6
  %. = select i1 %cmp7, i32 268435456, i32 0, !prof !173
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.090, i32 0, i32 4
  %11 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_length, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.090, i32 0, i32 3
  %13 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %12)
  %cmp1781 = icmp ugt i32 %12, 16384
  br i1 %cmp1781, label %while.body18.preheader, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body18.preheader:                           ; preds = %while.body
  %15 = add i32 %12, -16385
  %16 = lshr i32 %15, 14
  br label %while.body18

while.body18:                                     ; preds = %pdc_build_rxd.exit.while.body18_crit_edge, %while.body18.preheader
  %databufptr.085 = phi i32 [ %add, %pdc_build_rxd.exit.while.body18_crit_edge ], [ %14, %while.body18.preheader ]
  %bufcnt.084 = phi i32 [ %sub20, %pdc_build_rxd.exit.while.body18_crit_edge ], [ %12, %while.body18.preheader ]
  %flags.182 = phi i32 [ %.66, %pdc_build_rxd.exit.while.body18_crit_edge ], [ %., %while.body18.preheader ]
  %17 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i, align 4
  %19 = ptrtoint ptr %rxd_64.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rxd_64.i, align 4
  %21 = ptrtoint ptr %rxout to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rxout, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_build_rxd.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_rx_list_sg_add, %if.then.i)) #9
          to label %pdc_build_rxd.exit [label %if.then.i], !srcloc !167

if.then.i:                                        ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #11
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  %23 = ptrtoint ptr %pdcs to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pdcs, align 8
  %conv.i = zext i8 %24 to i32
  %25 = ptrtoint ptr %rxout to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rxout, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_build_rxd.__UNIQUE_ID_ddebug234, ptr noundef %dev1.i, ptr noundef nonnull @.str.41, i32 noundef %conv.i, i32 noundef %26, i32 noundef 16384, i32 noundef %flags.182) #9
  br label %pdc_build_rxd.exit

pdc_build_rxd.exit:                               ; preds = %if.then.i, %while.body18
  %arrayidx.i = getelementptr %struct.dma64dd, ptr %20, i32 %22
  %27 = tail call i32 @llvm.bswap.i32(i32 %databufptr.085) #9
  %addrlow.i = getelementptr %struct.dma64dd, ptr %20, i32 %22, i32 2
  %28 = ptrtoint ptr %addrlow.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %addrlow.i, align 4
  %addrhigh.i = getelementptr %struct.dma64dd, ptr %20, i32 %22, i32 3
  %29 = ptrtoint ptr %addrhigh.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %addrhigh.i, align 4
  %30 = lshr exact i32 %flags.182, 24
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx.i, align 4
  %ctrl2.i = getelementptr %struct.dma64dd, ptr %20, i32 %22, i32 1
  %32 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4194304, ptr %ctrl2.i, align 4
  %33 = ptrtoint ptr %rxout to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rxout, align 8
  %add.i = add i32 %34, 1
  %35 = ptrtoint ptr %nrxpost to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nrxpost, align 8
  %and7.i = and i32 %add.i, %36
  store i32 %and7.i, ptr %rxout, align 8
  %sub20 = add i32 %bufcnt.084, -16384
  %add = add i32 %databufptr.085, 16384
  %37 = ptrtoint ptr %nrxd to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nrxd, align 4
  %sub23 = add i32 %38, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %and7.i, i32 %sub23)
  %cmp24 = icmp eq i32 %and7.i, %sub23
  %.66 = select i1 %cmp24, i32 268435456, i32 0, !prof !173
  %cmp17 = icmp ugt i32 %sub20, 16384
  br i1 %cmp17, label %pdc_build_rxd.exit.while.body18_crit_edge, label %while.end.loopexit

pdc_build_rxd.exit.while.body18_crit_edge:        ; preds = %pdc_build_rxd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body18

while.end.loopexit:                               ; preds = %pdc_build_rxd.exit
  call void @__sanitizer_cov_trace_pc() #11
  %39 = add i32 %desc_w.091, 1
  %40 = add i32 %39, %16
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %while.body.while.end_crit_edge
  %flags.1.lcssa = phi i32 [ %., %while.body.while.end_crit_edge ], [ %.66, %while.end.loopexit ]
  %desc_w.1.lcssa = phi i32 [ %desc_w.091, %while.body.while.end_crit_edge ], [ %40, %while.end.loopexit ]
  %bufcnt.0.lcssa = phi i32 [ %12, %while.body.while.end_crit_edge ], [ %sub20, %while.end.loopexit ]
  %databufptr.0.lcssa = phi i32 [ %14, %while.body.while.end_crit_edge ], [ %add, %while.end.loopexit ]
  %41 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev.i, align 4
  %43 = ptrtoint ptr %rxd_64.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rxd_64.i, align 4
  %45 = ptrtoint ptr %rxout to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rxout, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_build_rxd.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_rx_list_sg_add, %if.then.i72)) #9
          to label %pdc_build_rxd.exit80 [label %if.then.i72], !srcloc !167

if.then.i72:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev1.i70 = getelementptr inbounds %struct.platform_device, ptr %42, i32 0, i32 3
  %47 = ptrtoint ptr %pdcs to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pdcs, align 8
  %conv.i71 = zext i8 %48 to i32
  %49 = ptrtoint ptr %rxout to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rxout, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_build_rxd.__UNIQUE_ID_ddebug234, ptr noundef %dev1.i70, ptr noundef nonnull @.str.41, i32 noundef %conv.i71, i32 noundef %50, i32 noundef %bufcnt.0.lcssa, i32 noundef %flags.1.lcssa) #9
  br label %pdc_build_rxd.exit80

pdc_build_rxd.exit80:                             ; preds = %if.then.i72, %while.end
  %arrayidx.i73 = getelementptr %struct.dma64dd, ptr %44, i32 %46
  %51 = tail call i32 @llvm.bswap.i32(i32 %databufptr.0.lcssa) #9
  %addrlow.i74 = getelementptr %struct.dma64dd, ptr %44, i32 %46, i32 2
  %52 = ptrtoint ptr %addrlow.i74 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %addrlow.i74, align 4
  %addrhigh.i75 = getelementptr %struct.dma64dd, ptr %44, i32 %46, i32 3
  %53 = ptrtoint ptr %addrhigh.i75 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %addrhigh.i75, align 4
  %54 = lshr exact i32 %flags.1.lcssa, 24
  %55 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx.i73, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %bufcnt.0.lcssa) #9
  %ctrl2.i76 = getelementptr %struct.dma64dd, ptr %44, i32 %46, i32 1
  %57 = ptrtoint ptr %ctrl2.i76 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %ctrl2.i76, align 4
  %58 = ptrtoint ptr %rxout to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rxout, align 8
  %add.i77 = add i32 %59, 1
  %60 = ptrtoint ptr %nrxpost to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nrxpost, align 8
  %and7.i79 = and i32 %add.i77, %61
  store i32 %and7.i79, ptr %rxout, align 8
  %inc34 = add i32 %desc_w.1.lcssa, 1
  %call35 = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.090) #9
  %tobool4.not = icmp eq ptr %call35, null
  br i1 %tobool4.not, label %pdc_build_rxd.exit80.while.end36_crit_edge, label %pdc_build_rxd.exit80.while.body_crit_edge

pdc_build_rxd.exit80.while.body_crit_edge:        ; preds = %pdc_build_rxd.exit80
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

pdc_build_rxd.exit80.while.end36_crit_edge:       ; preds = %pdc_build_rxd.exit80
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end36

while.end36:                                      ; preds = %pdc_build_rxd.exit80.while.end36_crit_edge, %while.cond.preheader.while.end36_crit_edge
  %desc_w.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end36_crit_edge ], [ %inc34, %pdc_build_rxd.exit80.while.end36_crit_edge ]
  %rx_msg_start = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 27
  %62 = ptrtoint ptr %rx_msg_start to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rx_msg_start, align 8
  %rxin_numd = getelementptr %struct.pdc_state, ptr %pdcs, i32 0, i32 30, i32 %63, i32 2
  br label %cleanup

cleanup:                                          ; preds = %while.end36, %if.then
  %rxin_numd.sink93 = phi ptr [ %rxin_numd, %while.end36 ], [ %rxnobuf, %if.then ]
  %desc_w.0.lcssa.sink = phi i32 [ %desc_w.0.lcssa, %while.end36 ], [ 1, %if.then ]
  %retval.0 = phi i32 [ 0, %while.end36 ], [ -28, %if.then ]
  %64 = ptrtoint ptr %rxin_numd.sink93 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rxin_numd.sink93, align 4
  %add37 = add i32 %65, %desc_w.0.lcssa.sink
  store i32 %add37, ptr %rxin_numd.sink93, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pdc_tx_list_sg_add(ptr nocapture noundef %pdcs, ptr noundef %sg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sg_nents(ptr noundef %sg) #9
  %ntxpost = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 21
  %0 = ptrtoint ptr %ntxpost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ntxpost, align 4
  %txout = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 24
  %2 = ptrtoint ptr %txout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %txout, align 8
  %txin = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 22
  %4 = ptrtoint ptr %txin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %txin, align 8
  %6 = xor i32 %3, -1
  %sub.not = add i32 %5, %6
  %sub2 = and i32 %sub.not, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %sub2)
  %cmp = icmp ugt i32 %call, %sub2
  br i1 %cmp, label %if.then, label %if.end, !prof !173

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %txnobuf = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 37
  %7 = ptrtoint ptr %txnobuf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %txnobuf, align 8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %txnobuf, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_msg_start = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 23
  %9 = ptrtoint ptr %tx_msg_start to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_msg_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %3)
  %cmp5 = icmp eq i32 %10, %3
  br i1 %cmp5, label %if.then6, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.pdc_state, ptr %pdcs, i32 0, i32 25, i32 %3
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %txout to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %txout, align 8
  %arrayidx9 = getelementptr %struct.pdc_state, ptr %pdcs, i32 0, i32 31, i32 %13
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %sg, ptr %arrayidx9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end.if.end10_crit_edge
  %flags.0 = phi i32 [ -2147483648, %if.then6 ], [ 0, %if.end.if.end10_crit_edge ]
  %tobool11.not117 = icmp eq ptr %sg, null
  br i1 %tobool11.not117, label %if.end10.while.end49_crit_edge, label %while.body.lr.ph

if.end10.while.end49_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end49

while.body.lr.ph:                                 ; preds = %if.end10
  %ntxd = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 18
  %pdev.i = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 1
  %txd_64.i = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %pdc_build_txd.exit108.while.body_crit_edge, %while.body.lr.ph
  %desc_w.0120 = phi i32 [ 0, %while.body.lr.ph ], [ %inc47, %pdc_build_txd.exit108.while.body_crit_edge ]
  %sg.addr.0119 = phi ptr [ %sg, %while.body.lr.ph ], [ %call41, %pdc_build_txd.exit108.while.body_crit_edge ]
  %flags.1118 = phi i32 [ %flags.0, %while.body.lr.ph ], [ %and48, %pdc_build_txd.exit108.while.body_crit_edge ]
  %15 = ptrtoint ptr %txout to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %txout, align 8
  %17 = ptrtoint ptr %ntxd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ntxd, align 8
  %sub13 = add i32 %18, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %sub13)
  %cmp14 = icmp eq i32 %16, %sub13
  %. = select i1 %cmp14, i32 268435456, i32 0, !prof !173
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.0119, i32 0, i32 4
  %19 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_length, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.0119, i32 0, i32 3
  %21 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %20)
  %cmp24109 = icmp ugt i32 %20, 16384
  br i1 %cmp24109, label %while.body25.preheader, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body25.preheader:                           ; preds = %while.body
  %23 = add i32 %20, -16385
  %24 = lshr i32 %23, 14
  br label %while.body25

while.body25:                                     ; preds = %pdc_build_txd.exit.while.body25_crit_edge, %while.body25.preheader
  %databufptr.0113 = phi i32 [ %add, %pdc_build_txd.exit.while.body25_crit_edge ], [ %22, %while.body25.preheader ]
  %bufcnt.0112 = phi i32 [ %sub27, %pdc_build_txd.exit.while.body25_crit_edge ], [ %20, %while.body25.preheader ]
  %eot.1110 = phi i32 [ %.94, %pdc_build_txd.exit.while.body25_crit_edge ], [ %., %while.body25.preheader ]
  %or = or i32 %eot.1110, %flags.1118
  %25 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev.i, align 4
  %27 = ptrtoint ptr %txd_64.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %txd_64.i, align 8
  %29 = ptrtoint ptr %txout to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %txout, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_build_txd.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_tx_list_sg_add, %if.then.i)) #9
          to label %pdc_build_txd.exit [label %if.then.i], !srcloc !167

if.then.i:                                        ; preds = %while.body25
  call void @__sanitizer_cov_trace_pc() #11
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3
  %31 = ptrtoint ptr %pdcs to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pdcs, align 8
  %conv.i = zext i8 %32 to i32
  %33 = ptrtoint ptr %txout to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %txout, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_build_txd.__UNIQUE_ID_ddebug235, ptr noundef %dev1.i, ptr noundef nonnull @.str.43, i32 noundef %conv.i, i32 noundef %34, i32 noundef 16384, i32 noundef %or) #9
  br label %pdc_build_txd.exit

pdc_build_txd.exit:                               ; preds = %if.then.i, %while.body25
  %arrayidx.i = getelementptr %struct.dma64dd, ptr %28, i32 %30
  %35 = tail call i32 @llvm.bswap.i32(i32 %databufptr.0113) #9
  %addrlow.i = getelementptr %struct.dma64dd, ptr %28, i32 %30, i32 2
  %36 = ptrtoint ptr %addrlow.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %addrlow.i, align 4
  %addrhigh.i = getelementptr %struct.dma64dd, ptr %28, i32 %30, i32 3
  %37 = ptrtoint ptr %addrhigh.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %addrhigh.i, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx.i, align 4
  %ctrl2.i = getelementptr %struct.dma64dd, ptr %28, i32 %30, i32 1
  %40 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 4194304, ptr %ctrl2.i, align 4
  %41 = ptrtoint ptr %txout to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %txout, align 8
  %add.i = add i32 %42, 1
  %43 = ptrtoint ptr %ntxpost to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ntxpost, align 4
  %and7.i = and i32 %add.i, %44
  store i32 %and7.i, ptr %txout, align 8
  %sub27 = add i32 %bufcnt.0112, -16384
  %add = add i32 %databufptr.0113, 16384
  %45 = ptrtoint ptr %ntxd to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ntxd, align 8
  %sub30 = add i32 %46, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %and7.i, i32 %sub30)
  %cmp31 = icmp eq i32 %and7.i, %sub30
  %.94 = select i1 %cmp31, i32 268435456, i32 0, !prof !173
  %cmp24 = icmp ugt i32 %sub27, 16384
  br i1 %cmp24, label %pdc_build_txd.exit.while.body25_crit_edge, label %while.end.loopexit

pdc_build_txd.exit.while.body25_crit_edge:        ; preds = %pdc_build_txd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body25

while.end.loopexit:                               ; preds = %pdc_build_txd.exit
  call void @__sanitizer_cov_trace_pc() #11
  %47 = add i32 %desc_w.0120, 1
  %48 = add i32 %47, %24
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %while.body.while.end_crit_edge
  %eot.1.lcssa = phi i32 [ %., %while.body.while.end_crit_edge ], [ %.94, %while.end.loopexit ]
  %desc_w.1.lcssa = phi i32 [ %desc_w.0120, %while.body.while.end_crit_edge ], [ %48, %while.end.loopexit ]
  %bufcnt.0.lcssa = phi i32 [ %20, %while.body.while.end_crit_edge ], [ %sub27, %while.end.loopexit ]
  %databufptr.0.lcssa = phi i32 [ %22, %while.body.while.end_crit_edge ], [ %add, %while.end.loopexit ]
  %call41 = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.0119) #9
  %tobool42.not = icmp eq ptr %call41, null
  %or44 = or i32 %flags.1118, 1610612736
  %spec.select = select i1 %tobool42.not, i32 %or44, i32 %flags.1118
  %or46 = or i32 %spec.select, %eot.1.lcssa
  %49 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev.i, align 4
  %51 = ptrtoint ptr %txd_64.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %txd_64.i, align 8
  %53 = ptrtoint ptr %txout to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %txout, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_build_txd.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_tx_list_sg_add, %if.then.i100)) #9
          to label %pdc_build_txd.exit108 [label %if.then.i100], !srcloc !167

if.then.i100:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev1.i98 = getelementptr inbounds %struct.platform_device, ptr %50, i32 0, i32 3
  %55 = ptrtoint ptr %pdcs to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %pdcs, align 8
  %conv.i99 = zext i8 %56 to i32
  %57 = ptrtoint ptr %txout to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %txout, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_build_txd.__UNIQUE_ID_ddebug235, ptr noundef %dev1.i98, ptr noundef nonnull @.str.43, i32 noundef %conv.i99, i32 noundef %58, i32 noundef %bufcnt.0.lcssa, i32 noundef %or46) #9
  br label %pdc_build_txd.exit108

pdc_build_txd.exit108:                            ; preds = %if.then.i100, %while.end
  %arrayidx.i101 = getelementptr %struct.dma64dd, ptr %52, i32 %54
  %59 = tail call i32 @llvm.bswap.i32(i32 %databufptr.0.lcssa) #9
  %addrlow.i102 = getelementptr %struct.dma64dd, ptr %52, i32 %54, i32 2
  %60 = ptrtoint ptr %addrlow.i102 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %addrlow.i102, align 4
  %addrhigh.i103 = getelementptr %struct.dma64dd, ptr %52, i32 %54, i32 3
  %61 = ptrtoint ptr %addrhigh.i103 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %addrhigh.i103, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %or46) #9
  %63 = ptrtoint ptr %arrayidx.i101 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx.i101, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %bufcnt.0.lcssa) #9
  %ctrl2.i104 = getelementptr %struct.dma64dd, ptr %52, i32 %54, i32 1
  %65 = ptrtoint ptr %ctrl2.i104 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %ctrl2.i104, align 4
  %66 = ptrtoint ptr %txout to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %txout, align 8
  %add.i105 = add i32 %67, 1
  %68 = ptrtoint ptr %ntxpost to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ntxpost, align 4
  %and7.i107 = and i32 %add.i105, %69
  store i32 %and7.i107, ptr %txout, align 8
  %inc47 = add i32 %desc_w.1.lcssa, 1
  %and48 = and i32 %spec.select, 2147483647
  br i1 %tobool42.not, label %pdc_build_txd.exit108.while.end49_crit_edge, label %pdc_build_txd.exit108.while.body_crit_edge

pdc_build_txd.exit108.while.body_crit_edge:       ; preds = %pdc_build_txd.exit108
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

pdc_build_txd.exit108.while.end49_crit_edge:      ; preds = %pdc_build_txd.exit108
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end49

while.end49:                                      ; preds = %pdc_build_txd.exit108.while.end49_crit_edge, %if.end10.while.end49_crit_edge
  %desc_w.0.lcssa = phi i32 [ 0, %if.end10.while.end49_crit_edge ], [ %inc47, %pdc_build_txd.exit108.while.end49_crit_edge ]
  %70 = ptrtoint ptr %tx_msg_start to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_msg_start, align 4
  %arrayidx52 = getelementptr %struct.pdc_state, ptr %pdcs, i32 0, i32 25, i32 %71
  %72 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx52, align 4
  %add53 = add i32 %73, %desc_w.0.lcssa
  store i32 %add53, ptr %arrayidx52, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end49, %if.then
  %retval.0 = phi i32 [ -28, %if.then ], [ 0, %while.end49 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pdc_ring_init(ptr nocapture noundef %pdcs) unnamed_addr #2 align 64 {
entry:
  %tx = alloca %struct.pdc_ring_alloc, align 4
  %rx = alloca %struct.pdc_ring_alloc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tx) #9
  %2 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tx, align 4, !annotation !176
  %3 = getelementptr inbounds %struct.pdc_ring_alloc, ptr %tx, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !176
  %5 = getelementptr inbounds %struct.pdc_ring_alloc, ptr %tx, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !176
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rx) #9
  %7 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %rx, align 4, !annotation !176
  %8 = getelementptr inbounds %struct.pdc_ring_alloc, ptr %rx, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !176
  %10 = getelementptr inbounds %struct.pdc_ring_alloc, ptr %rx, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !176
  %ring_pool = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 9
  %12 = ptrtoint ptr %ring_pool to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ring_pool, align 4
  %call.i = call ptr @dma_pool_alloc(ptr noundef %13, i32 noundef 3520, ptr noundef nonnull %tx) #9
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %3, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !173

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %ring_pool to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring_pool, align 4
  %call.i10 = call ptr @dma_pool_alloc(ptr noundef %16, i32 noundef 3520, ptr noundef nonnull %rx) #9
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i10, ptr %8, align 4
  %tobool11.not = icmp eq ptr %call.i10, null
  br i1 %tobool11.not, label %if.then20, label %do.body, !prof !173

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %ring_pool to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring_pool, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %22 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx, align 4
  call void @dma_pool_free(ptr noundef %19, ptr noundef %21, i32 noundef %23) #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_ring_init.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_ring_init, %if.then30)) #9
          to label %do.body33 [label %if.then30], !srcloc !167

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_ring_init.__UNIQUE_ID_ddebug240, ptr noundef %dev1, ptr noundef nonnull @.str.45, ptr noundef nonnull %tx) #9
  br label %do.body33

do.body33:                                        ; preds = %if.then30, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_ring_init.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_ring_init, %if.then45)) #9
          to label %do.body50 [label %if.then45], !srcloc !167

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_ring_init.__UNIQUE_ID_ddebug241, ptr noundef %dev1, ptr noundef nonnull @.str.46, ptr noundef %25) #9
  br label %do.body50

do.body50:                                        ; preds = %if.then45, %do.body33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_ring_init.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_ring_init, %if.then62)) #9
          to label %do.body67 [label %if.then62], !srcloc !167

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_ring_init.__UNIQUE_ID_ddebug242, ptr noundef %dev1, ptr noundef nonnull @.str.47, ptr noundef nonnull %rx) #9
  br label %do.body67

do.body67:                                        ; preds = %if.then62, %do.body50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_ring_init.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_ring_init, %if.then79)) #9
          to label %do.end83 [label %if.then79], !srcloc !167

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_ring_init.__UNIQUE_ID_ddebug243, ptr noundef %dev1, ptr noundef nonnull @.str.48, ptr noundef %27) #9
  br label %do.end83

do.end83:                                         ; preds = %if.then79, %do.body67
  %tx_ring_alloc = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 11
  %28 = call ptr @memcpy(ptr %tx_ring_alloc, ptr %tx, i32 12)
  %rx_ring_alloc = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 12
  %29 = call ptr @memcpy(ptr %rx_ring_alloc, ptr %rx, i32 12)
  %rxin = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 26
  %txin = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 22
  %30 = ptrtoint ptr %txin to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %txin, align 8
  %tx_msg_start = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 23
  %31 = ptrtoint ptr %tx_msg_start to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %tx_msg_start, align 4
  %txout = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 24
  %32 = ptrtoint ptr %txout to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %txout, align 8
  %vbase85 = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 11, i32 1
  %33 = call ptr @memset(ptr %rxin, i32 0, i32 16)
  %34 = ptrtoint ptr %vbase85 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vbase85, align 4
  %txd_64 = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 16
  %36 = ptrtoint ptr %txd_64 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %txd_64, align 8
  %vbase87 = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 12, i32 1
  %37 = ptrtoint ptr %vbase87 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vbase87, align 4
  %rxd_64 = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 17
  %39 = ptrtoint ptr %rxd_64 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %rxd_64, align 4
  %regs = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 13
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %dmaregs = getelementptr inbounds %struct.pdc_regs, ptr %41, i32 0, i32 41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmaregs, i32 527360) #9, !srcloc !170
  %rx_status_len = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 5
  %42 = ptrtoint ptr %rx_status_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_status_len, align 4
  %shl = shl i32 %43, 1
  %add = add i32 %shl, 790016
  %dmarcv = getelementptr inbounds %struct.pdc_regs, ptr %41, i32 0, i32 41, i32 0, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  call void @arm_heavy_mb() #9
  %44 = call i32 @llvm.bswap.i32(i32 %add) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmarcv, i32 %44) #9, !srcloc !170
  %ptr = getelementptr inbounds %struct.pdc_regs, ptr %41, i32 0, i32 41, i32 0, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ptr, i32 0) #9, !srcloc !170
  %ptr91 = getelementptr inbounds %struct.pdc_regs, ptr %41, i32 0, i32 41, i32 0, i32 2, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ptr91, i32 0) #9, !srcloc !170
  %45 = ptrtoint ptr %tx_ring_alloc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_ring_alloc, align 4
  %addrlow = getelementptr inbounds %struct.pdc_regs, ptr %41, i32 0, i32 41, i32 0, i32 0, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  call void @arm_heavy_mb() #9
  %47 = call i32 @llvm.bswap.i32(i32 %46) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addrlow, i32 %47) #9, !srcloc !170
  %addrhigh = getelementptr inbounds %struct.pdc_regs, ptr %41, i32 0, i32 41, i32 0, i32 0, i32 3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addrhigh, i32 0) #9, !srcloc !170
  %48 = ptrtoint ptr %rx_ring_alloc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_ring_alloc, align 8
  %addrlow103 = getelementptr inbounds %struct.pdc_regs, ptr %41, i32 0, i32 41, i32 0, i32 2, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  call void @arm_heavy_mb() #9
  %50 = call i32 @llvm.bswap.i32(i32 %49) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addrlow103, i32 %50) #9, !srcloc !170
  %addrhigh109 = getelementptr inbounds %struct.pdc_regs, ptr %41, i32 0, i32 41, i32 0, i32 2, i32 3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addrhigh109, i32 0) #9, !srcloc !170
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmaregs, i32 17304576) #9, !srcloc !170
  %51 = ptrtoint ptr %rx_status_len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_status_len, align 4
  %shl113 = shl i32 %52, 1
  %or = or i32 %shl113, 790017
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  call void @arm_heavy_mb() #9
  %53 = call i32 @llvm.bswap.i32(i32 %or) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmarcv, i32 %53) #9, !srcloc !170
  %ntxpost = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 21
  %nrxpost = getelementptr inbounds %struct.pdc_state, ptr %pdcs, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end83
  %i.015 = phi i32 [ 0, %do.end83 ], [ %inc, %for.inc.for.body_crit_edge ]
  %54 = ptrtoint ptr %ntxpost to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ntxpost, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.015, i32 %55)
  %cmp116.not = icmp eq i32 %i.015, %55
  %56 = ptrtoint ptr %txd_64 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %txd_64, align 8
  %arrayidx121 = getelementptr %struct.dma64dd, ptr %57, i32 %i.015
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  br i1 %cmp116.not, label %if.else, label %if.then117

if.then117:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx121, i32 192) #9, !srcloc !170
  br label %if.end123

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx121, i32 208) #9, !srcloc !170
  br label %if.end123

if.end123:                                        ; preds = %if.else, %if.then117
  %58 = ptrtoint ptr %nrxpost to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nrxpost, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.015, i32 %59)
  %cmp124.not = icmp eq i32 %i.015, %59
  %60 = ptrtoint ptr %rxd_64 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rxd_64, align 4
  %arrayidx131 = getelementptr %struct.dma64dd, ptr %61, i32 %i.015
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  br i1 %cmp124.not, label %if.else129, label %if.then125

if.then125:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx131, i32 128) #9, !srcloc !170
  br label %for.inc

if.else129:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx131, i32 144) #9, !srcloc !170
  br label %for.inc

for.inc:                                          ; preds = %if.else129, %if.then125
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -12, %if.then20 ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rx) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tx) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @debugfs_initialized() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc_debugfs_read(ptr nocapture noundef readonly %filp, ptr noundef %ubuf, i32 noundef %count, ptr noundef %offp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 512) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 8
  %conv = zext i8 %4 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i, i32 noundef 512, ptr noundef nonnull @.str.52, i32 noundef %conv) #9
  %add.ptr2 = getelementptr i8, ptr %call7.i, i32 %call1
  %sub3 = sub i32 512, %call1
  %pdc_requests = getelementptr inbounds %struct.pdc_state, ptr %2, i32 0, i32 32
  %5 = ptrtoint ptr %pdc_requests to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pdc_requests, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.53, i32 noundef %6) #9
  %add5 = add i32 %call4, %call1
  %add.ptr6 = getelementptr i8, ptr %call7.i, i32 %add5
  %sub7 = sub i32 512, %add5
  %pdc_replies = getelementptr inbounds %struct.pdc_state, ptr %2, i32 0, i32 33
  %7 = ptrtoint ptr %pdc_replies to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pdc_replies, align 8
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6, i32 noundef %sub7, ptr noundef nonnull @.str.54, i32 noundef %8) #9
  %add9 = add i32 %call8, %add5
  %add.ptr10 = getelementptr i8, ptr %call7.i, i32 %add9
  %sub11 = sub i32 512, %add9
  %last_tx_not_done = getelementptr inbounds %struct.pdc_state, ptr %2, i32 0, i32 34
  %9 = ptrtoint ptr %last_tx_not_done to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_tx_not_done, align 4
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10, i32 noundef %sub11, ptr noundef nonnull @.str.55, i32 noundef %10) #9
  %add13 = add i32 %call12, %add9
  %add.ptr14 = getelementptr i8, ptr %call7.i, i32 %add13
  %sub15 = sub i32 512, %add13
  %tx_ring_full = getelementptr inbounds %struct.pdc_state, ptr %2, i32 0, i32 35
  %11 = ptrtoint ptr %tx_ring_full to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_ring_full, align 8
  %call16 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14, i32 noundef %sub15, ptr noundef nonnull @.str.56, i32 noundef %12) #9
  %add17 = add i32 %call16, %add13
  %add.ptr18 = getelementptr i8, ptr %call7.i, i32 %add17
  %sub19 = sub i32 512, %add17
  %rx_ring_full = getelementptr inbounds %struct.pdc_state, ptr %2, i32 0, i32 36
  %13 = ptrtoint ptr %rx_ring_full to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_ring_full, align 4
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr18, i32 noundef %sub19, ptr noundef nonnull @.str.57, i32 noundef %14) #9
  %add21 = add i32 %call20, %add17
  %add.ptr22 = getelementptr i8, ptr %call7.i, i32 %add21
  %sub23 = sub i32 512, %add21
  %txnobuf = getelementptr inbounds %struct.pdc_state, ptr %2, i32 0, i32 37
  %15 = ptrtoint ptr %txnobuf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %txnobuf, align 8
  %call24 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22, i32 noundef %sub23, ptr noundef nonnull @.str.58, i32 noundef %16) #9
  %add25 = add i32 %call24, %add21
  %add.ptr26 = getelementptr i8, ptr %call7.i, i32 %add25
  %sub27 = sub i32 512, %add25
  %rxnobuf = getelementptr inbounds %struct.pdc_state, ptr %2, i32 0, i32 38
  %17 = ptrtoint ptr %rxnobuf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rxnobuf, align 4
  %call28 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr26, i32 noundef %sub27, ptr noundef nonnull @.str.59, i32 noundef %18) #9
  %add29 = add i32 %call28, %add25
  %add.ptr30 = getelementptr i8, ptr %call7.i, i32 %add29
  %sub31 = sub i32 512, %add29
  %rx_oflow = getelementptr inbounds %struct.pdc_state, ptr %2, i32 0, i32 39
  %19 = ptrtoint ptr %rx_oflow to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_oflow, align 8
  %call32 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr30, i32 noundef %sub31, ptr noundef nonnull @.str.60, i32 noundef %20) #9
  %add33 = add i32 %call32, %add29
  %add.ptr34 = getelementptr i8, ptr %call7.i, i32 %add33
  %sub35 = sub i32 512, %add33
  %last_rx_curr = getelementptr inbounds %struct.pdc_state, ptr %2, i32 0, i32 28
  %21 = ptrtoint ptr %last_rx_curr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %last_rx_curr, align 4
  %rxin = getelementptr inbounds %struct.pdc_state, ptr %2, i32 0, i32 26
  %23 = ptrtoint ptr %rxin to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rxin, align 4
  %sub36 = sub i32 %22, %24
  %nrxpost = getelementptr inbounds %struct.pdc_state, ptr %2, i32 0, i32 20
  %25 = ptrtoint ptr %nrxpost to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nrxpost, align 8
  %and = and i32 %sub36, %26
  %call37 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr34, i32 noundef %sub35, ptr noundef nonnull @.str.61, i32 noundef %and) #9
  %add38 = add i32 %call37, %add33
  %27 = tail call i32 @llvm.smin.i32(i32 %add38, i32 512)
  %call42 = tail call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %offp, ptr noundef nonnull %call7.i, i32 noundef %27) #9
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !33, !35, !37, !38, !39, !40, !41, !43, !45, !47, !48, !49, !51, !52, !54, !55, !57, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !72, !73, !74, !76, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !94, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @__initcall__kmod_bcm_pdc_mailbox__251_1641_pdc_mbox_driver_init6, !1, !"__initcall__kmod_bcm_pdc_mailbox__251_1641_pdc_mbox_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1641, i32 1}
!2 = !{ptr @__exitcall_pdc_mbox_driver_exit, !1, !"__exitcall_pdc_mbox_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author252, !4, !"__UNIQUE_ID_author252", i1 false, i1 false}
!4 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1643, i32 1}
!5 = !{ptr @__UNIQUE_ID_description253, !6, !"__UNIQUE_ID_description253", i1 false, i1 false}
!6 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1644, i32 1}
!7 = !{ptr @__UNIQUE_ID_file254, !8, !"__UNIQUE_ID_file254", i1 false, i1 false}
!8 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1645, i32 1}
!9 = !{ptr @__UNIQUE_ID_license255, !8, !"__UNIQUE_ID_license255", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1637, i32 14}
!12 = !{ptr @pdc_mbox_driver, !13, !"pdc_mbox_driver", i1 false, i1 false}
!13 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1633, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1553, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pdc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pdc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1558, i32 36}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1574, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @pdc_probe.__UNIQUE_ID_ddebug249, !25, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1604, i32 2}
!30 = !{ptr @pdc_probe.__UNIQUE_ID_ddebug250, !29, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!31 = distinct !{null, !32, !"pdcg", i1 false, i1 false}
!32 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 419, i32 27}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1501, i32 33}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1504, i32 3}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @pdc_dt_read._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @pdc_dt_read._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1508, i32 48}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1365, i32 38}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1289, i32 2}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @pdc_hw_init.__UNIQUE_ID_ddebug245, !46, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1290, i32 2}
!51 = !{ptr @pdc_hw_init.__UNIQUE_ID_ddebug246, !50, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1292, i32 2}
!54 = !{ptr @pdc_hw_init.__UNIQUE_ID_ddebug247, !53, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 616, i32 2}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @pdc_receive_one.__UNIQUE_ID_ddebug236, !56, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 632, i32 2}
!61 = !{ptr @pdc_receive_one.__UNIQUE_ID_ddebug237, !60, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 635, i32 2}
!64 = !{ptr @pdc_receive_one.__UNIQUE_ID_ddebug238, !63, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 646, i32 3}
!67 = !{ptr @pdc_receive_one.__UNIQUE_ID_ddebug239, !66, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 650, i32 5}
!70 = !{ptr @pdc_receive_one._rs, !69, !"_rs", i1 false, i1 false}
!71 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @pdc_receive_one._entry, !69, !"_entry", i1 false, i1 false}
!73 = !{ptr @pdc_receive_one._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @pdc_receive_one._rs.27, !75, !"_rs", i1 false, i1 false}
!75 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 654, i32 5}
!76 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @pdc_receive_one._entry.28, !75, !"_entry", i1 false, i1 false}
!79 = !{ptr @pdc_receive_one._entry_ptr.31, !75, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1405, i32 2}
!82 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @pdc_interrupts_init.__UNIQUE_ID_ddebug248, !81, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1411, i32 3}
!86 = !{ptr @pdc_interrupts_init._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @pdc_interrupts_init._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1462, i32 3}
!90 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @pdc_mb_init._entry, !89, !"_entry", i1 false, i1 false}
!93 = !{ptr @pdc_mb_init._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @pdc_mbox_chan_ops, !95, !"pdc_mbox_chan_ops", i1 false, i1 false}
!95 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1418, i32 35}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1250, i32 3}
!98 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @pdc_send_data._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @pdc_send_data._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 526, i32 2}
!103 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @pdc_build_rxd.__UNIQUE_ID_ddebug234, !102, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 554, i32 2}
!107 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @pdc_build_txd.__UNIQUE_ID_ddebug235, !106, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1007, i32 2}
!111 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @pdc_ring_init.__UNIQUE_ID_ddebug240, !110, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!113 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1008, i32 2}
!115 = !{ptr @pdc_ring_init.__UNIQUE_ID_ddebug241, !114, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1009, i32 2}
!118 = !{ptr @pdc_ring_init.__UNIQUE_ID_ddebug242, !117, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1010, i32 2}
!121 = !{ptr @pdc_ring_init.__UNIQUE_ID_ddebug243, !120, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!122 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1268, i32 2}
!124 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @pdc_shutdown.__UNIQUE_ID_ddebug244, !123, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 497, i32 31}
!128 = !{ptr @debugfs_dir, !129, !"debugfs_dir", i1 false, i1 false}
!129 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 422, i32 23}
!130 = !{ptr @pdc_debugfs_stats, !131, !"pdc_debugfs_stats", i1 false, i1 false}
!131 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 478, i32 37}
!132 = !{ptr @.str.52, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 440, i32 11}
!134 = !{ptr @.str.53, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 442, i32 11}
!136 = !{ptr @.str.54, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 445, i32 11}
!138 = !{ptr @.str.55, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 448, i32 11}
!140 = !{ptr @.str.56, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 451, i32 11}
!142 = !{ptr @.str.57, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 454, i32 11}
!144 = !{ptr @.str.58, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 457, i32 11}
!146 = !{ptr @.str.59, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 460, i32 11}
!148 = !{ptr @.str.60, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 463, i32 11}
!150 = !{ptr @.str.61, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 466, i32 11}
!152 = !{ptr @pdc_mbox_of_match, !153, !"pdc_mbox_of_match", i1 false, i1 false}
!153 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1474, i32 34}
!154 = !{ptr @pdc_hw, !155, !"pdc_hw", i1 false, i1 false}
!155 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1471, i32 18}
!156 = !{ptr @fa_hw, !157, !"fa_hw", i1 false, i1 false}
!157 = !{!"../drivers/mailbox/bcm-pdc-mailbox.c", i32 1472, i32 18}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{i64 2149001912, i64 2149001917, i64 2149001930, i64 2149001974, i64 2149002008, i64 2149002029}
!168 = !{i8 0, i8 2}
!169 = !{i64 2153383616}
!170 = !{i64 5841494}
!171 = !{i64 5841912}
!172 = !{i64 2153382261}
!173 = !{!"branch_weights", i32 1, i32 2000}
!174 = !{!"branch_weights", i32 2000, i32 1}
!175 = !{i64 2154392637}
!176 = !{!"auto-init"}
