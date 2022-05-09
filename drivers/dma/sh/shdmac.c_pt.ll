; ModuleID = '/llk/IR_all_yes/drivers/dma/sh/shdmac.c_pt.bc'
source_filename = "../drivers/dma/sh/shdmac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shdma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sh_dmae_pdata = type { ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i16, i32, i32, i8 }
%struct.sh_dmae_device = type { %struct.shdma_dev, [20 x ptr], ptr, %struct.list_head, ptr, ptr, i32, i32 }
%struct.shdma_dev = type { %struct.dma_device, ptr, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sh_dmae_channel = type { i32, i32, i32, i8, i8 }
%struct.shdma_chan = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.dma_chan, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.sh_dmae_chan = type { %struct.shdma_chan, ptr, i32, ptr, [16 x i8], i32, i32 }
%struct.shdma_desc = type { %struct.list_head, %struct.dma_async_tx_descriptor, i32, i32, i32, i32, i32, i8 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.sh_dmae_slave_config = type { i32, i32, i32, i8 }
%struct.sh_dmae_desc = type { %struct.sh_dmae_regs, %struct.shdma_desc }
%struct.sh_dmae_regs = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_shdma__239_925_sh_dmae_init6 = internal global ptr @sh_dmae_init, section ".initcall6.init", align 4
@sh_dmae_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @sh_dmae_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.28, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_dmae_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@sh_dmae_nmi_notifier = internal global %struct.notifier_block { ptr @sh_dmae_nmi_handler, ptr null, i32 1 }, section ".data..read_mostly", align 4
@__exitcall_sh_dmae_exit = internal global ptr @sh_dmae_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author240 = internal constant [63 x i8] c"shdma.author=Nobuhiro Iwamatsu <iwamatsu.nobuhiro@renesas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [47 x i8] c"shdma.description=Renesas SH DMA Engine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [32 x i8] c"shdma.file=drivers/dma/sh/shdma\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [18 x i8] c"shdma.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias244 = internal constant [35 x i8] c"shdma.alias=platform:sh-dma-engine\00", section ".modinfo", align 1
@sh_dmae_shdma_ops = internal constant { %struct.shdma_ops, [52 x i8] } { %struct.shdma_ops { ptr @sh_dmae_desc_completed, ptr @sh_dmae_halt, ptr @sh_dmae_channel_busy, ptr @sh_dmae_slave_addr, ptr @sh_dmae_desc_setup, ptr @sh_dmae_set_slave, ptr @sh_dmae_setup_xfer, ptr @sh_dmae_start_xfer, ptr @sh_dmae_embedded_desc, ptr @sh_dmae_chan_irq, ptr @sh_dmae_get_partial }, [52 x i8] zeroinitializer }, align 32
@sh_dmae_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 769, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s(): GET = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sh_dmae_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/dma/sh/shdmac.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sh_dmae_probe._entry_ptr = internal global ptr @sh_dmae_probe._entry, section ".printk_index", align 4
@sh_dmae_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@sh_dmae_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @sh_dmae_devices, ptr @sh_dmae_devices }, [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMAC Address Error\00", [45 x i8] zeroinitializer }, align 32
@sh_dmae_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 799, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"DMA failed requesting irq #%d, error %d\0A\00", [55 x i8] zeroinitializer }, align 32
@sh_dmae_probe._entry_ptr.8 = internal global ptr @sh_dmae_probe._entry.6, section ".printk_index", align 4
@sh_dmae_probe.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 -48, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"shdma\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Found IRQ %d for channel %d\0A\00", [35 x i8] zeroinitializer }, align 32
@sh_dmae_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 855, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Attempting to register %d DMA channels when a maximum of %d are supported.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@sh_dmae_probe._entry_ptr.14 = internal global ptr @sh_dmae_probe._entry.11, section ".printk_index", align 4
@sh_dmae_start_xfer.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 72, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sh_dmae_start_xfer\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Queue #%d to %d: %u@%x -> %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sh_dmae_lock\00", [19 x i8] zeroinitializer }, align 32
@sh_dmae_rst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 165, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can't initialize DMAOR.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sh_dmae_rst\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sh_dmae_rst._entry_ptr = internal global ptr @sh_dmae_rst._entry, section ".printk_index", align 4
@sh_dmae_rst._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.2, i32 171, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"DMAOR=0x%x hasn't latched the initial value 0x%x.\0A\00", [45 x i8] zeroinitializer }, align 32
@sh_dmae_rst._entry_ptr.23 = internal global ptr @sh_dmae_rst._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sh-dmae%d.%d\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sh-dma%d\00", [23 x i8] zeroinitializer }, align 32
@sh_dmae_chan_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 551, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DMA channel %d request_irq error %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sh_dmae_chan_probe\00", [45 x i8] zeroinitializer }, align 32
@sh_dmae_chan_probe._entry_ptr = internal global ptr @sh_dmae_chan_probe._entry, section ".printk_index", align 4
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sh-dma-engine\00", [18 x i8] zeroinitializer }, align 32
@sh_dmae_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sh_dmae_suspend, ptr @sh_dmae_resume, ptr @sh_dmae_suspend, ptr @sh_dmae_resume, ptr @sh_dmae_suspend, ptr @sh_dmae_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_dmae_runtime_suspend, ptr @sh_dmae_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@sh_dmae_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 609, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Failed to reset!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sh_dmae_resume\00", [17 x i8] zeroinitializer }, align 32
@sh_dmae_resume._entry_ptr = internal global ptr @sh_dmae_resume._entry, section ".printk_index", align 4
@sh_dmae_nmi_handler.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"sh_dmae_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 908, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant [18 x i8] c"sh_dmae_shdma_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 654, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 769, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"sh_dmae_lock\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [16 x i8] c"sh_dmae_devices\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 58, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 795, i32 22 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 797, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 831, i32 5 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 853, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 289, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 57, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 165, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 169, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 542, i32 5 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 545, i32 5 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 549, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 911, i32 11 }
@___asan_gen_.134 = private unnamed_addr constant [11 x i8] c"sh_dmae_pm\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 630, i32 32 }
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 609, i32 3 }
@___asan_gen_.147 = private constant [27 x i8] c"../drivers/dma/sh/shdmac.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 495, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 695, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 723, i32 2 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_alias244, ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_sh_dmae_exit, ptr @__initcall__kmod_shdma__239_925_sh_dmae_init6, ptr @sh_dmae_chan_probe._entry, ptr @sh_dmae_chan_probe._entry_ptr, ptr @sh_dmae_exit, ptr @sh_dmae_probe._entry, ptr @sh_dmae_probe._entry.11, ptr @sh_dmae_probe._entry.6, ptr @sh_dmae_probe._entry_ptr, ptr @sh_dmae_probe._entry_ptr.14, ptr @sh_dmae_probe._entry_ptr.8, ptr @sh_dmae_resume._entry, ptr @sh_dmae_resume._entry_ptr, ptr @sh_dmae_rst._entry, ptr @sh_dmae_rst._entry.21, ptr @sh_dmae_rst._entry_ptr, ptr @sh_dmae_rst._entry_ptr.23, ptr @sh_dmae_driver, ptr @sh_dmae_shdma_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sh_dmae_lock, ptr @sh_dmae_devices, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @sh_dmae_pm, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_dmae_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_dmae_shdma_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_dmae_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_dmae_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_dmae_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_dmae_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_dmae_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_dmae_rst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_dmae_rst._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_dmae_chan_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_dmae_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_dmae_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_dmae_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_die_notifier(ptr noundef nonnull @sh_dmae_nmi_notifier) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @sh_dmae_driver, ptr noundef nonnull @sh_dmae_probe, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sh_dmae_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @sh_dmae_driver) #12
  %call = tail call i32 @unregister_die_notifier(ptr noundef nonnull @sh_dmae_nmi_notifier) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_die_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_die_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_dmae_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %chan_flag = alloca [20 x i32], align 4
  %chan_irq = alloca [20 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %chan_flag) #12
  %0 = call ptr @memset(ptr %chan_flag, i32 0, i32 80)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %chan_irq) #12
  %1 = call ptr @memset(ptr %chan_irq, i32 255, i32 80)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %pdata.0 = phi ptr [ %call, %if.then ], [ %5, %if.else ]
  %tobool4.not = icmp eq ptr %pdata.0, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %channel_num = getelementptr inbounds %struct.sh_dmae_pdata, ptr %pdata.0, i32 0, i32 3
  %6 = ptrtoint ptr %channel_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %call8 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #12
  %call9 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #12
  %call10 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #12
  %tobool11.not = icmp eq ptr %call8, null
  %tobool13.not = icmp eq ptr %call10, null
  %or.cond = select i1 %tobool11.not, i1 true, i1 %tobool13.not
  br i1 %or.cond, label %if.end7.cleanup_crit_edge, label %if.end15

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 484, i32 noundef 3520) #12
  %tobool18.not = icmp eq ptr %call.i, null
  br i1 %tobool18.not, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %call23 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call8) #12
  %chan_reg = getelementptr inbounds %struct.sh_dmae_device, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %chan_reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call23, ptr %chan_reg, align 4
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  %tobool30.not = icmp eq ptr %call9, null
  br i1 %tobool30.not, label %if.end29.if.end41_crit_edge, label %if.then31

if.end29.if.end41_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then31:                                        ; preds = %if.end29
  %call33 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call9) #12
  %dmars34 = getelementptr inbounds %struct.sh_dmae_device, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %dmars34 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call33, ptr %dmars34, align 4
  %cmp.i328 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i328, label %if.then37, label %if.then31.if.end41_crit_edge

if.then31.if.end41_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then37:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %call33 to i32
  br label %cleanup

if.end41:                                         ; preds = %if.then31.if.end41_crit_edge, %if.end29.if.end41_crit_edge
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 19
  %12 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 63, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 20
  %13 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 63, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 21
  %14 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 6, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 26
  %15 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %residue_granularity, align 4
  %slave_only = getelementptr inbounds %struct.sh_dmae_pdata, ptr %pdata.0, i32 0, i32 13
  %16 = ptrtoint ptr %slave_only to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %slave_only, align 4
  %17 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool42.not = icmp eq i8 %17, 0
  br i1 %tobool42.not, label %if.then43, label %if.end41.if.end44_crit_edge

if.end41.if.end44_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #12
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end41.if.end44_crit_edge
  %18 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata.0, align 4
  %tobool45.not = icmp eq ptr %19, null
  br i1 %tobool45.not, label %if.end44.if.end49_crit_edge, label %land.lhs.true

if.end44.if.end49_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

land.lhs.true:                                    ; preds = %if.end44
  %slave_num = getelementptr inbounds %struct.sh_dmae_pdata, ptr %pdata.0, i32 0, i32 1
  %20 = ptrtoint ptr %slave_num to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %slave_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool46.not = icmp eq i32 %21, 0
  br i1 %tobool46.not, label %land.lhs.true.if.end49_crit_edge, label %if.then47

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then47:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %cap_mask48 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask48) #12
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %land.lhs.true.if.end49_crit_edge, %if.end44.if.end49_crit_edge
  %copy_align = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 10
  %22 = ptrtoint ptr %copy_align to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %copy_align, align 4
  %ops = getelementptr inbounds %struct.shdma_dev, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @sh_dmae_shdma_ops, ptr %ops, align 4
  %desc_size = getelementptr inbounds %struct.shdma_dev, ptr %call.i, i32 0, i32 3
  %24 = ptrtoint ptr %desc_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 144, ptr %desc_size, align 4
  %25 = ptrtoint ptr %channel_num to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %channel_num, align 4
  %call55 = tail call i32 @shdma_init(ptr noundef %dev, ptr noundef nonnull %call.i, i32 noundef %26) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp = icmp slt i32 %call55, 0
  br i1 %cmp, label %if.end49.eshdma_crit_edge, label %if.end57

if.end49.eshdma_crit_edge:                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %eshdma

if.end57:                                         ; preds = %if.end49
  %pdata58 = getelementptr inbounds %struct.sh_dmae_device, ptr %call.i, i32 0, i32 2
  %27 = ptrtoint ptr %pdata58 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %pdata.0, ptr %pdata58, align 4
  %chcr_offset = getelementptr inbounds %struct.sh_dmae_pdata, ptr %pdata.0, i32 0, i32 11
  %28 = ptrtoint ptr %chcr_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chcr_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool59.not = icmp eq i32 %29, 0
  %spec.select = select i1 %tobool59.not, i32 12, i32 %29
  %30 = getelementptr inbounds %struct.sh_dmae_device, ptr %call.i, i32 0, i32 6
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %spec.select, ptr %30, align 4
  %chcr_ie_bit = getelementptr inbounds %struct.sh_dmae_pdata, ptr %pdata.0, i32 0, i32 12
  %32 = ptrtoint ptr %chcr_ie_bit to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %chcr_ie_bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool66.not = icmp eq i32 %33, 0
  %.sink377 = select i1 %tobool66.not, i32 4, i32 %33
  %34 = getelementptr inbounds %struct.sh_dmae_device, ptr %call.i, i32 0, i32 7
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink377, ptr %34, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #12
  %call.i329 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i329)
  %cmp76 = icmp slt i32 %call.i329, 0
  br i1 %cmp76, label %do.end, label %if.end57.if.end79_crit_edge

if.end57.if.end79_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

do.end:                                           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call.i329) #15
  br label %if.end79

if.end79:                                         ; preds = %do.end, %if.end57.if.end79_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @sh_dmae_lock) #12
  %node = getelementptr inbounds %struct.sh_dmae_device, ptr %call.i, i32 0, i32 3
  %37 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @sh_dmae_devices, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %37, ptr noundef nonnull @sh_dmae_devices) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end79.list_add_tail_rcu.exit_crit_edge

if.end79.list_add_tail_rcu.exit_crit_edge:        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @sh_dmae_devices, ptr %node, align 4
  %prev2.i.i = getelementptr inbounds %struct.sh_dmae_device, ptr %call.i, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %37, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !99
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %node, ptr %37, align 4
  store ptr %node, ptr getelementptr inbounds (%struct.list_head, ptr @sh_dmae_devices, i32 0, i32 1), align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %if.end79.list_add_tail_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @sh_dmae_lock) #12
  %call80 = tail call fastcc i32 @sh_dmae_rst(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %list_add_tail_rcu.exit.rst_err_crit_edge

list_add_tail_rcu.exit.rst_err_crit_edge:         ; preds = %list_add_tail_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rst_err

if.end83:                                         ; preds = %list_add_tail_rcu.exit
  %call84 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 1) #12
  %tobool85.not = icmp eq ptr %call84, null
  %not.tobool85.not = xor i1 %tobool85.not, true
  %. = zext i1 %not.tobool85.not to i32
  %call10.call84 = select i1 %tobool85.not, ptr %call10, ptr %call84
  %cmp89 = icmp eq ptr %call10.call84, %call10
  br i1 %cmp89, label %if.end83.if.then92_crit_edge, label %lor.lhs.false90

