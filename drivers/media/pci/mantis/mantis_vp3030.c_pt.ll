; ModuleID = '/llk/IR_all_yes/drivers/media/pci/mantis/mantis_vp3030.c_pt.bc'
source_filename = "../drivers/media/pci/mantis/mantis_vp3030.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mantis_hwconfig = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.zl10353_config = type { i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.tda665x_config = type { [128 x i8], i8, i32, i32, i32, i32, i32 }
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

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VP-3030\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DVB-T\00", [26 x i8] zeroinitializer }, align 32
@vp3030_config = dso_local global { %struct.mantis_hwconfig, [56 x i8] } { %struct.mantis_hwconfig { ptr @.str, ptr @.str.1, i32 0, i32 0, i32 0, i32 0, ptr null, ptr @vp3030_frontend_init, i8 12, i8 13, i32 1 }, [56 x i8] zeroinitializer }, align 32
@vp3030_frontend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s (%d): Probing for 10353 (DVB-T)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vp3030_frontend_init\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/pci/mantis/mantis_vp3030.c\00", [55 x i8] zeroinitializer }, align 32
@vp3030_frontend_init._entry_ptr = internal global ptr @vp3030_frontend_init._entry, section ".printk_index", align 4
@vp3030_frontend_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015%s (%d): Probing for 10353 (DVB-T)\0A\00", [58 x i8] zeroinitializer }, align 32
@vp3030_frontend_init._entry_ptr.7 = internal global ptr @vp3030_frontend_init._entry.5, section ".printk_index", align 4
@vp3030_frontend_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s (%d): Probing for 10353 (DVB-T)\0A\00", [58 x i8] zeroinitializer }, align 32
@vp3030_frontend_init._entry_ptr.10 = internal global ptr @vp3030_frontend_init._entry.8, section ".printk_index", align 4
@vp3030_frontend_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s (%d): Probing for 10353 (DVB-T)\0A\00", [58 x i8] zeroinitializer }, align 32
@vp3030_frontend_init._entry_ptr.13 = internal global ptr @vp3030_frontend_init._entry.11, section ".printk_index", align 4
@vp3030_frontend_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp3030_frontend_init._entry_ptr.15 = internal global ptr @vp3030_frontend_init._entry.14, section ".printk_index", align 4
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zl10353_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:zl10353_attach\00", [42 x i8] zeroinitializer }, align 32
@mantis_vp3030_config = internal global { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 15, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@vp3030_frontend_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol zl10353_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@vp3030_frontend_init._entry_ptr.20 = internal global ptr @vp3030_frontend_init._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda665x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:tda665x_attach\00", [42 x i8] zeroinitializer }, align 32
@env57h12d5_config = internal global { %struct.tda665x_config, [40 x i8] } { %struct.tda665x_config { [128 x i8] c"ENV57H12D5 (ET-50DT)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 96, i32 47000000, i32 862000000, i32 3616667, i32 6, i32 100000 }, [40 x i8] zeroinitializer }, align 32
@vp3030_frontend_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol tda665x_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@vp3030_frontend_init._entry_ptr.25 = internal global ptr @vp3030_frontend_init._entry.23, section ".printk_index", align 4
@vp3030_frontend_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s (%d): Frontend on <%s> POWER ON failed! <%d>\0A\00", [45 x i8] zeroinitializer }, align 32
@vp3030_frontend_init._entry_ptr.28 = internal global ptr @vp3030_frontend_init._entry.26, section ".printk_index", align 4
@vp3030_frontend_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015%s (%d): Frontend on <%s> POWER ON failed! <%d>\0A\00", [45 x i8] zeroinitializer }, align 32
@vp3030_frontend_init._entry_ptr.31 = internal global ptr @vp3030_frontend_init._entry.29, section ".printk_index", align 4
@vp3030_frontend_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.3, ptr @.str.4, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s (%d): Frontend on <%s> POWER ON failed! <%d>\0A\00", [45 x i8] zeroinitializer }, align 32
@vp3030_frontend_init._entry_ptr.34 = internal global ptr @vp3030_frontend_init._entry.32, section ".printk_index", align 4
@vp3030_frontend_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.3, ptr @.str.4, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s (%d): Frontend on <%s> POWER ON failed! <%d>\0A\00", [45 x i8] zeroinitializer }, align 32
@vp3030_frontend_init._entry_ptr.37 = internal global ptr @vp3030_frontend_init._entry.35, section ".printk_index", align 4
@vp3030_frontend_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.3, ptr @.str.4, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp3030_frontend_init._entry_ptr.39 = internal global ptr @vp3030_frontend_init._entry.38, section ".printk_index", align 4
@vp3030_frontend_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.3, ptr @.str.4, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013%s (%d): Done!\0A\00", [46 x i8] zeroinitializer }, align 32
@vp3030_frontend_init._entry_ptr.42 = internal global ptr @vp3030_frontend_init._entry.40, section ".printk_index", align 4
@vp3030_frontend_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.3, ptr @.str.4, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\015%s (%d): Done!\0A\00", [46 x i8] zeroinitializer }, align 32
@vp3030_frontend_init._entry_ptr.45 = internal global ptr @vp3030_frontend_init._entry.43, section ".printk_index", align 4
@vp3030_frontend_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.3, ptr @.str.4, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016%s (%d): Done!\0A\00", [46 x i8] zeroinitializer }, align 32
@vp3030_frontend_init._entry_ptr.48 = internal global ptr @vp3030_frontend_init._entry.46, section ".printk_index", align 4
@vp3030_frontend_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.3, ptr @.str.4, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s (%d): Done!\0A\00", [46 x i8] zeroinitializer }, align 32
@vp3030_frontend_init._entry_ptr.51 = internal global ptr @vp3030_frontend_init._entry.49, section ".printk_index", align 4
@vp3030_frontend_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.3, ptr @.str.4, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp3030_frontend_init._entry_ptr.53 = internal global ptr @vp3030_frontend_init._entry.52, section ".printk_index", align 4
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 80, i32 16 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 81, i32 14 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"vp3030_config\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 79, i32 24 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 58, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [21 x i8] c"mantis_vp3030_config\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 26, i32 30 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 59, i32 8 }
@___asan_gen_.117 = private unnamed_addr constant [18 x i8] c"env57h12d5_config\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 30, i32 30 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 64, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 66, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.178 = private constant [44 x i8] c"../drivers/media/pci/mantis/mantis_vp3030.c\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 74, i32 2 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @vp3030_frontend_init._entry, ptr @vp3030_frontend_init._entry.11, ptr @vp3030_frontend_init._entry.14, ptr @vp3030_frontend_init._entry.18, ptr @vp3030_frontend_init._entry.23, ptr @vp3030_frontend_init._entry.26, ptr @vp3030_frontend_init._entry.29, ptr @vp3030_frontend_init._entry.32, ptr @vp3030_frontend_init._entry.35, ptr @vp3030_frontend_init._entry.38, ptr @vp3030_frontend_init._entry.40, ptr @vp3030_frontend_init._entry.43, ptr @vp3030_frontend_init._entry.46, ptr @vp3030_frontend_init._entry.49, ptr @vp3030_frontend_init._entry.5, ptr @vp3030_frontend_init._entry.52, ptr @vp3030_frontend_init._entry.8, ptr @vp3030_frontend_init._entry_ptr, ptr @vp3030_frontend_init._entry_ptr.10, ptr @vp3030_frontend_init._entry_ptr.13, ptr @vp3030_frontend_init._entry_ptr.15, ptr @vp3030_frontend_init._entry_ptr.20, ptr @vp3030_frontend_init._entry_ptr.25, ptr @vp3030_frontend_init._entry_ptr.28, ptr @vp3030_frontend_init._entry_ptr.31, ptr @vp3030_frontend_init._entry_ptr.34, ptr @vp3030_frontend_init._entry_ptr.37, ptr @vp3030_frontend_init._entry_ptr.39, ptr @vp3030_frontend_init._entry_ptr.42, ptr @vp3030_frontend_init._entry_ptr.45, ptr @vp3030_frontend_init._entry_ptr.48, ptr @vp3030_frontend_init._entry_ptr.51, ptr @vp3030_frontend_init._entry_ptr.53, ptr @vp3030_frontend_init._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @vp3030_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.16, ptr @.str.17, ptr @mantis_vp3030_config, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @env57h12d5_config, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3030_config to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3030_frontend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3030_frontend_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3030_frontend_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3030_frontend_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3030_frontend_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_vp3030_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3030_frontend_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @env57h12d5_config to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3030_frontend_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3030_frontend_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3030_frontend_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3030_frontend_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3030_frontend_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3030_frontend_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3030_frontend_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3030_frontend_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3030_frontend_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3030_frontend_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp3030_frontend_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp3030_frontend_init(ptr noundef %mantis, ptr nocapture noundef readnone %fe) #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %do.body125

if.then:                                          ; preds = %entry
  tail call void @msleep(i32 noundef 250) #3
  %6 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5.not = icmp eq i32 %7, 0
  br i1 %cmp5.not, label %if.then.do.end77_crit_edge, label %do.end

if.then.do.end77_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end77

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %num = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num, align 8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %9) #6
  br label %do.end77

do.end77:                                         ; preds = %do.end, %if.then.do.end77_crit_edge
  %call78 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.16) #3
  %tobool.not = icmp eq ptr %call78, null
  br i1 %tobool.not, label %cond.end, label %do.end77.if.then82_crit_edge

