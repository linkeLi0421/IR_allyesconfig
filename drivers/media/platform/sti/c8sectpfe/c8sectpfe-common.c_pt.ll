; ModuleID = '/llk/IR_all_yes/drivers/media/platform/sti/c8sectpfe/c8sectpfe-common.c_pt.bc'
source_filename = "../drivers/media/platform/sti/c8sectpfe/c8sectpfe-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.c8sectpfei = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.atomic_t, i32, %struct.c8sectpfe_hw, [3 x ptr], [16 x i32], %struct.mutex, %struct.timer_list, ptr, ptr, i32, [8 x ptr], ptr, i32, i32, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.c8sectpfe_hw = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.channel_info = type { i32, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, %struct.completion, %struct.tasklet_struct, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.124, i32 }
%union.anon.124 = type { ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c8sectpfe = type { [7 x %struct.stdemux], %struct.mutex, %struct.dvb_adapter, ptr, i32, i32 }
%struct.stdemux = type { %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, i32, i32, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }

@c8sectpfe_tuner_register_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 250, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dvb_register_frontend failed (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"c8sectpfe_tuner_register_frontend\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/media/platform/sti/c8sectpfe/c8sectpfe-common.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@c8sectpfe_tuner_register_frontend._entry_ptr = internal global ptr @c8sectpfe_tuner_register_frontend._entry, section ".printk_index", align 4
@c8sectpfe_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&c8sectpfe->lock\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"STi c8sectpfe\00", [18 x i8] zeroinitializer }, align 32
@c8sectpfe_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 148, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"dvb_register_adapter failed (errno = %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"c8sectpfe_create\00", [47 x i8] zeroinitializer }, align 32
@c8sectpfe_create._entry_ptr = internal global ptr @c8sectpfe_create._entry, section ".printk_index", align 4
@c8sectpfe_create._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 164, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"register_dvb feed=%d failed (errno = %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@c8sectpfe_create._entry_ptr.11 = internal global ptr @c8sectpfe_create._entry.9, section ".printk_index", align 4
@register_dvb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 55, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dvb_dmx_init failed (errno = %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"register_dvb\00", [19 x i8] zeroinitializer }, align 32
@register_dvb._entry_ptr = internal global ptr @register_dvb._entry, section ".printk_index", align 4
@register_dvb._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 66, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dvb_dmxdev_init failed (errno = %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@register_dvb._entry_ptr.16 = internal global ptr @register_dvb._entry.14, section ".printk_index", align 4
@register_dvb._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 76, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"add_frontend failed (errno = %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@register_dvb._entry_ptr.19 = internal global ptr @register_dvb._entry.17, section ".printk_index", align 4
@register_dvb._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 84, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"add_frontend failed (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@register_dvb._entry_ptr.22 = internal global ptr @register_dvb._entry.20, section ".printk_index", align 4
@register_dvb._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.13, ptr @.str.2, i32 91, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"connect_frontend (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@register_dvb._entry_ptr.25 = internal global ptr @register_dvb._entry.23, section ".printk_index", align 4
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 249, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 140, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 144, i32 53 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 147, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 162, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 54, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 65, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 76, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 84, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [59 x i8] c"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-common.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 91, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @c8sectpfe_create._entry, ptr @c8sectpfe_create._entry.9, ptr @c8sectpfe_create._entry_ptr, ptr @c8sectpfe_create._entry_ptr.11, ptr @c8sectpfe_tuner_register_frontend._entry, ptr @c8sectpfe_tuner_register_frontend._entry_ptr, ptr @register_dvb._entry, ptr @register_dvb._entry.14, ptr @register_dvb._entry.17, ptr @register_dvb._entry.20, ptr @register_dvb._entry.23, ptr @register_dvb._entry_ptr, ptr @register_dvb._entry_ptr.16, ptr @register_dvb._entry_ptr.19, ptr @register_dvb._entry_ptr.22, ptr @register_dvb._entry_ptr.25, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @c8sectpfe_create.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_tuner_register_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_create._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dvb._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c8sectpfe_tuner_unregister_frontend(ptr noundef %c8sectpfe, ptr nocapture noundef readonly %fei) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tsin_count = getelementptr inbounds %struct.c8sectpfei, ptr %fei, i32 0, i32 6
  %0 = ptrtoint ptr %tsin_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tsin_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp23 = icmp sgt i32 %1, 0
  br i1 %cmp23, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %n.024 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.c8sectpfei, ptr %fei, i32 0, i32 15, i32 %n.024
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  %frontend = getelementptr inbounds %struct.channel_info, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %frontend, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @dvb_unregister_frontend(ptr noundef nonnull %5) #5
  %6 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %frontend, align 4
  tail call void @dvb_frontend_detach(ptr noundef %7) #5
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %i2c_adapter = getelementptr inbounds %struct.channel_info, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_adapter, align 4
  tail call void @i2c_put_adapter(ptr noundef %9) #5
  %i2c_client = getelementptr inbounds %struct.channel_info, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_client, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.end.for.inc_crit_edge, label %if.then6

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %driver = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4, i32 6
  %12 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %15) #5
  %16 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_client, align 4
  tail call void @i2c_unregister_device(ptr noundef %17) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %n.024, 1
  %18 = ptrtoint ptr %tsin_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tsin_count, align 4
  %cmp = icmp slt i32 %inc, %19
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %tobool.not.i = icmp eq ptr %c8sectpfe, null
  br i1 %tobool.not.i, label %for.end.c8sectpfe_delete.exit_crit_edge, label %for.cond.preheader.i

for.end.c8sectpfe_delete.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %c8sectpfe_delete.exit

for.cond.preheader.i:                             ; preds = %for.end
  %num_feeds.i = getelementptr inbounds %struct.c8sectpfe, ptr %c8sectpfe, i32 0, i32 5
  %20 = ptrtoint ptr %num_feeds.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_feeds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp7.i = icmp sgt i32 %21, 0
  br i1 %cmp7.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [7 x %struct.stdemux], ptr %c8sectpfe, i32 0, i32 %i.08.i
  %remove_frontend.i.i = getelementptr inbounds %struct.dmx_demux, ptr %arrayidx.i, i32 0, i32 11
  %22 = ptrtoint ptr %remove_frontend.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %remove_frontend.i.i, align 4
  %mem_frontend.i.i = getelementptr [7 x %struct.stdemux], ptr %c8sectpfe, i32 0, i32 %i.08.i, i32 3
  %call.i.i = tail call i32 %23(ptr noundef %arrayidx.i, ptr noundef %mem_frontend.i.i) #5
  %24 = ptrtoint ptr %remove_frontend.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %remove_frontend.i.i, align 4
  %hw_frontend.i.i = getelementptr [7 x %struct.stdemux], ptr %c8sectpfe, i32 0, i32 %i.08.i, i32 2
  %call8.i.i = tail call i32 %25(ptr noundef %arrayidx.i, ptr noundef %hw_frontend.i.i) #5
  %dmxdev.i.i = getelementptr [7 x %struct.stdemux], ptr %c8sectpfe, i32 0, i32 %i.08.i, i32 1
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev.i.i) #5
  tail call void @dvb_dmx_release(ptr noundef %arrayidx.i) #5
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %26 = ptrtoint ptr %num_feeds.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_feeds.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %27
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %adapter.i = getelementptr inbounds %struct.c8sectpfe, ptr %c8sectpfe, i32 0, i32 2
  %call.i = tail call i32 @dvb_unregister_adapter(ptr noundef %adapter.i) #5
  tail call void @kfree(ptr noundef nonnull %c8sectpfe) #5
  br label %c8sectpfe_delete.exit