if.end83.if.then92_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then92

lor.lhs.false90:                                  ; preds = %if.end83
  %flags = getelementptr inbounds %struct.resource, ptr %call10, i32 0, i32 3
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 4
  %and = and i32 %42, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and)
  %cmp91 = icmp eq i32 %and, 16
  br i1 %cmp91, label %lor.lhs.false90.if.then92_crit_edge, label %lor.lhs.false90.if.end93_crit_edge

lor.lhs.false90.if.end93_crit_edge:               ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

lor.lhs.false90.if.then92_crit_edge:              ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then92

if.then92:                                        ; preds = %lor.lhs.false90.if.then92_crit_edge, %if.end83.if.then92_crit_edge
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %lor.lhs.false90.if.end93_crit_edge
  %irqflags.0 = phi i32 [ 128, %if.then92 ], [ 0, %lor.lhs.false90.if.end93_crit_edge ]
  %43 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %call10, align 4
  %call.i330 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %44, ptr noundef nonnull @sh_dmae_err, ptr noundef null, i32 noundef %irqflags.0, ptr noundef nonnull @.str.5, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i330)
  %tobool96.not = icmp eq i32 %call.i330, 0
  br i1 %tobool96.not, label %if.end102, label %do.end100

do.end100:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %44, i32 noundef %call.i330) #15
  br label %rst_err

if.end102:                                        ; preds = %if.end93
  %45 = ptrtoint ptr %call10.call84 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %call10.call84, align 4
  %end = getelementptr inbounds %struct.resource, ptr %call10.call84, i32 0, i32 1
  %47 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp104 = icmp eq i32 %46, %48
  br i1 %cmp104, label %land.lhs.true105, label %if.end102.if.else118_crit_edge

if.end102.if.else118_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else118

land.lhs.true105:                                 ; preds = %if.end102
  %call106 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 1) #12
  %tobool107.not = icmp eq ptr %call106, null
  br i1 %tobool107.not, label %for.cond.preheader, label %land.lhs.true105.if.else118_crit_edge

land.lhs.true105.if.else118_crit_edge:            ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else118

for.cond.preheader:                               ; preds = %land.lhs.true105
  %49 = ptrtoint ptr %channel_num to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %channel_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp110357 = icmp sgt i32 %50, 0
  br i1 %cmp110357, label %for.body.lr.ph, label %for.cond.preheader.if.end182_crit_edge

for.cond.preheader.if.end182_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end182

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %51 = ptrtoint ptr %call10.call84 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %call10.call84, align 4
  %53 = ptrtoint ptr %chan_irq to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %chan_irq, align 4
  %54 = ptrtoint ptr %chan_flag to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 128, ptr %chan_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %exitcond375.not = icmp eq i32 %50, 1
  br i1 %exitcond375.not, label %for.body.lr.ph.for.body165.lr.ph_crit_edge, label %for.body.1

for.body.lr.ph.for.body165.lr.ph_crit_edge:       ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body165.lr.ph

for.body.1:                                       ; preds = %for.body.lr.ph
  %arrayidx.1 = getelementptr inbounds [20 x i32], ptr %chan_irq, i32 0, i32 1
  %55 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %52, ptr %arrayidx.1, align 4
  %arrayidx114.1 = getelementptr inbounds [20 x i32], ptr %chan_flag, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx114.1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 128, ptr %arrayidx114.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %exitcond375.1.not = icmp eq i32 %50, 2
  br i1 %exitcond375.1.not, label %for.body.1.for.body165.lr.ph_crit_edge, label %for.body.2

for.body.1.for.body165.lr.ph_crit_edge:           ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body165.lr.ph

for.body.2:                                       ; preds = %for.body.1
  %arrayidx.2 = getelementptr inbounds [20 x i32], ptr %chan_irq, i32 0, i32 2
  %57 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %52, ptr %arrayidx.2, align 4
  %arrayidx114.2 = getelementptr inbounds [20 x i32], ptr %chan_flag, i32 0, i32 2
  %58 = ptrtoint ptr %arrayidx114.2 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 128, ptr %arrayidx114.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %50)
  %exitcond375.2.not = icmp eq i32 %50, 3
  br i1 %exitcond375.2.not, label %for.body.2.for.body165.lr.ph_crit_edge, label %for.body.3

for.body.2.for.body165.lr.ph_crit_edge:           ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body165.lr.ph

for.body.3:                                       ; preds = %for.body.2
  %arrayidx.3 = getelementptr inbounds [20 x i32], ptr %chan_irq, i32 0, i32 3
  %59 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %52, ptr %arrayidx.3, align 4
  %arrayidx114.3 = getelementptr inbounds [20 x i32], ptr %chan_flag, i32 0, i32 3
  %60 = ptrtoint ptr %arrayidx114.3 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 128, ptr %arrayidx114.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %50)
  %exitcond375.3.not = icmp eq i32 %50, 4
  br i1 %exitcond375.3.not, label %for.body.3.for.body165.lr.ph_crit_edge, label %for.body.4

for.body.3.for.body165.lr.ph_crit_edge:           ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body165.lr.ph

for.body.4:                                       ; preds = %for.body.3
  %arrayidx.4 = getelementptr inbounds [20 x i32], ptr %chan_irq, i32 0, i32 4
  %61 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %52, ptr %arrayidx.4, align 4
  %arrayidx114.4 = getelementptr inbounds [20 x i32], ptr %chan_flag, i32 0, i32 4
  %62 = ptrtoint ptr %arrayidx114.4 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 128, ptr %arrayidx114.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %50)
  %exitcond375.4.not = icmp eq i32 %50, 5
  br i1 %exitcond375.4.not, label %for.body.4.for.body165.lr.ph_crit_edge, label %for.body.5

for.body.4.for.body165.lr.ph_crit_edge:           ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body165.lr.ph

for.body.5:                                       ; preds = %for.body.4
  %arrayidx.5 = getelementptr inbounds [20 x i32], ptr %chan_irq, i32 0, i32 5
  %63 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %52, ptr %arrayidx.5, align 4
  %arrayidx114.5 = getelementptr inbounds [20 x i32], ptr %chan_flag, i32 0, i32 5
  %64 = ptrtoint ptr %arrayidx114.5 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 128, ptr %arrayidx114.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %50)
  %exitcond375.5.not = icmp eq i32 %50, 6
  br i1 %exitcond375.5.not, label %for.body.5.for.body165.lr.ph_crit_edge, label %for.body.6

for.body.5.for.body165.lr.ph_crit_edge:           ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body165.lr.ph

for.body.6:                                       ; preds = %for.body.5
  %arrayidx.6 = getelementptr inbounds [20 x i32], ptr %chan_irq, i32 0, i32 6
  %65 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %52, ptr %arrayidx.6, align 4
  %arrayidx114.6 = getelementptr inbounds [20 x i32], ptr %chan_flag, i32 0, i32 6
  %66 = ptrtoint ptr %arrayidx114.6 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 128, ptr %arrayidx114.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %50)
  %exitcond375.6.not = icmp eq i32 %50, 7
  br i1 %exitcond375.6.not, label %for.body.6.for.body165.lr.ph_crit_edge, label %for.body.7

for.body.6.for.body165.lr.ph_crit_edge:           ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body165.lr.ph

for.body.7:                                       ; preds = %for.body.6
  %arrayidx.7 = getelementptr inbounds [20 x i32], ptr %chan_irq, i32 0, i32 7
  %67 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %52, ptr %arrayidx.7, align 4
  %arrayidx114.7 = getelementptr inbounds [20 x i32], ptr %chan_flag, i32 0, i32 7
  %68 = ptrtoint ptr %arrayidx114.7 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 128, ptr %arrayidx114.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %50)
  %exitcond375.7.not = icmp eq i32 %50, 8
  br i1 %exitcond375.7.not, label %for.body.7.for.body165.lr.ph_crit_edge, label %for.body.8

for.body.7.for.body165.lr.ph_crit_edge:           ; preds = %for.body.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body165.lr.ph

for.body.8:                                       ; preds = %for.body.7
  %arrayidx.8 = getelementptr inbounds [20 x i32], ptr %chan_irq, i32 0, i32 8
  %69 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %52, ptr %arrayidx.8, align 4
  %arrayidx114.8 = getelementptr inbounds [20 x i32], ptr %chan_flag, i32 0, i32 8
  %70 = ptrtoint ptr %arrayidx114.8 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 128, ptr %arrayidx114.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %50)
  %exitcond375.8.not = icmp eq i32 %50, 9
  br i1 %exitcond375.8.not, label %for.body.8.for.body165.lr.ph_crit_edge, label %for.body.9

for.body.8.for.body165.lr.ph_crit_edge:           ; preds = %for.body.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body165.lr.ph

for.body.9:                                       ; preds = %for.body.8
  %arrayidx.9 = getelementptr inbounds [20 x i32], ptr %chan_irq, i32 0, i32 9
  %71 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %52, ptr %arrayidx.9, align 4
  %arrayidx114.9 = getelementptr inbounds [20 x i32], ptr %chan_flag, i32 0, i32 9
  %72 = ptrtoint ptr %arrayidx114.9 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 128, ptr %arrayidx114.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %50)
  %exitcond375.9.not = icmp eq i32 %50, 10
  br i1 %exitcond375.9.not, label %for.body.9.for.body165.lr.ph_crit_edge, label %for.body.10

for.body.9.for.body165.lr.ph_crit_edge:           ; preds = %for.body.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body165.lr.ph

for.body.10:                                      ; preds = %for.body.9
  %arrayidx.10 = getelementptr inbounds [20 x i32], ptr %chan_irq, i32 0, i32 10
  %73 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %52, ptr %arrayidx.10, align 4
  %arrayidx114.10 = getelementptr inbounds [20 x i32], ptr %chan_flag, i32 0, i32 10
  %74 = ptrtoint ptr %arrayidx114.10 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 128, ptr %arrayidx114.10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %50)
  %exitcond375.10.not = icmp eq i32 %50, 11
  br i1 %exitcond375.10.not, label %for.body.10.for.body165.lr.ph_crit_edge, label %for.body.11

for.body.10.for.body165.lr.ph_crit_edge:          ; preds = %for.body.10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body165.lr.ph

for.body.11:                                      ; preds = %for.body.10
  %arrayidx.11 = getelementptr inbounds [20 x i32], ptr %chan_irq, i32 0, i32 11
  %75 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %52, ptr %arrayidx.11, align 4
  %arrayidx114.11 = getelementptr inbounds [20 x i32], ptr %chan_flag, i32 0, i32 11
  %76 = ptrtoint ptr %arrayidx114.11 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 128, ptr %arrayidx114.11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %50)
  %exitcond375.11.not = icmp eq i32 %50, 12
  br i1 %exitcond375.11.not, label %for.body.11.for.body165.lr.ph_crit_edge, label %for.body.12

for.body.11.for.body165.lr.ph_crit_edge:          ; preds = %for.body.11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body165.lr.ph

for.body.12:                                      ; preds = %for.body.11
  %arrayidx.12 = getelementptr inbounds [20 x i32], ptr %chan_irq, i32 0, i32 12
  %77 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %52, ptr %arrayidx.12, align 4
  %arrayidx114.12 = getelementptr inbounds [20 x i32], ptr %chan_flag, i32 0, i32 12
  %78 = ptrtoint ptr %arrayidx114.12 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 128, ptr %arrayidx114.12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %50)
  %exitcond375.12.not = icmp eq i32 %50, 13
  br i1 %exitcond375.12.not, label %for.body.12.for.body165.lr.ph_crit_edge, label %for.body.13

for.body.12.for.body165.lr.ph_crit_edge:          ; preds = %for.body.12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body165.lr.ph

for.body.13:                                      ; preds = %for.body.12
  %arrayidx.13 = getelementptr inbounds [20 x i32], ptr %chan_irq, i32 0, i32 13
  %79 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %52, ptr %arrayidx.13, align 4
  %arrayidx114.13 = getelementptr inbounds [20 x i32], ptr %chan_flag, i32 0, i32 13
  %80 = ptrtoint ptr %arrayidx114.13 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 128, ptr %arrayidx114.13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %50)
  %exitcond375.13.not = icmp eq i32 %50, 14
  br i1 %exitcond375.13.not, label %for.body.13.for.body165.lr.ph_crit_edge, label %for.body.14

for.body.13.for.body165.lr.ph_crit_edge:          ; preds = %for.body.13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body165.lr.ph

for.body.14:                                      ; preds = %for.body.13
  %arrayidx.14 = getelementptr inbounds [20 x i32], ptr %chan_irq, i32 0, i32 14
  %81 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %52, ptr %arrayidx.14, align 4
  %arrayidx114.14 = getelementptr inbounds [20 x i32], ptr %chan_flag, i32 0, i32 14
  %82 = ptrtoint ptr %arrayidx114.14 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 128, ptr %arrayidx114.14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %50)
  %exitcond375.14.not = icmp eq i32 %50, 15
  br i1 %exitcond375.14.not, label %for.body.14.for.body165.lr.ph_crit_edge, label %for.body.15

for.body.14.for.body165.lr.ph_crit_edge:          ; preds = %for.body.14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body165.lr.ph

for.body.15:                                      ; preds = %for.body.14
  %arrayidx.15 = getelementptr inbounds [20 x i32], ptr %chan_irq, i32 0, i32 15
  %83 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %52, ptr %arrayidx.15, align 4
  %arrayidx114.15 = getelementptr inbounds [20 x i32], ptr %chan_flag, i32 0, i32 15
  %84 = ptrtoint ptr %arrayidx114.15 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 128, ptr %arrayidx114.15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %50)
  %exitcond375.15.not = icmp eq i32 %50, 16
  br i1 %exitcond375.15.not, label %for.body.15.for.body165.lr.ph_crit_edge, label %for.body.16

for.body.15.for.body165.lr.ph_crit_edge:          ; preds = %for.body.15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body165.lr.ph

for.body.16:                                      ; preds = %for.body.15
  %arrayidx.16 = getelementptr inbounds [20 x i32], ptr %chan_irq, i32 0, i32 16
  %85 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %52, ptr %arrayidx.16, align 4
  %arrayidx114.16 = getelementptr inbounds [20 x i32], ptr %chan_flag, i32 0, i32 16
  %86 = ptrtoint ptr %arrayidx114.16 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 128, ptr %arrayidx114.16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %50)
  %exitcond375.16.not = icmp eq i32 %50, 17
  br i1 %exitcond375.16.not, label %for.body.16.for.body165.lr.ph_crit_edge, label %for.body.17

for.body.16.for.body165.lr.ph_crit_edge:          ; preds = %for.body.16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body165.lr.ph