do.end77.if.then82_crit_edge:                     ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then82

cond.end:                                         ; preds = %do.end77
  %call79 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.17) #3
  %call80 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.16) #3
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %do.end91, label %cond.end.if.then82_crit_edge

cond.end.if.then82_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then82

if.then82:                                        ; preds = %cond.end.if.then82_crit_edge, %do.end77.if.then82_crit_edge
  %cond371 = phi ptr [ %call80, %cond.end.if.then82_crit_edge ], [ %call78, %do.end77.if.then82_crit_edge ]
  %call83 = tail call ptr %cond371(ptr noundef nonnull @mantis_vp3030_config, ptr noundef %adapter1) #3
  %cmp84 = icmp eq ptr %call83, null
  br i1 %cmp84, label %if.then86, label %if.end98

if.then86:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @__symbol_put(ptr noundef nonnull @.str.16) #3
  br label %cleanup

do.end91:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #6
  br label %cleanup

if.end98:                                         ; preds = %if.then82
  %call101 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.21) #3
  %tobool102.not = icmp eq ptr %call101, null
  br i1 %tobool102.not, label %cond.end107, label %if.end98.if.then110_crit_edge

if.end98.if.then110_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then110

cond.end107:                                      ; preds = %if.end98
  %call105 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.22) #3
  %call106 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.21) #3
  %tobool109.not = icmp eq ptr %call106, null
  br i1 %tobool109.not, label %do.end119, label %cond.end107.if.then110_crit_edge

