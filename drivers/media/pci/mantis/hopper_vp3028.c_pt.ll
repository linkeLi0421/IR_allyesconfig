; ModuleID = '/llk/IR_all_yes/drivers/media/pci/mantis/hopper_vp3028.c_pt.bc'
source_filename = "../drivers/media/pci/mantis/hopper_vp3028.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mantis_hwconfig = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.zl10353_config = type { i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.mantis_pci = type { i32, i16, i16, i16, i16, i8, ptr, i32, ptr, i8, i8, i32, i32, i32, ptr, i32, ptr, i32, %struct.tasklet_struct, %struct.spinlock, %struct.i2c_adapter, i32, %struct.wait_queue_head, %struct.mutex, %struct.dvb_adapter, ptr, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dvb_net, i8, ptr, i32, i32, [8 x i8], i32, i32, i32, i32, ptr, %struct.work_struct, ptr, [80 x i8], [80 x i8], ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon, i32 }
%struct.atomic_t = type { i32 }
%union.anon = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VP-3028\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DVB-T\00", [26 x i8] zeroinitializer }, align 32
@vp3028_config = dso_local global { %struct.mantis_hwconfig, [56 x i8] } { %struct.mantis_hwconfig { ptr @.str, ptr @.str.1, i32 0, i32 0, i32 0, i32 0, ptr null, ptr @vp3028_frontend_init, i8 0, i8 3, i32 0 }, [56 x i8] zeroinitializer }, align 32
@vp3028_frontend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s (%d): Probing for 10353 (DVB-T)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vp3028_frontend_init\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/pci/mantis/hopper_vp3028.c\00", [55 x i8] zeroinitializer }, align 32
@vp3028_frontend_init._entry_ptr = internal global ptr @vp3028_frontend_init._entry, section ".printk_index", align 4
@vp3028_frontend_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015%s (%d): Probing for 10353 (DVB-T)\0A\00", [58 x i8] zeroinitializer }, align 32
@vp3028_frontend_init._entry_ptr.7 = internal global ptr @vp3028_frontend_init._entry.5, section ".printk_index", align 4
@vp3028_frontend_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s (%d): Probing for 10353 (DVB-T)\0A\00", [58 x i8] zeroinitializer }, align 32
@vp3028_frontend_init._entry_ptr.10 = internal global ptr @vp3028_frontend_init._entry.8, section ".printk_index", align 4
@vp3028_frontend_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s (%d): Probing for 10353 (DVB-T)\0A\00", [58 x i8] zeroinitializer }, align 32
@vp3028_frontend_init._entry_ptr.13 = internal global ptr @vp3028_frontend_init._entry.11, section ".printk_index", align 4
@vp3028_frontend_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp3028_frontend_init._entry_ptr.15 = internal global ptr @vp3028_frontend_init._entry.14, section ".printk_index", align 4
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zl10353_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:zl10353_attach\00", [42 x i8] zeroinitializer }, align 32
@hopper_vp3028_config = internal global { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 15, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@vp3028_frontend_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol zl10353_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@vp3028_frontend_init._entry_ptr.20 = internal global ptr @vp3028_frontend_init._entry.18, section ".printk_index", align 4
@vp3028_frontend_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s (%d): Frontend on <%s> POWER ON failed! <%d>\0A\00", [45 x i8] zeroinitializer }, align 32
@vp3028_frontend_init._entry_ptr.23 = internal global ptr @vp3028_frontend_init._entry.21, section ".printk_index", align 4
@vp3028_frontend_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015%s (%d): Frontend on <%s> POWER ON failed! <%d>\0A\00", [45 x i8] zeroinitializer }, align 32
@vp3028_frontend_init._entry_ptr.26 = internal global ptr @vp3028_frontend_init._entry.24, section ".printk_index", align 4
@vp3028_frontend_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s (%d): Frontend on <%s> POWER ON failed! <%d>\0A\00", [45 x i8] zeroinitializer }, align 32
@vp3028_frontend_init._entry_ptr.29 = internal global ptr @vp3028_frontend_init._entry.27, section ".printk_index", align 4
@vp3028_frontend_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s (%d): Frontend on <%s> POWER ON failed! <%d>\0A\00", [45 x i8] zeroinitializer }, align 32
@vp3028_frontend_init._entry_ptr.32 = internal global ptr @vp3028_frontend_init._entry.30, section ".printk_index", align 4
@vp3028_frontend_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp3028_frontend_init._entry_ptr.34 = internal global ptr @vp3028_frontend_init._entry.33, section ".printk_index", align 4
@vp3028_frontend_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.3, ptr @.str.4, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013%s (%d): Done!\0A\00", [46 x i8] zeroinitializer }, align 32
@vp3028_frontend_init._entry_ptr.37 = internal global ptr @vp3028_frontend_init._entry.35, section ".printk_index", align 4
@vp3028_frontend_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.3, ptr @.str.4, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\015%s (%d): Done!\0A\00", [46 x i8] zeroinitializer }, align 32
@vp3028_frontend_init._entry_ptr.40 = internal global ptr @vp3028_frontend_init._entry.38, section ".printk_index", align 4
@vp3028_frontend_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.3, ptr @.str.4, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016%s (%d): Done!\0A\00", [46 x i8] zeroinitializer }, align 32
@vp3028_frontend_init._entry_ptr.43 = internal global ptr @vp3028_frontend_init._entry.41, section ".printk_index", align 4
@vp3028_frontend_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.3, ptr @.str.4, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s (%d): Done!\0A\00", [46 x i8] zeroinitializer }, align 32
@vp3028_frontend_init._entry_ptr.46 = internal global ptr @vp3028_frontend_init._entry.44, section ".printk_index", align 4
@vp3028_frontend_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.3, ptr @.str.4, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp3028_frontend_init._entry_ptr.48 = internal global ptr @vp3028_frontend_init._entry.47, section ".printk_index", align 4
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 65, i32 16 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 66, i32 14 }
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"vp3028_config\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 64, i32 24 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 47, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [21 x i8] c"hopper_vp3028_config\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 25, i32 30 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 48, i32 8 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 53, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.158 = private constant [44 x i8] c"../drivers/media/pci/mantis/hopper_vp3028.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 59, i32 2 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @vp3028_frontend_init._entry, ptr @vp3028_frontend_init._entry.11, ptr @vp3028_frontend_init._entry.14, ptr @vp3028_frontend_init._entry.18, ptr @vp3028_frontend_init._entry.21, ptr @vp3028_frontend_init._entry.24, ptr @vp3028_frontend_init._entry.27, ptr @vp3028_frontend_init._entry.30, ptr @vp3028_frontend_init._entry.33, ptr @vp3028_frontend_init._entry.35, ptr @vp3028_frontend_init._entry.38, ptr @vp3028_frontend_init._entry.41, ptr @vp3028_frontend_init._entry.44, ptr @vp3028_frontend_init._entry.47, ptr @vp3028_frontend_init._entry.5, ptr @vp3028_frontend_init._entry.8, ptr @vp3028_frontend_init._entry_ptr, ptr @vp3028_frontend_init._entry_ptr.10, ptr @vp3028_frontend_init._entry_ptr.13, ptr @vp3028_frontend_init._entry_ptr.15, ptr @vp3028_frontend_init._entry_ptr.20, ptr @vp3028_frontend_init._entry_ptr.23, ptr @vp3028_frontend_init._entry_ptr.26, ptr @vp3028_frontend_init._entry_ptr.29, ptr @vp3028_frontend_init._entry_ptr.32, ptr @vp3028_frontend_init._entry_ptr.34, ptr @vp3028_frontend_init._entry_ptr.37, ptr @vp3028_frontend_init._entry_ptr.40, ptr @vp3028_frontend_init._entry_ptr.43, ptr @vp3028_frontend_init._entry_ptr.46, ptr @vp3028_frontend_init._entry_ptr.48, ptr @vp3028_frontend_init._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @vp3028_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.16, ptr @.str.17, ptr @hopper_vp3028_config, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3028_config to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3028_frontend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3028_frontend_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3028_frontend_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3028_frontend_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3028_frontend_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hopper_vp3028_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3028_frontend_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3028_frontend_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3028_frontend_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3028_frontend_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3028_frontend_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3028_frontend_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3028_frontend_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3028_frontend_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3028_frontend_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3028_frontend_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3028_frontend_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp3028_frontend_init(ptr noundef %mantis, ptr nocapture noundef readnone %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 20
  %hwconfig = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 32
  %0 = ptrtoint ptr %hwconfig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwconfig, align 4
  %reset = getelementptr inbounds %struct.mantis_hwconfig, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reset, align 1
  %conv = zext i8 %3 to i32
  tail call void @mantis_gpio_set_bits(ptr noundef %mantis, i32 noundef %conv, i8 noundef zeroext 0) #3
  tail call void @msleep(i32 noundef 100) #3
  %call = tail call i32 @mantis_frontend_power(ptr noundef %mantis, i32 noundef 1) #3
  tail call void @msleep(i32 noundef 100) #3
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reset, align 1
  %conv3 = zext i8 %5 to i32
  tail call void @mantis_gpio_set_bits(ptr noundef %mantis, i32 noundef %conv3, i8 noundef zeroext 1) #3
  %call4 = tail call i32 @mantis_frontend_power(ptr noundef %mantis, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %do.body101

if.then:                                          ; preds = %entry
  tail call void @msleep(i32 noundef 250) #3
  %6 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6.not = icmp eq i32 %7, 0
  br i1 %cmp6.not, label %if.then.do.end78_crit_edge, label %do.end

if.then.do.end78_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end78

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %num = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num, align 8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %9) #6
  br label %do.end78