for.body.17:                                      ; preds = %for.body.16
  %arrayidx.17 = getelementptr inbounds [20 x i32], ptr %chan_irq, i32 0, i32 17
  %87 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %52, ptr %arrayidx.17, align 4
  %arrayidx114.17 = getelementptr inbounds [20 x i32], ptr %chan_flag, i32 0, i32 17
  %88 = ptrtoint ptr %arrayidx114.17 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 128, ptr %arrayidx114.17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %50)
  %exitcond375.17.not = icmp eq i32 %50, 18
  br i1 %exitcond375.17.not, label %for.body.17.for.body165.lr.ph_crit_edge, label %for.body.18

for.body.17.for.body165.lr.ph_crit_edge:          ; preds = %for.body.17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body165.lr.ph

for.body.18:                                      ; preds = %for.body.17
  %arrayidx.18 = getelementptr inbounds [20 x i32], ptr %chan_irq, i32 0, i32 18
  %89 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %52, ptr %arrayidx.18, align 4
  %arrayidx114.18 = getelementptr inbounds [20 x i32], ptr %chan_flag, i32 0, i32 18
  %90 = ptrtoint ptr %arrayidx114.18 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 128, ptr %arrayidx114.18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %50)
  %exitcond375.18.not = icmp eq i32 %50, 19
  br i1 %exitcond375.18.not, label %for.body.18.for.body165.lr.ph_crit_edge, label %for.body.19

for.body.18.for.body165.lr.ph_crit_edge:          ; preds = %for.body.18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body165.lr.ph

for.body.19:                                      ; preds = %for.body.18
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.19 = getelementptr inbounds [20 x i32], ptr %chan_irq, i32 0, i32 19
  %91 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %52, ptr %arrayidx.19, align 4
  %arrayidx114.19 = getelementptr inbounds [20 x i32], ptr %chan_flag, i32 0, i32 19
  %92 = ptrtoint ptr %arrayidx114.19 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 128, ptr %arrayidx114.19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %50)
  %exitcond375.19.not = icmp eq i32 %50, 20
  br label %for.body165.lr.ph

if.else118:                                       ; preds = %land.lhs.true105.if.else118_crit_edge, %if.end102.if.else118_crit_edge
  %flags128 = getelementptr inbounds %struct.resource, ptr %call10, i32 0, i32 3
  br label %do.body119

do.body119:                                       ; preds = %if.end154.do.body119_crit_edge, %if.else118
  %irq_cnt.1 = phi i32 [ 0, %if.else118 ], [ %irq_cnt.2.lcssa381, %if.end154.do.body119_crit_edge ]
  %irqres.1 = phi i32 [ %., %if.else118 ], [ %inc155, %if.end154.do.body119_crit_edge ]
  %chanirq_res.1 = phi ptr [ %call10.call84, %if.else118 ], [ %call156, %if.end154.do.body119_crit_edge ]
  %93 = ptrtoint ptr %chanirq_res.1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %chanirq_res.1, align 4
  %end122 = getelementptr inbounds %struct.resource, ptr %chanirq_res.1, i32 0, i32 1
  %95 = ptrtoint ptr %end122 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %end122, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %96)
  %cmp123.not351 = icmp ugt i32 %94, %96
  br i1 %cmp123.not351, label %do.body119.if.end154_crit_edge, label %do.body119.for.body124_crit_edge

do.body119.for.body124_crit_edge:                 ; preds = %do.body119
  br label %for.body124

do.body119.if.end154_crit_edge:                   ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154

for.body124:                                      ; preds = %do.end146.for.body124_crit_edge, %do.body119.for.body124_crit_edge
  %irq_cnt.2354 = phi i32 [ %inc147, %do.end146.for.body124_crit_edge ], [ %irq_cnt.1, %do.body119.for.body124_crit_edge ]
  %i.0352 = phi i32 [ %inc150, %do.end146.for.body124_crit_edge ], [ %94, %do.body119.for.body124_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %irq_cnt.2354)
  %exitcond = icmp eq i32 %irq_cnt.2354, 20
  br i1 %exitcond, label %for.body124.for.body165.lr.ph_crit_edge, label %if.end127

for.body124.for.body165.lr.ph_crit_edge:          ; preds = %for.body124
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body165.lr.ph

if.end127:                                        ; preds = %for.body124
  %97 = ptrtoint ptr %flags128 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flags128, align 4
  %and129 = and i32 %98, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and129)
  %cmp130 = icmp eq i32 %and129, 16
  %spec.select400 = select i1 %cmp130, i32 128, i32 0
  %99 = getelementptr [20 x i32], ptr %chan_flag, i32 0, i32 %irq_cnt.2354
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %spec.select400, ptr %99, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_dmae_probe.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sh_dmae_probe, %do.end146)) #12
          to label %if.then142 [label %do.end146], !srcloc !100

if.then142:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_dmae_probe.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %i.0352, i32 noundef %irq_cnt.2354) #12
  br label %do.end146

do.end146:                                        ; preds = %if.then142, %if.end127
  %inc147 = add i32 %irq_cnt.2354, 1
  %arrayidx148 = getelementptr [20 x i32], ptr %chan_irq, i32 0, i32 %irq_cnt.2354
  %101 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %i.0352, ptr %arrayidx148, align 4
  %inc150 = add i32 %i.0352, 1
  %102 = ptrtoint ptr %end122 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %end122, align 4
  %cmp123.not = icmp ugt i32 %inc150, %103
  br i1 %cmp123.not, label %for.end151, label %do.end146.for.body124_crit_edge

do.end146.for.body124_crit_edge:                  ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body124

for.end151:                                       ; preds = %do.end146
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %inc147)
  %cmp152 = icmp sgt i32 %inc147, 19
  br i1 %cmp152, label %for.end151.for.body165.lr.ph_crit_edge, label %for.end151.if.end154_crit_edge

for.end151.if.end154_crit_edge:                   ; preds = %for.end151
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154

for.end151.for.body165.lr.ph_crit_edge:           ; preds = %for.end151
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body165.lr.ph

if.end154:                                        ; preds = %for.end151.if.end154_crit_edge, %do.body119.if.end154_crit_edge
  %irq_cnt.2.lcssa381 = phi i32 [ %inc147, %for.end151.if.end154_crit_edge ], [ %irq_cnt.1, %do.body119.if.end154_crit_edge ]
  %inc155 = add i32 %irqres.1, 1
  %call156 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef %inc155) #12
  %104 = ptrtoint ptr %channel_num to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %channel_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %irq_cnt.2.lcssa381, i32 %105)
  %cmp159 = icmp sge i32 %irq_cnt.2.lcssa381, %105
  %tobool160.not = icmp eq ptr %call156, null
  %or.cond327 = select i1 %cmp159, i1 true, i1 %tobool160.not
  br i1 %or.cond327, label %if.end162, label %if.end154.do.body119_crit_edge

if.end154.do.body119_crit_edge:                   ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body119

if.end162:                                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq_cnt.2.lcssa381)
  %cmp164363 = icmp sgt i32 %irq_cnt.2.lcssa381, 0
  br i1 %cmp164363, label %if.end162.for.body165.lr.ph_crit_edge, label %if.end162.if.end182_crit_edge

if.end162.if.end182_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end182

if.end162.for.body165.lr.ph_crit_edge:            ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body165.lr.ph

for.body165.lr.ph:                                ; preds = %if.end162.for.body165.lr.ph_crit_edge, %for.end151.for.body165.lr.ph_crit_edge, %for.body124.for.body165.lr.ph_crit_edge, %for.body.19, %for.body.18.for.body165.lr.ph_crit_edge, %for.body.17.for.body165.lr.ph_crit_edge, %for.body.16.for.body165.lr.ph_crit_edge, %for.body.15.for.body165.lr.ph_crit_edge, %for.body.14.for.body165.lr.ph_crit_edge, %for.body.13.for.body165.lr.ph_crit_edge, %for.body.12.for.body165.lr.ph_crit_edge, %for.body.11.for.body165.lr.ph_crit_edge, %for.body.10.for.body165.lr.ph_crit_edge, %for.body.9.for.body165.lr.ph_crit_edge, %for.body.8.for.body165.lr.ph_crit_edge, %for.body.7.for.body165.lr.ph_crit_edge, %for.body.6.for.body165.lr.ph_crit_edge, %for.body.5.for.body165.lr.ph_crit_edge, %for.body.4.for.body165.lr.ph_crit_edge, %for.body.3.for.body165.lr.ph_crit_edge, %for.body.2.for.body165.lr.ph_crit_edge, %for.body.1.for.body165.lr.ph_crit_edge, %for.body.lr.ph.for.body165.lr.ph_crit_edge
  %tobool175.not387 = phi i1 [ true, %if.end162.for.body165.lr.ph_crit_edge ], [ true, %for.body.18.for.body165.lr.ph_crit_edge ], [ true, %for.body.17.for.body165.lr.ph_crit_edge ], [ true, %for.body.16.for.body165.lr.ph_crit_edge ], [ true, %for.body.15.for.body165.lr.ph_crit_edge ], [ true, %for.body.14.for.body165.lr.ph_crit_edge ], [ true, %for.body.13.for.body165.lr.ph_crit_edge ], [ true, %for.body.12.for.body165.lr.ph_crit_edge ], [ true, %for.body.11.for.body165.lr.ph_crit_edge ], [ true, %for.body.10.for.body165.lr.ph_crit_edge ], [ true, %for.body.9.for.body165.lr.ph_crit_edge ], [ true, %for.body.8.for.body165.lr.ph_crit_edge ], [ true, %for.body.7.for.body165.lr.ph_crit_edge ], [ true, %for.body.6.for.body165.lr.ph_crit_edge ], [ true, %for.body.5.for.body165.lr.ph_crit_edge ], [ true, %for.body.4.for.body165.lr.ph_crit_edge ], [ true, %for.body.3.for.body165.lr.ph_crit_edge ], [ true, %for.body.2.for.body165.lr.ph_crit_edge ], [ true, %for.body.1.for.body165.lr.ph_crit_edge ], [ true, %for.body.lr.ph.for.body165.lr.ph_crit_edge ], [ %exitcond375.19.not, %for.body.19 ], [ false, %for.body124.for.body165.lr.ph_crit_edge ], [ true, %for.end151.for.body165.lr.ph_crit_edge ]
  %irq_cnt.3385 = phi i32 [ %irq_cnt.2.lcssa381, %if.end162.for.body165.lr.ph_crit_edge ], [ 19, %for.body.18.for.body165.lr.ph_crit_edge ], [ 18, %for.body.17.for.body165.lr.ph_crit_edge ], [ 17, %for.body.16.for.body165.lr.ph_crit_edge ], [ 16, %for.body.15.for.body165.lr.ph_crit_edge ], [ 15, %for.body.14.for.body165.lr.ph_crit_edge ], [ 14, %for.body.13.for.body165.lr.ph_crit_edge ], [ 13, %for.body.12.for.body165.lr.ph_crit_edge ], [ 12, %for.body.11.for.body165.lr.ph_crit_edge ], [ 11, %for.body.10.for.body165.lr.ph_crit_edge ], [ 10, %for.body.9.for.body165.lr.ph_crit_edge ], [ 9, %for.body.8.for.body165.lr.ph_crit_edge ], [ 8, %for.body.7.for.body165.lr.ph_crit_edge ], [ 7, %for.body.6.for.body165.lr.ph_crit_edge ], [ 6, %for.body.5.for.body165.lr.ph_crit_edge ], [ 5, %for.body.4.for.body165.lr.ph_crit_edge ], [ 4, %for.body.3.for.body165.lr.ph_crit_edge ], [ 3, %for.body.2.for.body165.lr.ph_crit_edge ], [ 2, %for.body.1.for.body165.lr.ph_crit_edge ], [ 1, %for.body.lr.ph.for.body165.lr.ph_crit_edge ], [ 20, %for.body.19 ], [ 20, %for.body124.for.body165.lr.ph_crit_edge ], [ 20, %for.end151.for.body165.lr.ph_crit_edge ]
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  br label %for.body165

for.body165:                                      ; preds = %for.inc172.for.body165_crit_edge, %for.body165.lr.ph
  %i.1364 = phi i32 [ 0, %for.body165.lr.ph ], [ %inc173, %for.inc172.for.body165_crit_edge ]
  %arrayidx166 = getelementptr [20 x i32], ptr %chan_irq, i32 0, i32 %i.1364
  %106 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx166, align 4
  %arrayidx167 = getelementptr [20 x i32], ptr %chan_flag, i32 0, i32 %i.1364
  %108 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx167, align 4
  %110 = ptrtoint ptr %pdata58 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pdata58, align 4
  %channel.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %channel.i, align 4
  %114 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev.i, align 4
  %call.i.i331 = tail call noalias ptr @devm_kmalloc(ptr noundef %115, i32 noundef 200, i32 noundef 3520) #12
  %tobool.not.i = icmp eq ptr %call.i.i331, null
  br i1 %tobool.not.i, label %for.body165.chan_probe_err_crit_edge, label %if.end.i

for.body165.chan_probe_err_crit_edge:             ; preds = %for.body165
  call void @__sanitizer_cov_trace_pc() #14
  br label %chan_probe_err

if.end.i:                                         ; preds = %for.body165
  %arrayidx.i = getelementptr %struct.sh_dmae_channel, ptr %113, i32 %i.1364
  %max_xfer_len.i = getelementptr inbounds %struct.shdma_chan, ptr %call.i.i331, i32 0, i32 7
  %116 = ptrtoint ptr %max_xfer_len.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 16777216, ptr %max_xfer_len.i, align 4
  tail call void @shdma_chan_probe(ptr noundef %call.i, ptr noundef nonnull %call.i.i331, i32 noundef %i.1364) #12
  %117 = ptrtoint ptr %chan_reg to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %chan_reg, align 4
  %119 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %118, i32 %120
  %base.i = getelementptr inbounds %struct.sh_dmae_chan, ptr %call.i.i331, i32 0, i32 3
  %121 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %add.ptr3.i, ptr %base.i, align 4
  %id4.i = getelementptr i8, ptr %115, i32 -12
  %122 = ptrtoint ptr %id4.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %id4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %123)
  %cmp.i332 = icmp sgt i32 %123, -1
  %dev_id.i = getelementptr inbounds %struct.sh_dmae_chan, ptr %call.i.i331, i32 0, i32 4
  br i1 %cmp.i332, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call7.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %dev_id.i, i32 noundef 16, ptr noundef nonnull @.str.24, i32 noundef %123, i32 noundef %i.1364) #12
  br label %if.end11.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call10.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %dev_id.i, i32 noundef 16, ptr noundef nonnull @.str.25, i32 noundef %i.1364) #12
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i, %if.then5.i
  %call14.i = tail call i32 @shdma_request_irq(ptr noundef nonnull %call.i.i331, i32 noundef %107, i32 noundef %109, ptr noundef %dev_id.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %for.inc172, label %do.end.i

do.end.i:                                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %124 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.26, i32 noundef %i.1364, i32 noundef %call14.i) #15
  tail call void @shdma_chan_remove(ptr noundef nonnull %call.i.i331) #12
  br label %chan_probe_err