cond.end107.if.then110_crit_edge:                 ; preds = %cond.end107
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then110

if.then110:                                       ; preds = %cond.end107.if.then110_crit_edge, %if.end98.if.then110_crit_edge
  %cond108376 = phi ptr [ %call106, %cond.end107.if.then110_crit_edge ], [ %call101, %if.end98.if.then110_crit_edge ]
  %call111 = tail call ptr %cond108376(ptr noundef nonnull %call83, ptr noundef nonnull @env57h12d5_config, ptr noundef %adapter1) #3
  %cmp112 = icmp eq ptr %call111, null
  br i1 %cmp112, label %if.then114, label %if.then110.if.end122_crit_edge

if.then110.if.end122_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end122

if.then114:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @__symbol_put(ptr noundef nonnull @.str.21) #3
  br label %if.end122

do.end119:                                        ; preds = %cond.end107
  call void @__sanitizer_cov_trace_pc() #5
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #6
  br label %if.end122

if.end122:                                        ; preds = %do.end119, %if.then114, %if.then110.if.end122_crit_edge
  %fe216 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 25
  %10 = ptrtoint ptr %fe216 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call83, ptr %fe216, align 4
  %11 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp219.not = icmp eq i32 %12, 0
  br i1 %cmp219.not, label %if.end122.cleanup_crit_edge, label %do.end228

if.end122.cleanup_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body125:                                       ; preds = %entry
  %13 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp127.not = icmp eq i32 %14, 0
  br i1 %cmp127.not, label %do.body125.cleanup_crit_edge, label %do.end136

do.body125.cleanup_crit_edge:                     ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end136:                                        ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #5
  %num138 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %15 = ptrtoint ptr %num138 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num138, align 8
  %name = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 20, i32 12
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.3, i32 noundef %16, ptr noundef %name, i32 noundef %call) #6
  br label %cleanup