do.end78:                                         ; preds = %do.end, %if.then.do.end78_crit_edge
  %call79 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.16) #3
  %tobool.not = icmp eq ptr %call79, null
  br i1 %tobool.not, label %cond.end, label %do.end78.if.then83_crit_edge

do.end78.if.then83_crit_edge:                     ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then83

cond.end:                                         ; preds = %do.end78
  %call80 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.17) #3
  %call81 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.16) #3
  %tobool82.not = icmp eq ptr %call81, null
  br i1 %tobool82.not, label %do.end92, label %cond.end.if.then83_crit_edge

cond.end.if.then83_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then83

if.then83:                                        ; preds = %cond.end.if.then83_crit_edge, %do.end78.if.then83_crit_edge
  %cond341 = phi ptr [ %call81, %cond.end.if.then83_crit_edge ], [ %call79, %do.end78.if.then83_crit_edge ]
  %call84 = tail call ptr %cond341(ptr noundef nonnull @hopper_vp3028_config, ptr noundef %adapter1) #3
  %cmp85 = icmp eq ptr %call84, null
  br i1 %cmp85, label %if.then87, label %do.body192

if.then87:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @__symbol_put(ptr noundef nonnull @.str.16) #3
  br label %cleanup

do.end92:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #6
  br label %cleanup