for.inc172:                                       ; preds = %if.end11.i
  %arrayidx20.i = getelementptr %struct.sh_dmae_device, ptr %call.i, i32 0, i32 1, i32 %i.1364
  %126 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call.i.i331, ptr %arrayidx20.i, align 4
  %inc173 = add nuw nsw i32 %i.1364, 1
  %exitcond376.not = icmp eq i32 %inc173, %irq_cnt.3385
  br i1 %exitcond376.not, label %for.end174, label %for.inc172.for.body165_crit_edge

for.inc172.for.body165_crit_edge:                 ; preds = %for.inc172
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body165

for.end174:                                       ; preds = %for.inc172
  br i1 %tobool175.not387, label %for.end174.if.end182_crit_edge, label %do.end179

for.end174.if.end182_crit_edge:                   ; preds = %for.end174
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end182

do.end179:                                        ; preds = %for.end174
  call void @__sanitizer_cov_trace_pc() #14
  %127 = ptrtoint ptr %channel_num to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %channel_num, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %128, i32 noundef 20) #15
  br label %if.end182

if.end182:                                        ; preds = %do.end179, %for.end174.if.end182_crit_edge, %if.end162.if.end182_crit_edge, %for.cond.preheader.if.end182_crit_edge
  %call.i334 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #12
  %call187 = tail call i32 @dma_async_device_register(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %cmp188 = icmp slt i32 %call187, 0
  br i1 %cmp188, label %edmadevreg, label %if.end182.cleanup_crit_edge

if.end182.cleanup_crit_edge:                      ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

edmadevreg:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #14
  %call.i335 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 5) #12
  br label %chan_probe_err

chan_probe_err:                                   ; preds = %edmadevreg, %do.end.i, %for.body165.chan_probe_err_crit_edge
  %err.0 = phi i32 [ %call187, %edmadevreg ], [ %call14.i, %do.end.i ], [ -12, %for.body165.chan_probe_err_crit_edge ]
  tail call fastcc void @sh_dmae_chan_remove(ptr noundef nonnull %call.i)
  br label %rst_err

rst_err:                                          ; preds = %chan_probe_err, %do.end100, %list_add_tail_rcu.exit.rst_err_crit_edge
  %err.1 = phi i32 [ %call80, %list_add_tail_rcu.exit.rst_err_crit_edge ], [ %call.i330, %do.end100 ], [ %err.0, %chan_probe_err ]
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @sh_dmae_lock) #12
  %call.i.i336 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #12
  br i1 %call.i.i336, label %if.end.i.i337, label %rst_err.list_del_rcu.exit_crit_edge

rst_err.list_del_rcu.exit_crit_edge:              ; preds = %rst_err
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_rcu.exit

if.end.i.i337:                                    ; preds = %rst_err
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.sh_dmae_device, ptr %call.i, i32 0, i32 3, i32 1
  %129 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %prev.i.i, align 4
  %131 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %130, ptr %prev1.i.i.i, align 4
  %134 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %132, ptr %130, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i337, %rst_err.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.sh_dmae_device, ptr %call.i, i32 0, i32 3, i32 1
  %135 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @sh_dmae_lock) #12
  %call.i338 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #12
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #12
  tail call void @shdma_cleanup(ptr noundef nonnull %call.i) #12
  br label %eshdma

eshdma:                                           ; preds = %list_del_rcu.exit, %if.end49.eshdma_crit_edge
  %err.2 = phi i32 [ %call55, %if.end49.eshdma_crit_edge ], [ %err.1, %list_del_rcu.exit ]
  tail call void @synchronize_rcu() #12
  br label %cleanup

cleanup:                                          ; preds = %eshdma, %if.end182.cleanup_crit_edge, %if.then37, %if.then26, %if.end15.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then26 ], [ %11, %if.then37 ], [ %err.2, %eshdma ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end7.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ], [ %call187, %if.end182.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %chan_irq) #12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %chan_flag) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shdma_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sh_dmae_rst(ptr nocapture noundef readonly %shdev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @sh_dmae_lock) #12
  %chan_reg.i = getelementptr inbounds %struct.sh_dmae_device, ptr %shdev, i32 0, i32 4
  %0 = ptrtoint ptr %chan_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 64
  %pdata.i = getelementptr inbounds %struct.sh_dmae_device, ptr %shdev, i32 0, i32 2
  %2 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata.i, align 4
  %dmaor_is_32bit.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %dmaor_is_32bit.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %dmaor_is_32bit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !101
  %conv.i = trunc i32 %5 to i16
  br label %dmaor_read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #12, !srcloc !102
  br label %dmaor_read.exit

dmaor_read.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i16 [ %conv.i, %if.then.i ], [ %6, %if.else.i ]
  %7 = and i16 %retval.0.i, -8
  %8 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdata.i, align 4
  %chclr_present = getelementptr inbounds %struct.sh_dmae_pdata, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %chclr_present to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %chclr_present, align 4
  %11 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %dmaor_read.exit.if.end13_crit_edge, label %for.cond.preheader

dmaor_read.exit.if.end13_crit_edge:               ; preds = %dmaor_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.cond.preheader:                               ; preds = %dmaor_read.exit
  %12 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata.i, align 4
  %channel_num88 = getelementptr inbounds %struct.sh_dmae_pdata, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %channel_num88 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel_num88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp989 = icmp sgt i32 %15, 0
  br i1 %cmp989, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end13_crit_edge

for.cond.preheader.if.end13_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.090 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sh_dmae_device, ptr %shdev, i32 0, i32 1, i32 %i.090
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %tobool11.not = icmp eq ptr %17, null
  br i1 %tobool11.not, label %for.body.if.end_crit_edge, label %if.then12

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then12:                                        ; preds = %for.body
  %dma_chan.i = getelementptr inbounds %struct.shdma_chan, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_chan.i, align 4
  %pdata.i63 = getelementptr inbounds %struct.sh_dmae_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %pdata.i63 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdata.i63, align 4
  %channel.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %channel.i, align 4
  %id.i = getelementptr inbounds %struct.shdma_chan, ptr %17, i32 0, i32 8
  %24 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id.i, align 4
  %chclr_bitwise.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %21, i32 0, i32 13
  %26 = ptrtoint ptr %chclr_bitwise.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i64 = load i8, ptr %chclr_bitwise.i, align 4
  %27 = and i8 %bf.load.i64, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i65 = icmp eq i8 %27, 0
  br i1 %tobool.not.i65, label %if.then12.channel_clear.exit_crit_edge, label %cond.true.i

if.then12.channel_clear.exit_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %channel_clear.exit

cond.true.i:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %chclr_bit.i = getelementptr %struct.sh_dmae_channel, ptr %23, i32 %25, i32 4
  %28 = ptrtoint ptr %chclr_bit.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %chclr_bit.i, align 1
  %conv.i66 = zext i8 %29 to i32
  %shl.i = shl nuw i32 1, %conv.i66
  br label %channel_clear.exit

channel_clear.exit:                               ; preds = %cond.true.i, %if.then12.channel_clear.exit_crit_edge
  %cond.i = phi i32 [ %shl.i, %cond.true.i ], [ 0, %if.then12.channel_clear.exit_crit_edge ]
  %chan_reg.i67 = getelementptr inbounds %struct.sh_dmae_device, ptr %19, i32 0, i32 4
  %30 = ptrtoint ptr %chan_reg.i67 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chan_reg.i67, align 4
  %chclr_offset.i = getelementptr %struct.sh_dmae_channel, ptr %23, i32 %25, i32 2
  %32 = ptrtoint ptr %chclr_offset.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %chclr_offset.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %31, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %cond.i) #12, !srcloc !103
  br label %if.end

if.end:                                           ; preds = %channel_clear.exit, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %i.090, 1
  %34 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdata.i, align 4
  %channel_num = getelementptr inbounds %struct.sh_dmae_pdata, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %channel_num to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %channel_num, align 4
  %cmp9 = icmp slt i32 %inc, %37
  br i1 %cmp9, label %if.end.for.body_crit_edge, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end13:                                         ; preds = %if.end.if.end13_crit_edge, %for.cond.preheader.if.end13_crit_edge, %dmaor_read.exit.if.end13_crit_edge
  %38 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdata.i, align 4
  %dmaor_init = getelementptr inbounds %struct.sh_dmae_pdata, ptr %39, i32 0, i32 10
  %40 = ptrtoint ptr %dmaor_init to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %dmaor_init, align 4
  %or62 = or i16 %41, %7
  %42 = ptrtoint ptr %chan_reg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chan_reg.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %43, i32 64
  %dmaor_is_32bit.i71 = getelementptr inbounds %struct.sh_dmae_pdata, ptr %39, i32 0, i32 13
  %44 = ptrtoint ptr %dmaor_is_32bit.i71 to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load.i72 = load i8, ptr %dmaor_is_32bit.i71, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i72)
  %tobool.not.i73 = icmp sgt i8 %bf.load.i72, -1
  br i1 %tobool.not.i73, label %if.else.i76, label %if.then.i75

if.then.i75:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i74 = zext i16 %or62 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %conv.i74) #12, !srcloc !103
  br label %dmaor_write.exit

if.else.i76:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i69, i16 %or62) #12, !srcloc !104
  br label %dmaor_write.exit

dmaor_write.exit:                                 ; preds = %if.else.i76, %if.then.i75
  %45 = ptrtoint ptr %chan_reg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chan_reg.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %46, i32 64
  %47 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdata.i, align 4
  %dmaor_is_32bit.i80 = getelementptr inbounds %struct.sh_dmae_pdata, ptr %48, i32 0, i32 13
  %49 = ptrtoint ptr %dmaor_is_32bit.i80 to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load.i81 = load i8, ptr %dmaor_is_32bit.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i81)
  %tobool.not.i82 = icmp sgt i8 %bf.load.i81, -1
  br i1 %tobool.not.i82, label %if.else.i85, label %if.then.i84

if.then.i84:                                      ; preds = %dmaor_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78) #12, !srcloc !101
  %conv.i83 = trunc i32 %50 to i16
  br label %dmaor_read.exit87

if.else.i85:                                      ; preds = %dmaor_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i78) #12, !srcloc !102
  br label %dmaor_read.exit87

dmaor_read.exit87:                                ; preds = %if.else.i85, %if.then.i84
  %retval.0.i86 = phi i16 [ %conv.i83, %if.then.i84 ], [ %51, %if.else.i85 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @sh_dmae_lock, i32 noundef %call2) #12
  %conv19 = zext i16 %retval.0.i86 to i32
  %and20 = and i32 %conv19, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end26, label %do.end25

do.end25:                                         ; preds = %dmaor_read.exit87
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.dma_device, ptr %shdev, i32 0, i32 15
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %53, ptr noundef nonnull @.str.18) #15
  br label %cleanup

if.end26:                                         ; preds = %dmaor_read.exit87
  %54 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdata.i, align 4
  %dmaor_init28 = getelementptr inbounds %struct.sh_dmae_pdata, ptr %55, i32 0, i32 10
  %56 = ptrtoint ptr %dmaor_init28 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %dmaor_init28, align 4
  %conv29 = zext i16 %57 to i32
  %neg = xor i32 %conv19, -1
  %and31 = and i32 %conv29, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end26.cleanup_crit_edge, label %do.end36

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end36:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %dev39 = getelementptr inbounds %struct.dma_device, ptr %shdev, i32 0, i32 15
  %58 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev39, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %59, ptr noundef nonnull @.str.22, i32 noundef %conv19, i32 noundef %conv29) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %if.end26.cleanup_crit_edge, %do.end25
  %retval.0 = phi i32 [ -5, %do.end25 ], [ 0, %do.end36 ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_dmae_err(i32 noundef %irq, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_reg.i = getelementptr inbounds %struct.sh_dmae_device, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %chan_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 64
  %pdata.i = getelementptr inbounds %struct.sh_dmae_device, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata.i, align 4
  %dmaor_is_32bit.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %dmaor_is_32bit.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %dmaor_is_32bit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !101
  %conv.i = trunc i32 %5 to i16
  br label %dmaor_read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #12, !srcloc !102
  br label %dmaor_read.exit

dmaor_read.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i16 [ %conv.i, %if.then.i ], [ %6, %if.else.i ]
  %7 = and i16 %retval.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %dmaor_read.exit.cleanup_crit_edge, label %if.end

dmaor_read.exit.cleanup_crit_edge:                ; preds = %dmaor_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %dmaor_read.exit
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @sh_dmae_lock) #12
  %8 = ptrtoint ptr %chan_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan_reg.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 64
  %10 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata.i, align 4
  %dmaor_is_32bit.i.i.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %dmaor_is_32bit.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i.i.i = load i8, ptr %dmaor_is_32bit.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !101
  %conv.i.i.i = trunc i32 %13 to i16
  br label %dmaor_read.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #12, !srcloc !102
  br label %dmaor_read.exit.i.i

dmaor_read.exit.i.i:                              ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i16 [ %conv.i.i.i, %if.then.i.i.i ], [ %14, %if.else.i.i.i ]
  %15 = and i16 %retval.0.i.i.i, -8
  %16 = ptrtoint ptr %chan_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chan_reg.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %17, i32 64
  %18 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata.i, align 4
  %dmaor_is_32bit.i12.i.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %dmaor_is_32bit.i12.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i13.i.i = load i8, ptr %dmaor_is_32bit.i12.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i13.i.i)
  %tobool.not.i14.i.i = icmp sgt i8 %bf.load.i13.i.i, -1
  br i1 %tobool.not.i14.i.i, label %if.else.i17.i.i, label %if.then.i16.i.i

if.then.i16.i.i:                                  ; preds = %dmaor_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i15.i.i = zext i16 %15 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %conv.i15.i.i) #12, !srcloc !103
  br label %sh_dmae_reset.exit

if.else.i17.i.i:                                  ; preds = %dmaor_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i.i, i16 %15) #12, !srcloc !104
  br label %sh_dmae_reset.exit

sh_dmae_reset.exit:                               ; preds = %if.else.i17.i.i, %if.then.i16.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @sh_dmae_lock, i32 noundef %call2.i.i) #12
  %call.i = tail call zeroext i1 @shdma_reset(ptr noundef %data) #12
  %call1.i = tail call fastcc i32 @sh_dmae_rst(ptr noundef %data) #12
  br label %cleanup