c8sectpfe_delete.exit:                            ; preds = %for.end.i, %for.end.c8sectpfe_delete.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c8sectpfe_tuner_register_frontend(ptr nocapture noundef %c8sectpfe, ptr noundef %fei, ptr noundef %start_feed, ptr noundef %stop_feed) local_unnamed_addr #0 align 64 {
entry:
  %ids.i = alloca [1 x i16], align 2
  %frontend = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frontend) #5
  %0 = ptrtoint ptr %frontend to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %frontend, align 4, !annotation !52
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ids.i) #5
  %1 = ptrtoint ptr %ids.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %ids.i, align 2
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 12000, i32 noundef 3520, i32 noundef 2) #8
  %tobool.not.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool.not.i, label %entry.c8sectpfe_create.exit.thread_crit_edge, label %do.body.i

entry.c8sectpfe_create.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %c8sectpfe_create.exit.thread

do.body.i:                                        ; preds = %entry
  %lock.i = getelementptr inbounds %struct.c8sectpfe, ptr %call1.i.i.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @c8sectpfe_create.__key) #5
  %2 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fei, align 4
  %device.i = getelementptr inbounds %struct.c8sectpfe, ptr %call1.i.i.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %device.i, align 4
  %adapter.i = getelementptr inbounds %struct.c8sectpfe, ptr %call1.i.i.i.i, i32 0, i32 2
  %call2.i = call i32 @dvb_register_adapter(ptr noundef %adapter.i, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef %3, ptr noundef nonnull %ids.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end6.i, label %if.end8.i

do.end6.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fei, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7, i32 noundef %call2.i) #9
  br label %err2.i