do.body101:                                       ; preds = %entry
  %10 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp103.not = icmp eq i32 %11, 0
  br i1 %cmp103.not, label %do.body101.cleanup_crit_edge, label %do.end112

do.body101.cleanup_crit_edge:                     ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end112:                                        ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #5
  %num114 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %12 = ptrtoint ptr %num114 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num114, align 8
  %name = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 20, i32 12
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.3, i32 noundef %13, ptr noundef %name, i32 noundef %call4) #6
  br label %cleanup

do.body192:                                       ; preds = %if.then83
  %14 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp194.not = icmp eq i32 %15, 0
  br i1 %cmp194.not, label %do.body192.cleanup_crit_edge, label %do.end203

do.body192.cleanup_crit_edge:                     ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end203:                                        ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #5
  %num205 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %16 = ptrtoint ptr %num205 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num205, align 8
  %call206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, i32 noundef %17) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end203, %do.body192.cleanup_crit_edge, %do.end112, %do.body101.cleanup_crit_edge, %do.end92, %if.then87
  %retval.0 = phi i32 [ -5, %do.end112 ], [ 0, %do.end203 ], [ -5, %do.body101.cleanup_crit_edge ], [ 0, %do.body192.cleanup_crit_edge ], [ -1, %if.then87 ], [ -1, %do.end92 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mantis_gpio_set_bits(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mantis_frontend_power(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/mantis/hopper_vp3028.c", i32 65, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/mantis/hopper_vp3028.c", i32 66, i32 14}
!4 = !{ptr @vp3028_config, !5, !"vp3028_config", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/mantis/hopper_vp3028.c", i32 64, i32 24}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/mantis/hopper_vp3028.c", i32 47, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @vp3028_frontend_init._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @vp3028_frontend_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @vp3028_frontend_init._entry.5, !7, !"_entry", i1 false, i1 false}
!14 = !{ptr @vp3028_frontend_init._entry_ptr.7, !7, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !7, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @vp3028_frontend_init._entry.8, !7, !"_entry", i1 false, i1 false}
!17 = !{ptr @vp3028_frontend_init._entry_ptr.10, !7, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !7, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @vp3028_frontend_init._entry.11, !7, !"_entry", i1 false, i1 false}
!20 = !{ptr @vp3028_frontend_init._entry_ptr.13, !7, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @vp3028_frontend_init._entry.14, !7, !"_entry", i1 false, i1 false}
!22 = !{ptr @vp3028_frontend_init._entry_ptr.15, !7, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/mantis/hopper_vp3028.c", i32 48, i32 8}
!25 = !{ptr @.str.17, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.19, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @vp3028_frontend_init._entry.18, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @vp3028_frontend_init._entry_ptr.20, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.22, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/mantis/hopper_vp3028.c", i32 53, i32 3}
!31 = !{ptr @vp3028_frontend_init._entry.21, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @vp3028_frontend_init._entry_ptr.23, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.25, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @vp3028_frontend_init._entry.24, !30, !"_entry", i1 false, i1 false}
!35 = !{ptr @vp3028_frontend_init._entry_ptr.26, !30, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.28, !30, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @vp3028_frontend_init._entry.27, !30, !"_entry", i1 false, i1 false}
!38 = !{ptr @vp3028_frontend_init._entry_ptr.29, !30, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.31, !30, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @vp3028_frontend_init._entry.30, !30, !"_entry", i1 false, i1 false}
!41 = !{ptr @vp3028_frontend_init._entry_ptr.32, !30, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @vp3028_frontend_init._entry.33, !30, !"_entry", i1 false, i1 false}
!43 = !{ptr @vp3028_frontend_init._entry_ptr.34, !30, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.36, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/mantis/hopper_vp3028.c", i32 59, i32 2}
!46 = !{ptr @vp3028_frontend_init._entry.35, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @vp3028_frontend_init._entry_ptr.37, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.39, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @vp3028_frontend_init._entry.38, !45, !"_entry", i1 false, i1 false}
!50 = !{ptr @vp3028_frontend_init._entry_ptr.40, !45, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.42, !45, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @vp3028_frontend_init._entry.41, !45, !"_entry", i1 false, i1 false}
!53 = !{ptr @vp3028_frontend_init._entry_ptr.43, !45, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.45, !45, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @vp3028_frontend_init._entry.44, !45, !"_entry", i1 false, i1 false}
!56 = !{ptr @vp3028_frontend_init._entry_ptr.46, !45, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @vp3028_frontend_init._entry.47, !45, !"_entry", i1 false, i1 false}
!58 = !{ptr @vp3028_frontend_init._entry_ptr.48, !45, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @hopper_vp3028_config, !60, !"hopper_vp3028_config", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/mantis/hopper_vp3028.c", i32 25, i32 30}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