cleanup:                                          ; preds = %sh_dmae_reset.exit, %dmaor_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sh_dmae_reset.exit ], [ 0, %dmaor_read.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_dmae_chan_remove(ptr nocapture noundef readonly %shdev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %schan1 = getelementptr inbounds %struct.shdma_dev, ptr %shdev, i32 0, i32 1
  %chancnt = getelementptr inbounds %struct.dma_device, ptr %shdev, i32 0, i32 1
  %0 = ptrtoint ptr %chancnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chancnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp20.not = icmp eq i32 %1, 0
  br i1 %cmp20.not, label %entry.for.end_crit_edge, label %do.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body.preheader:                                ; preds = %entry
  %2 = ptrtoint ptr %schan1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %schan1, align 4
  br label %do.body

do.body:                                          ; preds = %do.end11.do.body_crit_edge, %do.body.preheader
  %schan.022.in = phi ptr [ %arrayidx14, %do.end11.do.body_crit_edge ], [ %3, %do.body.preheader ]
  %i.021 = phi i32 [ %inc, %do.end11.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %4 = ptrtoint ptr %schan.022.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %schan.022 = load ptr, ptr %schan.022.in, align 4
  %tobool.not = icmp eq ptr %schan.022, null
  br i1 %tobool.not, label %do.body6, label %do.end11, !prof !105

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/sh/shdmac.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 570, 0\0A.popsection", ""() #12, !srcloc !106
  unreachable

do.end11:                                         ; preds = %do.body
  tail call void @shdma_chan_remove(ptr noundef nonnull %schan.022) #12
  %5 = ptrtoint ptr %schan1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %schan1, align 4
  %inc = add nuw i32 %i.021, 1
  %arrayidx14 = getelementptr ptr, ptr %6, i32 %inc
  %7 = ptrtoint ptr %chancnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chancnt, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %do.end11.do.body_crit_edge, label %do.end11.for.end_crit_edge

do.end11.for.end_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.end11.do.body_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.end:                                          ; preds = %do.end11.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @shdma_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @sh_dmae_desc_completed(ptr nocapture noundef readonly %schan, ptr nocapture noundef readonly %sdesc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.sh_dmae_chan, ptr %schan, i32 0, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #12, !srcloc !101
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !101
  %direction = getelementptr inbounds %struct.shdma_desc, ptr %sdesc, i32 0, i32 2
  %6 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  %. = select i1 %cmp, i32 -8, i32 -12
  %.24 = select i1 %cmp, i32 %5, i32 %2
  %dar = getelementptr i8, ptr %sdesc, i32 %.
  %8 = ptrtoint ptr %dar to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dar, align 4
  %tcr = getelementptr i8, ptr %sdesc, i32 -4
  %10 = ptrtoint ptr %tcr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tcr, align 4
  %add = add i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %.24)
  %cmp6 = icmp eq i32 %add, %.24
  ret i1 %cmp6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_dmae_halt(ptr nocapture noundef readonly %schan) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_chan.i = getelementptr inbounds %struct.shdma_chan, ptr %schan, i32 0, i32 3
  %0 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_chan.i, align 4
  %base.i.i = getelementptr inbounds %struct.sh_dmae_chan, ptr %schan, i32 0, i32 3
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %chcr_offset.i.i = getelementptr inbounds %struct.sh_dmae_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %chcr_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chcr_offset.i.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #12, !srcloc !101
  %chcr_ie_bit.i = getelementptr inbounds %struct.sh_dmae_device, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %chcr_ie_bit.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chcr_ie_bit.i, align 4
  %9 = and i32 %8, -4
  %neg.i = xor i32 %9, -4
  %and.i = and i32 %neg.i, %6
  %10 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_chan.i, align 4
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %chcr_offset.i6.i = getelementptr inbounds %struct.sh_dmae_device, ptr %11, i32 0, i32 6
  %14 = ptrtoint ptr %chcr_offset.i6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chcr_offset.i6.i, align 4
  %add.ptr1.i7.i = getelementptr i8, ptr %13, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i, i32 %and.i) #12, !srcloc !103
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @sh_dmae_channel_busy(ptr nocapture noundef readonly %schan) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_chan.i.i = getelementptr inbounds %struct.shdma_chan, ptr %schan, i32 0, i32 3
  %0 = ptrtoint ptr %dma_chan.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_chan.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.sh_dmae_chan, ptr %schan, i32 0, i32 3
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %chcr_offset.i.i = getelementptr inbounds %struct.sh_dmae_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %chcr_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chcr_offset.i.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #12, !srcloc !101
  %and.i = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1
  ret i1 %cmp.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sh_dmae_slave_addr(ptr nocapture noundef readonly %schan) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_addr = getelementptr inbounds %struct.sh_dmae_chan, ptr %schan, i32 0, i32 6
  %0 = ptrtoint ptr %slave_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slave_addr, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sh_dmae_desc_setup(ptr nocapture noundef readonly %schan, ptr nocapture noundef writeonly %sdesc, i32 noundef %src, i32 noundef %dst, ptr nocapture noundef %len) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %max_xfer_len = getelementptr inbounds %struct.shdma_chan, ptr %schan, i32 0, i32 7
  %2 = ptrtoint ptr %max_xfer_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_xfer_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ugt i32 %1, %3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %sdesc, i32 -12
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %src, ptr %add.ptr, align 4
  %dar = getelementptr i8, ptr %sdesc, i32 -8
  %6 = ptrtoint ptr %dar to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dst, ptr %dar, align 4
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %tcr = getelementptr i8, ptr %sdesc, i32 -4
  %9 = ptrtoint ptr %tcr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tcr, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_dmae_set_slave(ptr nocapture noundef %schan, i32 noundef %slave_id, i32 noundef %slave_addr, i1 noundef zeroext %try) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_chan.i = getelementptr inbounds %struct.shdma_chan, ptr %schan, i32 0, i32 3
  %0 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_chan.i, align 4
  %pdata1.i = getelementptr inbounds %struct.sh_dmae_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata1.i, align 4
  %dev.i = getelementptr inbounds %struct.shdma_chan, ptr %schan, i32 0, i32 4
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %slave_id)
  %cmp.i = icmp sgt i32 %slave_id, 255
  br i1 %cmp.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %slave_num.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %slave_num.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slave_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp449.i = icmp sgt i32 %9, 0
  br i1 %cmp449.i, label %for.body.preheader.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end.i
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.051.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %cfg.050.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %11, %for.body.preheader.i ]
  %12 = ptrtoint ptr %cfg.050.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cfg.050.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %slave_id)
  %cmp5.i = icmp eq i32 %13, %slave_id
  br i1 %cmp5.i, label %for.body.i.dmae_find_slave.exit_crit_edge, label %for.inc.i

for.body.i.dmae_find_slave.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmae_find_slave.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.051.i, 1
  %incdec.ptr.i = getelementptr %struct.sh_dmae_slave_config, ptr %cfg.050.i, i32 1
  %exitcond56.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond56.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else.i:                                        ; preds = %entry
  %slave_num10.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %slave_num10.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %slave_num10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1146.i = icmp sgt i32 %15, 0
  br i1 %cmp1146.i, label %for.body12.preheader.i, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body12.preheader.i:                           ; preds = %if.else.i
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.inc19.i.for.body12.i_crit_edge, %for.body12.preheader.i
  %i.148.i = phi i32 [ %inc20.i, %for.inc19.i.for.body12.i_crit_edge ], [ 0, %for.body12.preheader.i ]
  %cfg.147.i = phi ptr [ %incdec.ptr21.i, %for.inc19.i.for.body12.i_crit_edge ], [ %17, %for.body12.preheader.i ]
  %mid_rid.i = getelementptr inbounds %struct.sh_dmae_slave_config, ptr %cfg.147.i, i32 0, i32 3
  %18 = ptrtoint ptr %mid_rid.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mid_rid.i, align 4
  %conv.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %slave_id)
  %cmp13.i = icmp eq i32 %conv.i, %slave_id
  br i1 %cmp13.i, label %if.then15.i, label %for.inc19.i

if.then15.i:                                      ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  %slave_id17.i = getelementptr inbounds %struct.shdma_chan, ptr %schan, i32 0, i32 10
  %20 = ptrtoint ptr %slave_id17.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %i.148.i, ptr %slave_id17.i, align 4
  br label %dmae_find_slave.exit

for.inc19.i:                                      ; preds = %for.body12.i
  %inc20.i = add nuw nsw i32 %i.148.i, 1
  %incdec.ptr21.i = getelementptr %struct.sh_dmae_slave_config, ptr %cfg.147.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc20.i, %15
  br i1 %exitcond.not.i, label %for.inc19.i.cleanup_crit_edge, label %for.inc19.i.for.body12.i_crit_edge

for.inc19.i.for.body12.i_crit_edge:               ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body12.i

for.inc19.i.cleanup_crit_edge:                    ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

dmae_find_slave.exit:                             ; preds = %if.then15.i, %for.body.i.dmae_find_slave.exit_crit_edge
  %retval.0.i = phi ptr [ %cfg.147.i, %if.then15.i ], [ %cfg.050.i, %for.body.i.dmae_find_slave.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  %brmerge = or i1 %tobool.not, %try
  %.mux = select i1 %tobool.not, i32 -6, i32 0
  br i1 %brmerge, label %dmae_find_slave.exit.cleanup_crit_edge, label %if.then2

dmae_find_slave.exit.cleanup_crit_edge:           ; preds = %dmae_find_slave.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %dmae_find_slave.exit
  %config = getelementptr inbounds %struct.sh_dmae_chan, ptr %schan, i32 0, i32 1
  %21 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %retval.0.i, ptr %config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slave_addr)
  %tobool3.not = icmp eq i32 %slave_addr, 0
  br i1 %tobool3.not, label %cond.false, label %if.then2.cond.end_crit_edge

if.then2.cond.end_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %addr = getelementptr inbounds %struct.sh_dmae_slave_config, ptr %retval.0.i, i32 0, i32 1
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then2.cond.end_crit_edge
  %cond = phi i32 [ %23, %cond.false ], [ %slave_addr, %if.then2.cond.end_crit_edge ]
  %slave_addr4 = getelementptr inbounds %struct.sh_dmae_chan, ptr %schan, i32 0, i32 6
  %24 = ptrtoint ptr %slave_addr4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond, ptr %slave_addr4, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %dmae_find_slave.exit.cleanup_crit_edge, %for.inc19.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %.mux, %dmae_find_slave.exit.cleanup_crit_edge ], [ 0, %cond.end ], [ -6, %if.then.i.cleanup_crit_edge ], [ -6, %if.end.i.cleanup_crit_edge ], [ -6, %if.else.i.cleanup_crit_edge ], [ -6, %for.inc.i.cleanup_crit_edge ], [ -6, %for.inc19.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_dmae_setup_xfer(ptr nocapture noundef %schan, i32 noundef %slave_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %slave_id)
  %cmp = icmp sgt i32 %slave_id, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %config = getelementptr inbounds %struct.sh_dmae_chan, ptr %schan, i32 0, i32 1
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %mid_rid = getelementptr inbounds %struct.sh_dmae_slave_config, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mid_rid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mid_rid, align 4
  %dma_chan.i = getelementptr inbounds %struct.shdma_chan, ptr %schan, i32 0, i32 3
  %4 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_chan.i, align 4
  %pdata1.i = getelementptr inbounds %struct.sh_dmae_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata1.i, align 4
  %channel.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channel.i, align 4
  %id.i = getelementptr inbounds %struct.shdma_chan, ptr %schan, i32 0, i32 8
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 4
  %dmars.i = getelementptr inbounds %struct.sh_dmae_device, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %dmars.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dmars.i, align 4
  %dmars_bit.i = getelementptr %struct.sh_dmae_channel, ptr %9, i32 %11, i32 3
  %14 = ptrtoint ptr %dmars_bit.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dmars_bit.i, align 4
  %conv.i = zext i8 %15 to i32
  %base.i.i.i = getelementptr inbounds %struct.sh_dmae_chan, ptr %schan, i32 0, i32 3
  %16 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i.i, align 4
  %chcr_offset.i.i.i = getelementptr inbounds %struct.sh_dmae_device, ptr %5, i32 0, i32 6
  %18 = ptrtoint ptr %chcr_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chcr_offset.i.i.i, align 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %17, i32 %19
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #12, !srcloc !101
  %and.i.i = and i32 %20, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.i, label %if.then.dmae_set_dmars.exit_crit_edge, label %if.end.i

if.then.dmae_set_dmars.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmae_set_dmars.exit

if.end.i:                                         ; preds = %if.then
  %no_dmars.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %7, i32 0, i32 13
  %21 = ptrtoint ptr %no_dmars.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i = load i8, ptr %no_dmars.i, align 4
  %22 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.dmae_set_dmars.exit_crit_edge

if.end.i.dmae_set_dmars.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmae_set_dmars.exit

if.end4.i:                                        ; preds = %if.end.i
  %tobool5.not.i = icmp eq ptr %13, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end4.i.if.end7.i_crit_edge

if.end4.i.if.end7.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %chan_reg.i = getelementptr inbounds %struct.sh_dmae_device, ptr %5, i32 0, i32 4
  %23 = ptrtoint ptr %chan_reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chan_reg.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end4.i.if.end7.i_crit_edge
  %addr.0.i = phi ptr [ %13, %if.end4.i.if.end7.i_crit_edge ], [ %24, %if.then6.i ]
  %dmars8.i = getelementptr %struct.sh_dmae_channel, ptr %9, i32 %11, i32 1
  %25 = ptrtoint ptr %dmars8.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dmars8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %addr.0.i, i32 %26
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr9.i) #12, !srcloc !102
  %conv11.i = zext i16 %27 to i32
  %shr.i = lshr i32 65280, %conv.i
  %and.i = and i32 %shr.i, %conv11.i
  %conv12.i = zext i8 %3 to i32
  %shl.i = shl i32 %conv12.i, %conv.i
  %or.i = or i32 %and.i, %shl.i
  %conv13.i = trunc i32 %or.i to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i, i16 %conv13.i) #12, !srcloc !104
  br label %dmae_set_dmars.exit

dmae_set_dmars.exit:                              ; preds = %if.end7.i, %if.end.i.dmae_set_dmars.exit_crit_edge, %if.then.dmae_set_dmars.exit_crit_edge
  %chcr = getelementptr inbounds %struct.sh_dmae_slave_config, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %chcr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chcr, align 4
  %30 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma_chan.i, align 4
  %32 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i.i, align 4
  %chcr_offset.i.i.i7 = getelementptr inbounds %struct.sh_dmae_device, ptr %31, i32 0, i32 6
  %34 = ptrtoint ptr %chcr_offset.i.i.i7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %chcr_offset.i.i.i7, align 4
  %add.ptr1.i.i.i8 = getelementptr i8, ptr %33, i32 %35
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i8) #12, !srcloc !101
  %and.i.i9 = and i32 %36, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i9)
  %cmp.i.i10 = icmp eq i32 %and.i.i9, 1
  br i1 %cmp.i.i10, label %dmae_set_dmars.exit.if.end_crit_edge, label %if.end.i11