if.end8.i:                                        ; preds = %do.body.i
  %priv.i = getelementptr inbounds %struct.c8sectpfe, ptr %call1.i.i.i.i, i32 0, i32 2, i32 5
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %fei, ptr %priv.i, align 4
  %tsin_count.i = getelementptr inbounds %struct.c8sectpfei, ptr %fei, i32 0, i32 6
  %8 = ptrtoint ptr %tsin_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tsin_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp10120.i = icmp sgt i32 %9, 0
  br i1 %cmp10120.i, label %if.end8.i.for.body.i_crit_edge, label %if.end8.i.for.cond.preheader_crit_edge

if.end8.i.for.cond.preheader_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc29.i.for.body.i_crit_edge, %if.end8.i.for.body.i_crit_edge
  %i.0121.i = phi i32 [ %inc30.i, %for.inc29.i.for.body.i_crit_edge ], [ 0, %if.end8.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [7 x %struct.stdemux], ptr %call1.i.i.i.i, i32 0, i32 %i.0121.i
  %tsin_index.i = getelementptr [7 x %struct.stdemux], ptr %call1.i.i.i.i, i32 0, i32 %i.0121.i, i32 4
  %10 = ptrtoint ptr %tsin_index.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %i.0121.i, ptr %tsin_index.i, align 16
  %c8sectpfei.i = getelementptr [7 x %struct.stdemux], ptr %call1.i.i.i.i, i32 0, i32 %i.0121.i, i32 6
  %11 = ptrtoint ptr %c8sectpfei.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %fei, ptr %c8sectpfei.i, align 8
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 13, ptr %arrayidx.i, align 128
  %priv.i.i = getelementptr inbounds %struct.dvb_demux, ptr %arrayidx.i, i32 0, i32 1
  %13 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx.i, ptr %priv.i.i, align 4
  %filternum.i.i = getelementptr inbounds %struct.dvb_demux, ptr %arrayidx.i, i32 0, i32 2
  %14 = ptrtoint ptr %filternum.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 64, ptr %filternum.i.i, align 8
  %feednum.i.i = getelementptr inbounds %struct.dvb_demux, ptr %arrayidx.i, i32 0, i32 3
  %15 = ptrtoint ptr %feednum.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 64, ptr %feednum.i.i, align 4
  %start_feed5.i.i = getelementptr inbounds %struct.dvb_demux, ptr %arrayidx.i, i32 0, i32 4
  %16 = ptrtoint ptr %start_feed5.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %start_feed, ptr %start_feed5.i.i, align 16
  %stop_feed7.i.i = getelementptr inbounds %struct.dvb_demux, ptr %arrayidx.i, i32 0, i32 5
  %17 = ptrtoint ptr %stop_feed7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %stop_feed, ptr %stop_feed7.i.i, align 4
  %write_to_decoder.i.i = getelementptr inbounds %struct.dvb_demux, ptr %arrayidx.i, i32 0, i32 6
  %18 = ptrtoint ptr %write_to_decoder.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %write_to_decoder.i.i, align 8
  %call.i.i = call i32 @dvb_dmx_init(ptr noundef %arrayidx.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fei, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.12, i32 noundef %call.i.i) #9
  br label %do.end21.i

if.end.i.i:                                       ; preds = %for.body.i
  %21 = ptrtoint ptr %filternum.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %filternum.i.i, align 8
  %dmxdev.i.i = getelementptr [7 x %struct.stdemux], ptr %call1.i.i.i.i, i32 0, i32 %i.0121.i, i32 1
  %filternum12.i.i = getelementptr [7 x %struct.stdemux], ptr %call1.i.i.i.i, i32 0, i32 %i.0121.i, i32 1, i32 4
  %23 = ptrtoint ptr %filternum12.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %filternum12.i.i, align 128
  %demux16.i.i = getelementptr [7 x %struct.stdemux], ptr %call1.i.i.i.i, i32 0, i32 %i.0121.i, i32 1, i32 3
  %24 = ptrtoint ptr %demux16.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx.i, ptr %demux16.i.i, align 4
  %capabilities18.i.i = getelementptr [7 x %struct.stdemux], ptr %call1.i.i.i.i, i32 0, i32 %i.0121.i, i32 1, i32 5
  %25 = ptrtoint ptr %capabilities18.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %capabilities18.i.i, align 4
  %call20.i.i = call i32 @dvb_dmxdev_init(ptr noundef %dmxdev.i.i, ptr noundef %adapter.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %cmp21.i.i = icmp slt i32 %call20.i.i, 0
  br i1 %cmp21.i.i, label %do.end25.i.i, label %if.end27.i.i

do.end25.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fei, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.15, i32 noundef %call20.i.i) #9
  br label %err_dmxdev.i.i

if.end27.i.i:                                     ; preds = %if.end.i.i
  %28 = ptrtoint ptr %tsin_index.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tsin_index.i, align 16
  %add.i.i = add i32 %29, 1
  %hw_frontend.i.i = getelementptr [7 x %struct.stdemux], ptr %call1.i.i.i.i, i32 0, i32 %i.0121.i, i32 2
  %source.i.i = getelementptr [7 x %struct.stdemux], ptr %call1.i.i.i.i, i32 0, i32 %i.0121.i, i32 2, i32 1
  %30 = ptrtoint ptr %source.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add.i.i, ptr %source.i.i, align 32
  %add_frontend.i.i = getelementptr inbounds %struct.dmx_demux, ptr %arrayidx.i, i32 0, i32 10
  %31 = ptrtoint ptr %add_frontend.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add_frontend.i.i, align 8
  %call33.i.i = call i32 %32(ptr noundef %arrayidx.i, ptr noundef %hw_frontend.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %cmp34.i.i = icmp slt i32 %call33.i.i, 0
  br i1 %cmp34.i.i, label %do.end38.i.i, label %if.end40.i.i

do.end38.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fei, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.18, i32 noundef %call33.i.i) #9
  br label %err_fe_hw.i.i

if.end40.i.i:                                     ; preds = %if.end27.i.i
  %mem_frontend.i.i = getelementptr [7 x %struct.stdemux], ptr %call1.i.i.i.i, i32 0, i32 %i.0121.i, i32 3
  %source41.i.i = getelementptr [7 x %struct.stdemux], ptr %call1.i.i.i.i, i32 0, i32 %i.0121.i, i32 3, i32 1
  %35 = ptrtoint ptr %source41.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %source41.i.i, align 4
  %36 = ptrtoint ptr %add_frontend.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add_frontend.i.i, align 8
  %call48.i.i = call i32 %37(ptr noundef %arrayidx.i, ptr noundef %mem_frontend.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i.i)
  %cmp49.i.i = icmp slt i32 %call48.i.i, 0
  br i1 %cmp49.i.i, label %do.end53.i.i, label %if.end55.i.i

do.end53.i.i:                                     ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fei, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.21, i32 noundef %call48.i.i) #9
  br label %err_fe_mem.i.i