do.end228:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #5
  %num230 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %17 = ptrtoint ptr %num230 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num230, align 8
  %call231 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3, i32 noundef %18) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end228, %do.end136, %do.body125.cleanup_crit_edge, %if.end122.cleanup_crit_edge, %do.end91, %if.then86
  %retval.0 = phi i32 [ -5, %do.end136 ], [ 0, %do.end228 ], [ -5, %do.body125.cleanup_crit_edge ], [ 0, %if.end122.cleanup_crit_edge ], [ -1, %if.then86 ], [ -1, %do.end91 ]
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

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/mantis/mantis_vp3030.c", i32 80, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/mantis/mantis_vp3030.c", i32 81, i32 14}
!4 = !{ptr @vp3030_config, !5, !"vp3030_config", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/mantis/mantis_vp3030.c", i32 79, i32 24}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/mantis/mantis_vp3030.c", i32 58, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @vp3030_frontend_init._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @vp3030_frontend_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @vp3030_frontend_init._entry.5, !7, !"_entry", i1 false, i1 false}
!14 = !{ptr @vp3030_frontend_init._entry_ptr.7, !7, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !7, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @vp3030_frontend_init._entry.8, !7, !"_entry", i1 false, i1 false}
!17 = !{ptr @vp3030_frontend_init._entry_ptr.10, !7, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !7, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @vp3030_frontend_init._entry.11, !7, !"_entry", i1 false, i1 false}
!20 = !{ptr @vp3030_frontend_init._entry_ptr.13, !7, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @vp3030_frontend_init._entry.14, !7, !"_entry", i1 false, i1 false}
!22 = !{ptr @vp3030_frontend_init._entry_ptr.15, !7, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/mantis/mantis_vp3030.c", i32 59, i32 8}
!25 = !{ptr @.str.17, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.19, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @vp3030_frontend_init._entry.18, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @vp3030_frontend_init._entry_ptr.20, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.21, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/mantis/mantis_vp3030.c", i32 64, i32 3}
!31 = !{ptr @.str.22, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.24, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @vp3030_frontend_init._entry.23, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @vp3030_frontend_init._entry_ptr.25, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.27, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/mantis/mantis_vp3030.c", i32 66, i32 3}
!37 = !{ptr @vp3030_frontend_init._entry.26, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @vp3030_frontend_init._entry_ptr.28, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.30, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @vp3030_frontend_init._entry.29, !36, !"_entry", i1 false, i1 false}
!41 = !{ptr @vp3030_frontend_init._entry_ptr.31, !36, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.33, !36, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @vp3030_frontend_init._entry.32, !36, !"_entry", i1 false, i1 false}
!44 = !{ptr @vp3030_frontend_init._entry_ptr.34, !36, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.36, !36, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @vp3030_frontend_init._entry.35, !36, !"_entry", i1 false, i1 false}
!47 = !{ptr @vp3030_frontend_init._entry_ptr.37, !36, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @vp3030_frontend_init._entry.38, !36, !"_entry", i1 false, i1 false}
!49 = !{ptr @vp3030_frontend_init._entry_ptr.39, !36, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.41, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/mantis/mantis_vp3030.c", i32 74, i32 2}
!52 = !{ptr @vp3030_frontend_init._entry.40, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @vp3030_frontend_init._entry_ptr.42, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.44, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @vp3030_frontend_init._entry.43, !51, !"_entry", i1 false, i1 false}
!56 = !{ptr @vp3030_frontend_init._entry_ptr.45, !51, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.47, !51, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @vp3030_frontend_init._entry.46, !51, !"_entry", i1 false, i1 false}
!59 = !{ptr @vp3030_frontend_init._entry_ptr.48, !51, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.50, !51, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @vp3030_frontend_init._entry.49, !51, !"_entry", i1 false, i1 false}
!62 = !{ptr @vp3030_frontend_init._entry_ptr.51, !51, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @vp3030_frontend_init._entry.52, !51, !"_entry", i1 false, i1 false}
!64 = !{ptr @vp3030_frontend_init._entry_ptr.53, !51, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @mantis_vp3030_config, !66, !"mantis_vp3030_config", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/mantis/mantis_vp3030.c", i32 26, i32 30}
!67 = !{ptr @env57h12d5_config, !68, !"env57h12d5_config", i1 false, i1 false}
!68 = !{!"../drivers/media/pci/mantis/mantis_vp3030.c", i32 30, i32 30}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