dmae_set_dmars.exit.if.end_crit_edge:             ; preds = %dmae_set_dmars.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i11:                                       ; preds = %dmae_set_dmars.exit
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dma_chan.i, align 4
  %pdata1.i.i = getelementptr inbounds %struct.sh_dmae_device, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %pdata1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdata1.i.i, align 4
  %ts_low_mask.i.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %ts_low_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ts_low_mask.i.i, align 4
  %and.i1.i = and i32 %42, %29
  %ts_low_shift.i.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %40, i32 0, i32 4
  %43 = ptrtoint ptr %ts_low_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ts_low_shift.i.i, align 4
  %shr.i.i = lshr i32 %and.i1.i, %44
  %ts_high_mask.i.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %40, i32 0, i32 7
  %45 = ptrtoint ptr %ts_high_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ts_high_mask.i.i, align 4
  %and2.i.i = and i32 %46, %29
  %ts_high_shift.i.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %40, i32 0, i32 6
  %47 = ptrtoint ptr %ts_high_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ts_high_shift.i.i, align 4
  %shr3.i.i = lshr i32 %and2.i.i, %48
  %or.i.i = or i32 %shr3.i.i, %shr.i.i
  %ts_shift_num.i.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %40, i32 0, i32 9
  %49 = ptrtoint ptr %ts_shift_num.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ts_shift_num.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %50)
  %cmp.not.i.i = icmp slt i32 %or.i.i, %50
  %spec.store.select.i.i = select i1 %cmp.not.i.i, i32 %or.i.i, i32 0
  %ts_shift.i.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %40, i32 0, i32 8
  %51 = ptrtoint ptr %ts_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ts_shift.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %52, i32 %spec.store.select.i.i
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i, align 4
  %xmit_shift.i = getelementptr inbounds %struct.sh_dmae_chan, ptr %schan, i32 0, i32 2
  %55 = ptrtoint ptr %xmit_shift.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %xmit_shift.i, align 4
  %56 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i.i.i, align 4
  %chcr_offset.i.i = getelementptr inbounds %struct.sh_dmae_device, ptr %38, i32 0, i32 6
  %58 = ptrtoint ptr %chcr_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %chcr_offset.i.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %57, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %29) #12, !srcloc !103
  br label %if.end

if.else:                                          ; preds = %entry
  %dma_chan.i.i = getelementptr inbounds %struct.shdma_chan, ptr %schan, i32 0, i32 3
  %60 = ptrtoint ptr %dma_chan.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dma_chan.i.i, align 4
  %pdata1.i.i12 = getelementptr inbounds %struct.sh_dmae_device, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %pdata1.i.i12 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdata1.i.i12, align 4
  %ts_shift_num.i.i13 = getelementptr inbounds %struct.sh_dmae_pdata, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %ts_shift_num.i.i13 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ts_shift_num.i.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp1.i.i = icmp sgt i32 %65, 0
  br i1 %cmp1.i.i, label %for.body.lr.ph.i.i, label %if.else.dmae_init.exit_crit_edge

if.else.dmae_init.exit_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmae_init.exit

for.body.lr.ph.i.i:                               ; preds = %if.else
  %ts_shift.i.i14 = getelementptr inbounds %struct.sh_dmae_pdata, ptr %63, i32 0, i32 8
  %66 = ptrtoint ptr %ts_shift.i.i14 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ts_shift.i.i14, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i15 = getelementptr i32, ptr %67, i32 %i.02.i.i
  %68 = ptrtoint ptr %arrayidx.i.i15 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %69)
  %cmp2.i.i = icmp eq i32 %69, 2
  br i1 %cmp2.i.i, label %for.body.i.i.dmae_init.exit_crit_edge, label %for.inc.i.i

for.body.i.i.dmae_init.exit_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmae_init.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %65
  br i1 %exitcond.not.i.i, label %for.inc.i.i.dmae_init.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.dmae_init.exit_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmae_init.exit

dmae_init.exit:                                   ; preds = %for.inc.i.i.dmae_init.exit_crit_edge, %for.body.i.i.dmae_init.exit_crit_edge, %if.else.dmae_init.exit_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %if.else.dmae_init.exit_crit_edge ], [ %i.02.i.i, %for.body.i.i.dmae_init.exit_crit_edge ], [ %65, %for.inc.i.i.dmae_init.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i.i, i32 %65)
  %cmp4.i.i = icmp eq i32 %i.0.lcssa.i.i, %65
  %spec.store.select.i.i16 = select i1 %cmp4.i.i, i32 0, i32 %i.0.lcssa.i.i
  %ts_low_shift.i.i17 = getelementptr inbounds %struct.sh_dmae_pdata, ptr %63, i32 0, i32 4
  %70 = ptrtoint ptr %ts_low_shift.i.i17 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ts_low_shift.i.i17, align 4
  %shl.i.i = shl i32 %spec.store.select.i.i16, %71
  %ts_low_mask.i.i18 = getelementptr inbounds %struct.sh_dmae_pdata, ptr %63, i32 0, i32 5
  %72 = ptrtoint ptr %ts_low_mask.i.i18 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ts_low_mask.i.i18, align 4
  %and.i.i19 = and i32 %shl.i.i, %73
  %ts_high_shift.i.i20 = getelementptr inbounds %struct.sh_dmae_pdata, ptr %63, i32 0, i32 6
  %74 = ptrtoint ptr %ts_high_shift.i.i20 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ts_high_shift.i.i20, align 4
  %shl7.i.i = shl i32 %spec.store.select.i.i16, %75
  %ts_high_mask.i.i21 = getelementptr inbounds %struct.sh_dmae_pdata, ptr %63, i32 0, i32 7
  %76 = ptrtoint ptr %ts_high_mask.i.i21 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ts_high_mask.i.i21, align 4
  %and8.i.i = and i32 %shl7.i.i, %77
  %or.i.i22 = or i32 %and.i.i19, %and8.i.i
  %or.i23 = or i32 %or.i.i22, 21504
  %and.i9.i = and i32 %or.i23, %73
  %shr.i.i24 = lshr i32 %and.i9.i, %71
  %and2.i.i25 = and i32 %or.i23, %77
  %shr3.i.i26 = lshr i32 %and2.i.i25, %75
  %or.i13.i = or i32 %shr3.i.i26, %shr.i.i24
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i13.i, i32 %65)
  %cmp.not.i.i27 = icmp slt i32 %or.i13.i, %65
  %spec.store.select.i15.i = select i1 %cmp.not.i.i27, i32 %or.i13.i, i32 0
  %ts_shift.i16.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %63, i32 0, i32 8
  %78 = ptrtoint ptr %ts_shift.i16.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ts_shift.i16.i, align 4
  %arrayidx.i17.i = getelementptr i32, ptr %79, i32 %spec.store.select.i15.i
  %80 = ptrtoint ptr %arrayidx.i17.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i17.i, align 4
  %xmit_shift.i28 = getelementptr inbounds %struct.sh_dmae_chan, ptr %schan, i32 0, i32 2
  %82 = ptrtoint ptr %xmit_shift.i28 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %xmit_shift.i28, align 4
  %base.i.i = getelementptr inbounds %struct.sh_dmae_chan, ptr %schan, i32 0, i32 3
  %83 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i.i, align 4
  %chcr_offset.i.i29 = getelementptr inbounds %struct.sh_dmae_device, ptr %61, i32 0, i32 6
  %85 = ptrtoint ptr %chcr_offset.i.i29 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %chcr_offset.i.i29, align 4
  %add.ptr1.i.i30 = getelementptr i8, ptr %84, i32 %86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i30, i32 %or.i23) #12, !srcloc !103
  br label %if.end

if.end:                                           ; preds = %dmae_init.exit, %if.end.i11, %dmae_set_dmars.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_dmae_start_xfer(ptr nocapture noundef readonly %schan, ptr nocapture noundef readonly %sdesc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %sdesc, i32 -12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_dmae_start_xfer.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sh_dmae_start_xfer, %do.end)) #12
          to label %if.then [label %do.end], !srcloc !100

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.shdma_chan, ptr %schan, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %async_tx = getelementptr inbounds %struct.shdma_desc, ptr %sdesc, i32 0, i32 1
  %2 = ptrtoint ptr %async_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %async_tx, align 4
  %id = getelementptr inbounds %struct.shdma_chan, ptr %schan, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %tcr = getelementptr i8, ptr %sdesc, i32 -4
  %6 = ptrtoint ptr %tcr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tcr, align 4
  %8 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr3, align 4
  %dar = getelementptr i8, ptr %sdesc, i32 -8
  %10 = ptrtoint ptr %dar to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dar, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_dmae_start_xfer.__UNIQUE_ID_ddebug235, ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %12 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr3, align 4
  %base.i.i = getelementptr inbounds %struct.sh_dmae_chan, ptr %schan, i32 0, i32 3
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #12, !srcloc !103
  %dar.i = getelementptr i8, ptr %sdesc, i32 -8
  %16 = ptrtoint ptr %dar.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dar.i, align 4
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %17) #12, !srcloc !103
  %tcr.i = getelementptr i8, ptr %sdesc, i32 -4
  %20 = ptrtoint ptr %tcr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tcr.i, align 4
  %xmit_shift.i = getelementptr inbounds %struct.sh_dmae_chan, ptr %schan, i32 0, i32 2
  %22 = ptrtoint ptr %xmit_shift.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xmit_shift.i, align 4
  %shr.i = lshr i32 %21, %23
  %24 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %shr.i) #12, !srcloc !103
  %dma_chan.i = getelementptr inbounds %struct.shdma_chan, ptr %schan, i32 0, i32 3
  %26 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma_chan.i, align 4
  %28 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i, align 4
  %chcr_offset.i.i = getelementptr inbounds %struct.sh_dmae_device, ptr %27, i32 0, i32 6
  %30 = ptrtoint ptr %chcr_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chcr_offset.i.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %29, i32 %31
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #12, !srcloc !101
  %pdata.i = getelementptr inbounds %struct.sh_dmae_device, ptr %27, i32 0, i32 2
  %33 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdata.i, align 4
  %needs_tend_set.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %34, i32 0, i32 13
  %35 = ptrtoint ptr %needs_tend_set.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i = load i8, ptr %needs_tend_set.i, align 4
  %36 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i, label %do.end.dmae_start.exit_crit_edge, label %if.then.i

do.end.dmae_start.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmae_start.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i20 = getelementptr i8, ptr %38, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i20, i32 -1) #12, !srcloc !103
  br label %dmae_start.exit

dmae_start.exit:                                  ; preds = %if.then.i, %do.end.dmae_start.exit_crit_edge
  %chcr_ie_bit.i = getelementptr inbounds %struct.sh_dmae_device, ptr %27, i32 0, i32 7
  %39 = ptrtoint ptr %chcr_ie_bit.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chcr_ie_bit.i, align 4
  %or.i = or i32 %40, %32
  %or1.i = and i32 %or.i, -4
  %and.i = or i32 %or1.i, 1
  %41 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dma_chan.i, align 4
  %43 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i, align 4
  %chcr_offset.i10.i = getelementptr inbounds %struct.sh_dmae_device, ptr %42, i32 0, i32 6
  %45 = ptrtoint ptr %chcr_offset.i10.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %chcr_offset.i10.i, align 4
  %add.ptr1.i11.i = getelementptr i8, ptr %44, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i11.i, i32 %and.i) #12, !srcloc !103
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @sh_dmae_embedded_desc(ptr noundef readnone %buf, i32 noundef %i) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %shdma_desc = getelementptr %struct.sh_dmae_desc, ptr %buf, i32 %i, i32 1
  ret ptr %shdma_desc
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @sh_dmae_chan_irq(ptr nocapture noundef readonly %schan, i32 noundef %irq) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_chan.i = getelementptr inbounds %struct.shdma_chan, ptr %schan, i32 0, i32 3
  %0 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_chan.i, align 4
  %base.i = getelementptr inbounds %struct.sh_dmae_chan, ptr %schan, i32 0, i32 3
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %chcr_offset.i = getelementptr inbounds %struct.sh_dmae_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %chcr_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chcr_offset.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %3, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !101
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_chan.i, align 4
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %chcr_offset.i.i = getelementptr inbounds %struct.sh_dmae_device, ptr %8, i32 0, i32 6
  %11 = ptrtoint ptr %chcr_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chcr_offset.i.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %10, i32 %12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #12, !srcloc !101
  %chcr_ie_bit.i = getelementptr inbounds %struct.sh_dmae_device, ptr %8, i32 0, i32 7
  %14 = ptrtoint ptr %chcr_ie_bit.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chcr_ie_bit.i, align 4
  %16 = and i32 %15, -4
  %neg.i = xor i32 %16, -4
  %and.i = and i32 %neg.i, %13
  %17 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dma_chan.i, align 4
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %chcr_offset.i6.i = getelementptr inbounds %struct.sh_dmae_device, ptr %18, i32 0, i32 6
  %21 = ptrtoint ptr %chcr_offset.i6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chcr_offset.i6.i, align 4
  %add.ptr1.i7.i = getelementptr i8, ptr %20, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i, i32 %and.i) #12, !srcloc !103
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %23 = xor i1 %tobool.not, true
  ret i1 %23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_dmae_get_partial(ptr nocapture noundef readonly %schan, ptr nocapture noundef readonly %sdesc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tcr = getelementptr i8, ptr %sdesc, i32 -4
  %0 = ptrtoint ptr %tcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tcr, align 4
  %base.i = getelementptr inbounds %struct.sh_dmae_chan, ptr %schan, i32 0, i32 3
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !101
  %xmit_shift = getelementptr inbounds %struct.sh_dmae_chan, ptr %schan, i32 0, i32 2
  %5 = ptrtoint ptr %xmit_shift to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %xmit_shift, align 4
  %shl = shl i32 %4, %6
  %sub = sub i32 %1, %shl
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @shdma_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @shdma_chan_probe(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shdma_request_irq(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @shdma_chan_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_dmae_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @dma_async_device_unregister(ptr noundef %1) #12
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @sh_dmae_lock) #12
  %node = getelementptr inbounds %struct.sh_dmae_device, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_rcu.exit_crit_edge

entry.list_del_rcu.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.sh_dmae_device, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %entry.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.sh_dmae_device, ptr %1, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @sh_dmae_lock) #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #12
  %schan1.i = getelementptr inbounds %struct.shdma_dev, ptr %1, i32 0, i32 1
  %chancnt.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %chancnt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chancnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp20.not.i = icmp eq i32 %10, 0
  br i1 %cmp20.not.i, label %list_del_rcu.exit.sh_dmae_chan_remove.exit_crit_edge, label %do.body.preheader.i

list_del_rcu.exit.sh_dmae_chan_remove.exit_crit_edge: ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sh_dmae_chan_remove.exit

do.body.preheader.i:                              ; preds = %list_del_rcu.exit
  %11 = ptrtoint ptr %schan1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %schan1.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.end11.i.do.body.i_crit_edge, %do.body.preheader.i
  %schan.022.in.i = phi ptr [ %arrayidx14.i, %do.end11.i.do.body.i_crit_edge ], [ %12, %do.body.preheader.i ]
  %i.021.i = phi i32 [ %inc.i, %do.end11.i.do.body.i_crit_edge ], [ 0, %do.body.preheader.i ]
  %13 = ptrtoint ptr %schan.022.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %schan.022.i = load ptr, ptr %schan.022.in.i, align 4
  %tobool.not.i = icmp eq ptr %schan.022.i, null
  br i1 %tobool.not.i, label %do.body6.i, label %do.end11.i, !prof !105

do.body6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/sh/shdmac.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 570, 0\0A.popsection", ""() #12, !srcloc !106
  unreachable

do.end11.i:                                       ; preds = %do.body.i
  tail call void @shdma_chan_remove(ptr noundef nonnull %schan.022.i) #12
  %14 = ptrtoint ptr %schan1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %schan1.i, align 4
  %inc.i = add nuw i32 %i.021.i, 1
  %arrayidx14.i = getelementptr ptr, ptr %15, i32 %inc.i
  %16 = ptrtoint ptr %chancnt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chancnt.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %17
  br i1 %cmp.i, label %do.end11.i.do.body.i_crit_edge, label %do.end11.i.sh_dmae_chan_remove.exit_crit_edge

do.end11.i.sh_dmae_chan_remove.exit_crit_edge:    ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sh_dmae_chan_remove.exit

do.end11.i.do.body.i_crit_edge:                   ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

sh_dmae_chan_remove.exit:                         ; preds = %do.end11.i.sh_dmae_chan_remove.exit_crit_edge, %list_del_rcu.exit.sh_dmae_chan_remove.exit_crit_edge
  tail call void @shdma_cleanup(ptr noundef %1) #12
  tail call void @synchronize_rcu() #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_dmae_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @sh_dmae_lock) #12
  %chan_reg.i.i = getelementptr inbounds %struct.sh_dmae_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %chan_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan_reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 64
  %pdata.i.i = getelementptr inbounds %struct.sh_dmae_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata.i.i, align 4
  %dmaor_is_32bit.i.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %dmaor_is_32bit.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i.i = load i8, ptr %dmaor_is_32bit.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !101
  %conv.i.i = trunc i32 %7 to i16
  br label %dmaor_read.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #12, !srcloc !102
  br label %dmaor_read.exit.i

dmaor_read.exit.i:                                ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i16 [ %conv.i.i, %if.then.i.i ], [ %8, %if.else.i.i ]
  %9 = and i16 %retval.0.i.i, -8
  %10 = ptrtoint ptr %chan_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan_reg.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %11, i32 64
  %12 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata.i.i, align 4
  %dmaor_is_32bit.i12.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %dmaor_is_32bit.i12.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i13.i = load i8, ptr %dmaor_is_32bit.i12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i13.i)
  %tobool.not.i14.i = icmp sgt i8 %bf.load.i13.i, -1
  br i1 %tobool.not.i14.i, label %if.else.i17.i, label %if.then.i16.i