if.end55.i.i:                                     ; preds = %if.end40.i.i
  %connect_frontend.i.i = getelementptr inbounds %struct.dmx_demux, ptr %arrayidx.i, i32 0, i32 13
  %40 = ptrtoint ptr %connect_frontend.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %connect_frontend.i.i, align 4
  %call61.i.i = call i32 %41(ptr noundef %arrayidx.i, ptr noundef %hw_frontend.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i.i)
  %cmp62.i.i = icmp slt i32 %call61.i.i, 0
  br i1 %cmp62.i.i, label %do.end66.i.i, label %for.inc29.i

do.end66.i.i:                                     ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fei, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.24, i32 noundef %call61.i.i) #9
  %remove_frontend.i.i = getelementptr inbounds %struct.dmx_demux, ptr %arrayidx.i, i32 0, i32 11
  %44 = ptrtoint ptr %remove_frontend.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %remove_frontend.i.i, align 4
  %call74.i.i = call i32 %45(ptr noundef %arrayidx.i, ptr noundef %mem_frontend.i.i) #5
  br label %err_fe_mem.i.i

err_fe_mem.i.i:                                   ; preds = %do.end66.i.i, %do.end53.i.i
  %result.0.i.i = phi i32 [ %call48.i.i, %do.end53.i.i ], [ %call61.i.i, %do.end66.i.i ]
  %remove_frontend77.i.i = getelementptr inbounds %struct.dmx_demux, ptr %arrayidx.i, i32 0, i32 11
  %46 = ptrtoint ptr %remove_frontend77.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %remove_frontend77.i.i, align 4
  %call81.i.i = call i32 %47(ptr noundef %arrayidx.i, ptr noundef %hw_frontend.i.i) #5
  br label %err_fe_hw.i.i

err_fe_hw.i.i:                                    ; preds = %err_fe_mem.i.i, %do.end38.i.i
  %result.1.i.i = phi i32 [ %call33.i.i, %do.end38.i.i ], [ %result.0.i.i, %err_fe_mem.i.i ]
  call void @dvb_dmxdev_release(ptr noundef %dmxdev.i.i) #5
  br label %err_dmxdev.i.i

err_dmxdev.i.i:                                   ; preds = %err_fe_hw.i.i, %do.end25.i.i
  %result.2.i.i = phi i32 [ %call20.i.i, %do.end25.i.i ], [ %result.1.i.i, %err_fe_hw.i.i ]
  call void @dvb_dmx_release(ptr noundef %arrayidx.i) #5
  br label %do.end21.i

do.end21.i:                                       ; preds = %err_dmxdev.i.i, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ %result.2.i.i, %err_dmxdev.i.i ], [ %call.i.i, %do.end.i.i ]
  %48 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fei, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i.ph.i, i32 noundef %i.0121.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0121.i)
  %cmp24122.not.i = icmp eq i32 %i.0121.i, 0
  br i1 %cmp24122.not.i, label %do.end21.i.err3.i_crit_edge, label %do.end21.i.for.body25.i_crit_edge

do.end21.i.for.body25.i_crit_edge:                ; preds = %do.end21.i
  br label %for.body25.i

do.end21.i.err3.i_crit_edge:                      ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err3.i

for.body25.i:                                     ; preds = %for.body25.i.for.body25.i_crit_edge, %do.end21.i.for.body25.i_crit_edge
  %j.0123.i = phi i32 [ %inc.i, %for.body25.i.for.body25.i_crit_edge ], [ 0, %do.end21.i.for.body25.i_crit_edge ]
  %arrayidx27.i = getelementptr [7 x %struct.stdemux], ptr %call1.i.i.i.i, i32 0, i32 %j.0123.i
  %remove_frontend.i72.i = getelementptr inbounds %struct.dmx_demux, ptr %arrayidx27.i, i32 0, i32 11
  %50 = ptrtoint ptr %remove_frontend.i72.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %remove_frontend.i72.i, align 4
  %mem_frontend.i73.i = getelementptr [7 x %struct.stdemux], ptr %call1.i.i.i.i, i32 0, i32 %j.0123.i, i32 3
  %call.i74.i = call i32 %51(ptr noundef %arrayidx27.i, ptr noundef %mem_frontend.i73.i) #5
  %52 = ptrtoint ptr %remove_frontend.i72.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %remove_frontend.i72.i, align 4
  %hw_frontend.i75.i = getelementptr [7 x %struct.stdemux], ptr %call1.i.i.i.i, i32 0, i32 %j.0123.i, i32 2
  %call8.i.i = call i32 %53(ptr noundef %arrayidx27.i, ptr noundef %hw_frontend.i75.i) #5
  %dmxdev.i76.i = getelementptr [7 x %struct.stdemux], ptr %call1.i.i.i.i, i32 0, i32 %j.0123.i, i32 1
  call void @dvb_dmxdev_release(ptr noundef %dmxdev.i76.i) #5
  call void @dvb_dmx_release(ptr noundef %arrayidx27.i) #5
  %inc.i = add nuw nsw i32 %j.0123.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %i.0121.i
  br i1 %exitcond.not.i, label %for.body25.i.err3.i_crit_edge, label %for.body25.i.for.body25.i_crit_edge

for.body25.i.for.body25.i_crit_edge:              ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body25.i

for.body25.i.err3.i_crit_edge:                    ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err3.i

for.inc29.i:                                      ; preds = %if.end55.i.i
  %inc30.i = add nuw nsw i32 %i.0121.i, 1
  %54 = ptrtoint ptr %tsin_count.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tsin_count.i, align 4
  %cmp10.i = icmp slt i32 %inc30.i, %55
  br i1 %cmp10.i, label %for.inc29.i.for.body.i_crit_edge, label %for.inc29.i.for.cond.preheader_crit_edge

for.inc29.i.for.cond.preheader_crit_edge:         ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

for.inc29.i.for.body.i_crit_edge:                 ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

err3.i:                                           ; preds = %for.body25.i.err3.i_crit_edge, %do.end21.i.err3.i_crit_edge
  %call34.i = call i32 @dvb_unregister_adapter(ptr noundef %adapter.i) #5
  br label %err2.i