if.then.i16.i:                                    ; preds = %dmaor_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i15.i = zext i16 %9 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %conv.i15.i) #12, !srcloc !103
  br label %sh_dmae_ctl_stop.exit

if.else.i17.i:                                    ; preds = %dmaor_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i, i16 %9) #12, !srcloc !104
  br label %sh_dmae_ctl_stop.exit

sh_dmae_ctl_stop.exit:                            ; preds = %if.else.i17.i, %if.then.i16.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @sh_dmae_lock, i32 noundef %call2.i) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_dmae_resume(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @sh_dmae_rst(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %pdata = getelementptr inbounds %struct.sh_dmae_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %channel_num50 = getelementptr inbounds %struct.sh_dmae_pdata, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %channel_num50 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel_num50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp251 = icmp sgt i32 %5, 0
  br i1 %cmp251, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.052 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sh_dmae_device, ptr %1, i32 0, i32 1, i32 %i.052
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %desc_num = getelementptr inbounds %struct.shdma_chan, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %desc_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %desc_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end4

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %for.body
  %slave_id = getelementptr inbounds %struct.shdma_chan, ptr %7, i32 0, i32 10
  %10 = ptrtoint ptr %slave_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slave_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp6 = icmp sgt i32 %11, -1
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  %config = getelementptr inbounds %struct.sh_dmae_chan, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %config, align 4
  %mid_rid = getelementptr inbounds %struct.sh_dmae_slave_config, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %mid_rid to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mid_rid, align 4
  %dma_chan.i = getelementptr inbounds %struct.shdma_chan, ptr %7, i32 0, i32 3
  %16 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_chan.i, align 4
  %pdata1.i = getelementptr inbounds %struct.sh_dmae_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata1.i, align 4
  %channel.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %channel.i, align 4
  %id.i = getelementptr inbounds %struct.shdma_chan, ptr %7, i32 0, i32 8
  %22 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id.i, align 4
  %dmars.i = getelementptr inbounds %struct.sh_dmae_device, ptr %17, i32 0, i32 5
  %24 = ptrtoint ptr %dmars.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dmars.i, align 4
  %dmars_bit.i = getelementptr %struct.sh_dmae_channel, ptr %21, i32 %23, i32 3
  %26 = ptrtoint ptr %dmars_bit.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dmars_bit.i, align 4
  %conv.i = zext i8 %27 to i32
  %base.i.i.i = getelementptr inbounds %struct.sh_dmae_chan, ptr %7, i32 0, i32 3
  %28 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i.i, align 4
  %chcr_offset.i.i.i = getelementptr inbounds %struct.sh_dmae_device, ptr %17, i32 0, i32 6
  %30 = ptrtoint ptr %chcr_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chcr_offset.i.i.i, align 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %29, i32 %31
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #12, !srcloc !101
  %and.i.i = and i32 %32, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.i, label %if.then7.dmae_set_dmars.exit_crit_edge, label %if.end.i

if.then7.dmae_set_dmars.exit_crit_edge:           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmae_set_dmars.exit

if.end.i:                                         ; preds = %if.then7
  %no_dmars.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %19, i32 0, i32 13
  %33 = ptrtoint ptr %no_dmars.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i = load i8, ptr %no_dmars.i, align 4
  %34 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.dmae_set_dmars.exit_crit_edge

if.end.i.dmae_set_dmars.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmae_set_dmars.exit

if.end4.i:                                        ; preds = %if.end.i
  %tobool5.not.i = icmp eq ptr %25, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end4.i.if.end7.i_crit_edge

if.end4.i.if.end7.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %chan_reg.i = getelementptr inbounds %struct.sh_dmae_device, ptr %17, i32 0, i32 4
  %35 = ptrtoint ptr %chan_reg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chan_reg.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end4.i.if.end7.i_crit_edge
  %addr.0.i = phi ptr [ %25, %if.end4.i.if.end7.i_crit_edge ], [ %36, %if.then6.i ]
  %dmars8.i = getelementptr %struct.sh_dmae_channel, ptr %21, i32 %23, i32 1
  %37 = ptrtoint ptr %dmars8.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dmars8.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %addr.0.i, i32 %38
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr9.i) #12, !srcloc !102
  %conv11.i = zext i16 %39 to i32
  %shr.i = lshr i32 65280, %conv.i
  %and.i = and i32 %shr.i, %conv11.i
  %conv12.i = zext i8 %15 to i32
  %shl.i = shl i32 %conv12.i, %conv.i
  %or.i = or i32 %and.i, %shl.i
  %conv13.i = trunc i32 %or.i to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i, i16 %conv13.i) #12, !srcloc !104
  br label %dmae_set_dmars.exit

dmae_set_dmars.exit:                              ; preds = %if.end7.i, %if.end.i.dmae_set_dmars.exit_crit_edge, %if.then7.dmae_set_dmars.exit_crit_edge
  %chcr = getelementptr inbounds %struct.sh_dmae_slave_config, ptr %13, i32 0, i32 2
  %40 = ptrtoint ptr %chcr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chcr, align 4
  %42 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dma_chan.i, align 4
  %44 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i.i.i, align 4
  %chcr_offset.i.i.i26 = getelementptr inbounds %struct.sh_dmae_device, ptr %43, i32 0, i32 6
  %46 = ptrtoint ptr %chcr_offset.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %chcr_offset.i.i.i26, align 4
  %add.ptr1.i.i.i27 = getelementptr i8, ptr %45, i32 %47
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i27) #12, !srcloc !101
  %and.i.i28 = and i32 %48, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i28)
  %cmp.i.i29 = icmp eq i32 %and.i.i28, 1
  br i1 %cmp.i.i29, label %dmae_set_dmars.exit.cleanup_crit_edge, label %if.end.i30

dmae_set_dmars.exit.cleanup_crit_edge:            ; preds = %dmae_set_dmars.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i30:                                       ; preds = %dmae_set_dmars.exit
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dma_chan.i, align 4
  %pdata1.i.i = getelementptr inbounds %struct.sh_dmae_device, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %pdata1.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdata1.i.i, align 4
  %ts_low_mask.i.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %ts_low_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ts_low_mask.i.i, align 4
  %and.i1.i = and i32 %54, %41
  %ts_low_shift.i.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %52, i32 0, i32 4
  %55 = ptrtoint ptr %ts_low_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ts_low_shift.i.i, align 4
  %shr.i.i = lshr i32 %and.i1.i, %56
  %ts_high_mask.i.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %52, i32 0, i32 7
  %57 = ptrtoint ptr %ts_high_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ts_high_mask.i.i, align 4
  %and2.i.i = and i32 %58, %41
  %ts_high_shift.i.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %52, i32 0, i32 6
  %59 = ptrtoint ptr %ts_high_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ts_high_shift.i.i, align 4
  %shr3.i.i = lshr i32 %and2.i.i, %60
  %or.i.i = or i32 %shr3.i.i, %shr.i.i
  %ts_shift_num.i.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %52, i32 0, i32 9
  %61 = ptrtoint ptr %ts_shift_num.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ts_shift_num.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %62)
  %cmp.not.i.i = icmp slt i32 %or.i.i, %62
  %spec.store.select.i.i = select i1 %cmp.not.i.i, i32 %or.i.i, i32 0
  %ts_shift.i.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %52, i32 0, i32 8
  %63 = ptrtoint ptr %ts_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ts_shift.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %64, i32 %spec.store.select.i.i
  %65 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i.i, align 4
  %xmit_shift.i = getelementptr inbounds %struct.sh_dmae_chan, ptr %7, i32 0, i32 2
  %67 = ptrtoint ptr %xmit_shift.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %xmit_shift.i, align 4
  %68 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i.i.i, align 4
  %chcr_offset.i.i = getelementptr inbounds %struct.sh_dmae_device, ptr %50, i32 0, i32 6
  %70 = ptrtoint ptr %chcr_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %chcr_offset.i.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %69, i32 %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %41) #12, !srcloc !103
  br label %cleanup

if.else:                                          ; preds = %if.end4
  %dma_chan.i.i = getelementptr inbounds %struct.shdma_chan, ptr %7, i32 0, i32 3
  %72 = ptrtoint ptr %dma_chan.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dma_chan.i.i, align 4
  %pdata1.i.i31 = getelementptr inbounds %struct.sh_dmae_device, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %pdata1.i.i31 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdata1.i.i31, align 4
  %ts_shift_num.i.i32 = getelementptr inbounds %struct.sh_dmae_pdata, ptr %75, i32 0, i32 9
  %76 = ptrtoint ptr %ts_shift_num.i.i32 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ts_shift_num.i.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp1.i.i = icmp sgt i32 %77, 0
  br i1 %cmp1.i.i, label %for.body.lr.ph.i.i, label %if.else.dmae_init.exit_crit_edge

if.else.dmae_init.exit_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmae_init.exit

for.body.lr.ph.i.i:                               ; preds = %if.else
  %ts_shift.i.i33 = getelementptr inbounds %struct.sh_dmae_pdata, ptr %75, i32 0, i32 8
  %78 = ptrtoint ptr %ts_shift.i.i33 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ts_shift.i.i33, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i34 = getelementptr i32, ptr %79, i32 %i.02.i.i
  %80 = ptrtoint ptr %arrayidx.i.i34 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %81)
  %cmp2.i.i = icmp eq i32 %81, 2
  br i1 %cmp2.i.i, label %for.body.i.i.dmae_init.exit_crit_edge, label %for.inc.i.i

for.body.i.i.dmae_init.exit_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmae_init.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %77
  br i1 %exitcond.not.i.i, label %for.inc.i.i.dmae_init.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.dmae_init.exit_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmae_init.exit

dmae_init.exit:                                   ; preds = %for.inc.i.i.dmae_init.exit_crit_edge, %for.body.i.i.dmae_init.exit_crit_edge, %if.else.dmae_init.exit_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %if.else.dmae_init.exit_crit_edge ], [ %i.02.i.i, %for.body.i.i.dmae_init.exit_crit_edge ], [ %77, %for.inc.i.i.dmae_init.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i.i, i32 %77)
  %cmp4.i.i = icmp eq i32 %i.0.lcssa.i.i, %77
  %spec.store.select.i.i35 = select i1 %cmp4.i.i, i32 0, i32 %i.0.lcssa.i.i
  %ts_low_shift.i.i36 = getelementptr inbounds %struct.sh_dmae_pdata, ptr %75, i32 0, i32 4
  %82 = ptrtoint ptr %ts_low_shift.i.i36 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ts_low_shift.i.i36, align 4
  %shl.i.i = shl i32 %spec.store.select.i.i35, %83
  %ts_low_mask.i.i37 = getelementptr inbounds %struct.sh_dmae_pdata, ptr %75, i32 0, i32 5
  %84 = ptrtoint ptr %ts_low_mask.i.i37 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ts_low_mask.i.i37, align 4
  %and.i.i38 = and i32 %shl.i.i, %85
  %ts_high_shift.i.i39 = getelementptr inbounds %struct.sh_dmae_pdata, ptr %75, i32 0, i32 6
  %86 = ptrtoint ptr %ts_high_shift.i.i39 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ts_high_shift.i.i39, align 4
  %shl7.i.i = shl i32 %spec.store.select.i.i35, %87
  %ts_high_mask.i.i40 = getelementptr inbounds %struct.sh_dmae_pdata, ptr %75, i32 0, i32 7
  %88 = ptrtoint ptr %ts_high_mask.i.i40 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ts_high_mask.i.i40, align 4
  %and8.i.i = and i32 %shl7.i.i, %89
  %or.i.i41 = or i32 %and.i.i38, %and8.i.i
  %or.i42 = or i32 %or.i.i41, 21504
  %and.i9.i = and i32 %or.i42, %85
  %shr.i.i43 = lshr i32 %and.i9.i, %83
  %and2.i.i44 = and i32 %or.i42, %89
  %shr3.i.i45 = lshr i32 %and2.i.i44, %87
  %or.i13.i = or i32 %shr3.i.i45, %shr.i.i43
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i13.i, i32 %77)
  %cmp.not.i.i46 = icmp slt i32 %or.i13.i, %77
  %spec.store.select.i15.i = select i1 %cmp.not.i.i46, i32 %or.i13.i, i32 0
  %ts_shift.i16.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %75, i32 0, i32 8
  %90 = ptrtoint ptr %ts_shift.i16.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ts_shift.i16.i, align 4
  %arrayidx.i17.i = getelementptr i32, ptr %91, i32 %spec.store.select.i15.i
  %92 = ptrtoint ptr %arrayidx.i17.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.i17.i, align 4
  %xmit_shift.i47 = getelementptr inbounds %struct.sh_dmae_chan, ptr %7, i32 0, i32 2
  %94 = ptrtoint ptr %xmit_shift.i47 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %xmit_shift.i47, align 4
  %base.i.i = getelementptr inbounds %struct.sh_dmae_chan, ptr %7, i32 0, i32 3
  %95 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base.i.i, align 4
  %chcr_offset.i.i48 = getelementptr inbounds %struct.sh_dmae_device, ptr %73, i32 0, i32 6
  %97 = ptrtoint ptr %chcr_offset.i.i48 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %chcr_offset.i.i48, align 4
  %add.ptr1.i.i49 = getelementptr i8, ptr %96, i32 %98
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i49, i32 %or.i42) #12, !srcloc !103
  br label %cleanup