err2.i:                                           ; preds = %err3.i, %do.end6.i
  call void @kfree(ptr noundef nonnull %call1.i.i.i.i) #5
  br label %c8sectpfe_create.exit.thread

c8sectpfe_create.exit.thread:                     ; preds = %err2.i, %entry.c8sectpfe_create.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ids.i) #5
  %56 = ptrtoint ptr %c8sectpfe to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %c8sectpfe, align 4
  br label %cleanup

for.cond.preheader:                               ; preds = %for.inc29.i.for.cond.preheader_crit_edge, %if.end8.i.for.cond.preheader_crit_edge
  %.lcssa.i = phi i32 [ %9, %if.end8.i.for.cond.preheader_crit_edge ], [ %55, %for.inc29.i.for.cond.preheader_crit_edge ]
  %num_feeds.i = getelementptr inbounds %struct.c8sectpfe, ptr %call1.i.i.i.i, i32 0, i32 5
  %57 = ptrtoint ptr %num_feeds.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %.lcssa.i, ptr %num_feeds.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ids.i) #5
  %58 = ptrtoint ptr %c8sectpfe to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call1.i.i.i.i, ptr %c8sectpfe, align 4
  %59 = ptrtoint ptr %tsin_count.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tsin_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp76 = icmp sgt i32 %60, 0
  br i1 %cmp76, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %n.077 = phi i32 [ %inc, %if.end9.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.c8sectpfei, ptr %fei, i32 0, i32 15, i32 %n.077
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx, align 4
  %63 = ptrtoint ptr %c8sectpfe to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %c8sectpfe, align 4
  %call1 = call i32 @c8sectpfe_frontend_attach(ptr noundef nonnull %frontend, ptr noundef %64, ptr noundef %62, i32 noundef %n.077) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %for.body.err_crit_edge

for.body.err_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end4:                                          ; preds = %for.body
  %65 = ptrtoint ptr %c8sectpfe to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %c8sectpfe, align 4
  %adapter = getelementptr inbounds %struct.c8sectpfe, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %frontend, align 4
  %call6 = call i32 @dvb_register_frontend(ptr noundef %adapter, ptr noundef %68) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %fei to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fei, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str, i32 noundef %call6) #9
  br label %err

if.end9:                                          ; preds = %if.end4
  %71 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %frontend, align 4
  %frontend10 = getelementptr inbounds %struct.channel_info, ptr %62, i32 0, i32 11
  %73 = ptrtoint ptr %frontend10 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %frontend10, align 4
  %inc = add nuw nsw i32 %n.077, 1
  %74 = ptrtoint ptr %tsin_count.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tsin_count.i, align 4
  %cmp = icmp slt i32 %inc, %75
  br i1 %cmp, label %if.end9.for.body_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

err:                                              ; preds = %do.end, %for.body.err_crit_edge
  %res.0 = phi i32 [ %call6, %do.end ], [ %call1, %for.body.err_crit_edge ]
  %76 = ptrtoint ptr %c8sectpfe to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %c8sectpfe, align 4
  call void @c8sectpfe_tuner_unregister_frontend(ptr noundef %77, ptr noundef %fei)
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end9.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %c8sectpfe_create.exit.thread
  %retval.0 = phi i32 [ %res.0, %err ], [ -12, %c8sectpfe_create.exit.thread ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frontend) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c8sectpfe_frontend_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmxdev_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-common.c", i32 249, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @c8sectpfe_tuner_register_frontend._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @c8sectpfe_tuner_register_frontend._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @c8sectpfe_create.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-common.c", i32 140, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-common.c", i32 144, i32 53}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-common.c", i32 147, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @c8sectpfe_create._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @c8sectpfe_create._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-common.c", i32 162, i32 4}
!20 = !{ptr @c8sectpfe_create._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @c8sectpfe_create._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-common.c", i32 54, i32 3}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @register_dvb._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @register_dvb._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-common.c", i32 65, i32 3}
!29 = !{ptr @register_dvb._entry.14, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @register_dvb._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-common.c", i32 76, i32 3}
!33 = !{ptr @register_dvb._entry.17, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @register_dvb._entry_ptr.19, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-common.c", i32 84, i32 3}
!37 = !{ptr @register_dvb._entry.20, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @register_dvb._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-common.c", i32 91, i32 3}
!41 = !{ptr @register_dvb._entry.23, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @register_dvb._entry_ptr.25, !40, !"_entry_ptr", i1 false, i1 false}
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