cleanup:                                          ; preds = %dmae_init.exit, %if.end.i30, %dmae_set_dmars.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.052, 1
  %99 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pdata, align 4
  %channel_num = getelementptr inbounds %struct.sh_dmae_pdata, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %channel_num to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %channel_num, align 4
  %cmp2 = icmp slt i32 %inc, %102
  br i1 %cmp2, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_dmae_runtime_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @sh_dmae_lock) #12
  %chan_reg.i.i = getelementptr inbounds %struct.sh_dmae_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %chan_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan_reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 64
  %pdata.i.i = getelementptr inbounds %struct.sh_dmae_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata.i.i, align 4
  %dmaor_is_32bit.i.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %dmaor_is_32bit.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i.i = load i8, ptr %dmaor_is_32bit.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !101
  %conv.i.i = trunc i32 %7 to i16
  br label %dmaor_read.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #12, !srcloc !102
  br label %dmaor_read.exit.i

dmaor_read.exit.i:                                ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i16 [ %conv.i.i, %if.then.i.i ], [ %8, %if.else.i.i ]
  %9 = and i16 %retval.0.i.i, -8
  %10 = ptrtoint ptr %chan_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan_reg.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %11, i32 64
  %12 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata.i.i, align 4
  %dmaor_is_32bit.i12.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %dmaor_is_32bit.i12.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i13.i = load i8, ptr %dmaor_is_32bit.i12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i13.i)
  %tobool.not.i14.i = icmp sgt i8 %bf.load.i13.i, -1
  br i1 %tobool.not.i14.i, label %if.else.i17.i, label %if.then.i16.i

if.then.i16.i:                                    ; preds = %dmaor_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i15.i = zext i16 %9 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %conv.i15.i) #12, !srcloc !103
  br label %sh_dmae_ctl_stop.exit

if.else.i17.i:                                    ; preds = %dmaor_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i, i16 %9) #12, !srcloc !104
  br label %sh_dmae_ctl_stop.exit

sh_dmae_ctl_stop.exit:                            ; preds = %if.else.i17.i, %if.then.i16.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @sh_dmae_lock, i32 noundef %call2.i) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_dmae_runtime_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @sh_dmae_rst(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_dmae_nmi_handler(ptr nocapture noundef readnone %self, i32 noundef %cmd, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !107
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.32, i32 noundef 696, ptr noundef nonnull @.str.33) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b31 = load i1, ptr @sh_dmae_nmi_handler.__warned, align 1
  br i1 %.b31, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @sh_dmae_nmi_handler.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 495, ptr noundef nonnull @.str.31) #12
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %.pn42 = load volatile ptr, ptr @sh_dmae_devices, align 4
  %cmp.not43 = icmp eq ptr %.pn42, @sh_dmae_devices
  br i1 %cmp.not43, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %sh_dmae_nmi_notify.exit.thread.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn45 = phi ptr [ %.pn, %sh_dmae_nmi_notify.exit.thread.for.body_crit_edge ], [ %.pn42, %do.end.for.body_crit_edge ]
  %ret.044 = phi i32 [ %29, %sh_dmae_nmi_notify.exit.thread.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %shdev.0 = getelementptr i8, ptr %.pn45, i32 -460
  %chan_reg.i.i = getelementptr i8, ptr %.pn45, i32 8
  %8 = ptrtoint ptr %chan_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan_reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 64
  %pdata.i.i = getelementptr i8, ptr %.pn45, i32 -4
  %10 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata.i.i, align 4
  %dmaor_is_32bit.i.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %dmaor_is_32bit.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i.i = load i8, ptr %dmaor_is_32bit.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !101
  %conv.i.i = trunc i32 %13 to i16
  br label %dmaor_read.exit.i

if.else.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #12, !srcloc !102
  br label %dmaor_read.exit.i

dmaor_read.exit.i:                                ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i16 [ %conv.i.i, %if.then.i.i ], [ %14, %if.else.i.i ]
  %15 = and i16 %retval.0.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.i = icmp eq i16 %15, 0
  br i1 %cmp.i, label %dmaor_read.exit.i.sh_dmae_nmi_notify.exit.thread_crit_edge, label %if.end.i

dmaor_read.exit.i.sh_dmae_nmi_notify.exit.thread_crit_edge: ; preds = %dmaor_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sh_dmae_nmi_notify.exit.thread

if.end.i:                                         ; preds = %dmaor_read.exit.i
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @sh_dmae_lock) #12
  %16 = ptrtoint ptr %chan_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chan_reg.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %17, i32 64
  %18 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata.i.i, align 4
  %dmaor_is_32bit.i.i.i.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %dmaor_is_32bit.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i.i.i.i = load i8, ptr %dmaor_is_32bit.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i.i)
  %tobool.not.i.i.i.i = icmp sgt i8 %bf.load.i.i.i.i, -1
  br i1 %tobool.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #12, !srcloc !101
  %conv.i.i.i.i = trunc i32 %21 to i16
  br label %dmaor_read.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i.i) #12, !srcloc !102
  br label %dmaor_read.exit.i.i.i

dmaor_read.exit.i.i.i:                            ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i16 [ %conv.i.i.i.i, %if.then.i.i.i.i ], [ %22, %if.else.i.i.i.i ]
  %23 = and i16 %retval.0.i.i.i.i, -8
  %24 = ptrtoint ptr %chan_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chan_reg.i.i, align 4
  %add.ptr.i10.i.i.i = getelementptr i8, ptr %25, i32 64
  %26 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdata.i.i, align 4
  %dmaor_is_32bit.i12.i.i.i = getelementptr inbounds %struct.sh_dmae_pdata, ptr %27, i32 0, i32 13
  %28 = ptrtoint ptr %dmaor_is_32bit.i12.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i13.i.i.i = load i8, ptr %dmaor_is_32bit.i12.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i13.i.i.i)
  %tobool.not.i14.i.i.i = icmp sgt i8 %bf.load.i13.i.i.i, -1
  br i1 %tobool.not.i14.i.i.i, label %if.else.i17.i.i.i, label %if.then.i16.i.i.i

if.then.i16.i.i.i:                                ; preds = %dmaor_read.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i15.i.i.i = zext i16 %23 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i.i, i32 %conv.i15.i.i.i) #12, !srcloc !103
  br label %sh_dmae_nmi_notify.exit

if.else.i17.i.i.i:                                ; preds = %dmaor_read.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i10.i.i.i, i16 %23) #12, !srcloc !104
  br label %sh_dmae_nmi_notify.exit

sh_dmae_nmi_notify.exit:                          ; preds = %if.else.i17.i.i.i, %if.then.i16.i.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @sh_dmae_lock, i32 noundef %call2.i.i.i) #12
  %call.i.i = tail call zeroext i1 @shdma_reset(ptr noundef %shdev.0) #12
  %call1.i.i = tail call fastcc i32 @sh_dmae_rst(ptr noundef %shdev.0) #12
  %spec.select = select i1 %call.i.i, i32 1, i32 %ret.044
  br label %sh_dmae_nmi_notify.exit.thread

sh_dmae_nmi_notify.exit.thread:                   ; preds = %sh_dmae_nmi_notify.exit, %dmaor_read.exit.i.sh_dmae_nmi_notify.exit.thread_crit_edge
  %29 = phi i32 [ %ret.044, %dmaor_read.exit.i.sh_dmae_nmi_notify.exit.thread_crit_edge ], [ %spec.select, %sh_dmae_nmi_notify.exit ]
  %30 = ptrtoint ptr %.pn45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load volatile ptr, ptr %.pn45, align 4
  %cmp.not = icmp eq ptr %.pn, @sh_dmae_devices
  br i1 %cmp.not, label %sh_dmae_nmi_notify.exit.thread.for.end_crit_edge, label %sh_dmae_nmi_notify.exit.thread.for.body_crit_edge

sh_dmae_nmi_notify.exit.thread.for.body_crit_edge: ; preds = %sh_dmae_nmi_notify.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

sh_dmae_nmi_notify.exit.thread.for.end_crit_edge: ; preds = %sh_dmae_nmi_notify.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %sh_dmae_nmi_notify.exit.thread.for.end_crit_edge, %do.end.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %29, %sh_dmae_nmi_notify.exit.thread.for.end_crit_edge ]
  %call.i32 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i32, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i35

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i35:                                ; preds = %for.end
  %call1.i33 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i33)
  %tobool.not.i34 = icmp eq i32 %call1.i33, 0
  br i1 %tobool.not.i34, label %land.lhs.true.i35.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i37

land.lhs.true.i35.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i37:                               ; preds = %land.lhs.true.i35
  %.b4.i36 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i36, label %land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge, label %if.then.i38

land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i38:                                      ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.32, i32 noundef 724, ptr noundef nonnull @.str.34) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i38, %land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i35.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !108
  %31 = tail call i32 @llvm.read_register.i32(metadata !89) #12
  %and.i.i.i.i.i39 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i39 to ptr
  %preempt_count.i.i.i.i40 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i40, align 4
  %sub.i.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i40, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.lcssa, %rcu_read_unlock.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !40, !41, !42, !44, !45, !47, !49, !50, !51, !52, !53, !55, !56, !57, !59, !61, !63, !64, !65, !66, !68, !70, !72, !74, !75, !76, !77, !79, !81, !82, !84, !85, !86, !88}
!llvm.named.register.sp = !{!89}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @__initcall__kmod_shdma__239_925_sh_dmae_init6, !1, !"__initcall__kmod_shdma__239_925_sh_dmae_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/sh/shdmac.c", i32 925, i32 1}
!2 = !{ptr @__exitcall_sh_dmae_exit, !3, !"__exitcall_sh_dmae_exit", i1 false, i1 false}
!3 = !{!"../drivers/dma/sh/shdmac.c", i32 933, i32 1}
!4 = !{ptr @__UNIQUE_ID_author240, !5, !"__UNIQUE_ID_author240", i1 false, i1 false}
!5 = !{!"../drivers/dma/sh/shdmac.c", i32 935, i32 1}
!6 = !{ptr @__UNIQUE_ID_description241, !7, !"__UNIQUE_ID_description241", i1 false, i1 false}
!7 = !{!"../drivers/dma/sh/shdmac.c", i32 936, i32 1}
!8 = !{ptr @__UNIQUE_ID_file242, !9, !"__UNIQUE_ID_file242", i1 false, i1 false}
!9 = !{!"../drivers/dma/sh/shdmac.c", i32 937, i32 1}
!10 = !{ptr @__UNIQUE_ID_license243, !9, !"__UNIQUE_ID_license243", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias244, !12, !"__UNIQUE_ID_alias244", i1 false, i1 false}
!12 = !{!"../drivers/dma/sh/shdmac.c", i32 938, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/dma/sh/shdmac.c", i32 769, i32 3}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @sh_dmae_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @sh_dmae_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/dma/sh/shdmac.c", i32 795, i32 22}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/dma/sh/shdmac.c", i32 797, i32 4}
!25 = !{ptr @sh_dmae_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @sh_dmae_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/dma/sh/shdmac.c", i32 831, i32 5}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @sh_dmae_probe.__UNIQUE_ID_ddebug238, !28, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/dma/sh/shdmac.c", i32 853, i32 3}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @sh_dmae_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @sh_dmae_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @sh_dmae_shdma_ops, !37, !"sh_dmae_shdma_ops", i1 false, i1 false}
!37 = !{!"../drivers/dma/sh/shdmac.c", i32 654, i32 31}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/dma/sh/shdmac.c", i32 289, i32 2}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @sh_dmae_start_xfer.__UNIQUE_ID_ddebug235, !39, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/dma/sh/shdmac.c", i32 57, i32 8}
!44 = !{ptr @sh_dmae_lock, !43, !"sh_dmae_lock", i1 false, i1 false}
!45 = !{ptr @sh_dmae_devices, !46, !"sh_dmae_devices", i1 false, i1 false}
!46 = !{!"../drivers/dma/sh/shdmac.c", i32 58, i32 8}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/dma/sh/shdmac.c", i32 165, i32 3}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @sh_dmae_rst._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @sh_dmae_rst._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/dma/sh/shdmac.c", i32 169, i32 3}
!55 = !{ptr @sh_dmae_rst._entry.21, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @sh_dmae_rst._entry_ptr.23, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/dma/sh/shdmac.c", i32 542, i32 5}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/dma/sh/shdmac.c", i32 545, i32 5}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dma/sh/shdmac.c", i32 549, i32 3}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @sh_dmae_chan_probe._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @sh_dmae_chan_probe._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/dma/sh/shdmac.c", i32 911, i32 11}
!68 = !{ptr @sh_dmae_driver, !69, !"sh_dmae_driver", i1 false, i1 false}
!69 = !{!"../drivers/dma/sh/shdmac.c", i32 908, i32 31}
!70 = !{ptr @sh_dmae_pm, !71, !"sh_dmae_pm", i1 false, i1 false}
!71 = !{!"../drivers/dma/sh/shdmac.c", i32 630, i32 32}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/dma/sh/shdmac.c", i32 609, i32 3}
!74 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @sh_dmae_resume._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @sh_dmae_resume._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @sh_dmae_nmi_notifier, !78, !"sh_dmae_nmi_notifier", i1 false, i1 false}
!78 = !{!"../drivers/dma/sh/shdmac.c", i32 510, i32 30}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../drivers/dma/sh/shdmac.c", i32 495, i32 2}
!81 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!84 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!88 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!89 = !{!"sp"}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i64 2149297063}
!100 = !{i64 2148779074, i64 2148779079, i64 2148779092, i64 2148779136, i64 2148779170, i64 2148779191}
!101 = !{i64 6297730}
!102 = !{i64 6296892}
!103 = !{i64 6297312}
!104 = !{i64 6296692}
!105 = !{!"branch_weights", i32 1, i32 2000}
!106 = !{i64 2154489383, i64 2154489871, i64 2154489420, i64 2154489476, i64 2154489510, i64 2154489534, i64 2154489575, i64 2154489596, i64 2154489624, i64 2154489658}
!107 = !{i64 2149271671}
!108 = !{i64 2149271937}
