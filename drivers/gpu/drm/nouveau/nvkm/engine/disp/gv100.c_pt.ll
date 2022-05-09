; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/gv100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/gv100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nv50_disp_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.145, %struct.anon.145, %struct.anon.145, %struct.anon.145, %struct.anon.145, i16 }
%struct.anon.145 = type { ptr, ptr }
%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_disp_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.138 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.137 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.137 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.138 = type { %struct.spinlock, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.135, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.135 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.146, %struct.anon.146, %struct.anon.146, %struct.anon.147, %struct.anon.148, ptr, ptr, [81 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.146 = type { i32, i32 }
%struct.anon.147 = type { i32, i32, i32 }
%struct.anon.148 = type { i32, i32, [3 x i8] }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nvkm_gpuobj = type { %union.anon.2, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.2 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@gv100_disp_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 50, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: supervisor %d: %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gv100_disp_super\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/gv100.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gv100_disp_super._entry_ptr = internal global ptr @gv100_disp_super._entry, section ".printk_index", align 4
@gv100_disp_super._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 53, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: head-%d: %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@gv100_disp_super._entry_ptr.7 = internal global ptr @gv100_disp_super._entry.5, section ".printk_index", align 4
@gv100_disp_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 317, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: intr %08x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gv100_disp_intr\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@gv100_disp_intr._entry_ptr = internal global ptr @gv100_disp_intr._entry, section ".printk_index", align 4
@gv100_disp = internal constant { %struct.nv50_disp_func, [56 x i8] } { %struct.nv50_disp_func { ptr @gv100_disp_init, ptr @gv100_disp_fini, ptr @gv100_disp_intr, ptr null, ptr @gv100_disp_chan_uevent, ptr @gv100_disp_super, ptr @gv100_disp_root_oclass, %struct.anon.145 { ptr @gv100_disp_wndw_cnt, ptr null }, %struct.anon.145 { ptr @gv100_head_cnt, ptr @gv100_head_new }, %struct.anon.145 zeroinitializer, %struct.anon.145 { ptr @gv100_sor_cnt, ptr @gv100_sor_new }, %struct.anon.145 zeroinitializer, i16 8192 }, [56 x i8] zeroinitializer }, align 32
@gv100_disp_intr_head_timing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 275, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: head %08x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gv100_disp_intr_head_timing\00", [36 x i8] zeroinitializer }, align 32
@gv100_disp_intr_head_timing._entry_ptr = internal global ptr @gv100_disp_intr_head_timing._entry, section ".printk_index", align 4
@gv100_disp_intr_exc_win._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 250, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: wndw %08x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gv100_disp_intr_exc_win\00", [40 x i8] zeroinitializer }, align 32
@gv100_disp_intr_exc_win._entry_ptr = internal global ptr @gv100_disp_intr_exc_win._entry, section ".printk_index", align 4
@nv50_disp_intr_error_type = external dso_local constant [0 x %struct.nvkm_enum], align 4
@gv100_disp_exception._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 118, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s: chid %d stat %08x reason %d [%s] mthd %04x data %08x code %08x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gv100_disp_exception\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@gv100_disp_exception._entry_ptr = internal global ptr @gv100_disp_exception._entry, section ".printk_index", align 4
@.str.18 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@gv100_disp_exception._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.16, ptr @.str.2, i32 122, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: chid %d stat %08x reason %d [%s] mthd %04x\0A\00", [48 x i8] zeroinitializer }, align 32
@gv100_disp_exception._entry_ptr.21 = internal global ptr @gv100_disp_exception._entry.19, section ".printk_index", align 4
@gv100_disp_intr_exc_winim._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 230, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: wimm %08x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gv100_disp_intr_exc_winim\00", [38 x i8] zeroinitializer }, align 32
@gv100_disp_intr_exc_winim._entry_ptr = internal global ptr @gv100_disp_intr_exc_winim._entry, section ".printk_index", align 4
@gv100_disp_intr_exc_other._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 210, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: exception %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gv100_disp_intr_exc_other\00", [38 x i8] zeroinitializer }, align 32
@gv100_disp_intr_exc_other._entry_ptr = internal global ptr @gv100_disp_intr_exc_other._entry, section ".printk_index", align 4
@gv100_disp_intr_ctrl_disp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 160, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: error %08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gv100_disp_intr_ctrl_disp\00", [38 x i8] zeroinitializer }, align 32
@gv100_disp_intr_ctrl_disp._entry_ptr = internal global ptr @gv100_disp_intr_ctrl_disp._entry, section ".printk_index", align 4
@gv100_disp_intr_ctrl_disp._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 183, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: ctrl %08x\0A\00", [17 x i8] zeroinitializer }, align 32
@gv100_disp_intr_ctrl_disp._entry_ptr.30 = internal global ptr @gv100_disp_intr_ctrl_disp._entry.28, section ".printk_index", align 4
@gv100_disp_chan_uevent = external dso_local constant %struct.nvkm_event_func, align 4
@gv100_disp_root_oclass = external dso_local constant %struct.nvkm_disp_oclass, align 4
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@switch.table.gv100_disp_init = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 3, i32 2], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 50, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 53, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 317, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [11 x i8] c"gv100_disp\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 430, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 275, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 250, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 115, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 120, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 230, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 210, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 160, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 183, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/gv100.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 338, i32 7 }
@___asan_gen_.146 = private unnamed_addr constant [29 x i8] c"switch.table.gv100_disp_init\00", align 1
@llvm.compiler.used = appending global [50 x ptr] [ptr @gv100_disp_exception._entry, ptr @gv100_disp_exception._entry.19, ptr @gv100_disp_exception._entry_ptr, ptr @gv100_disp_exception._entry_ptr.21, ptr @gv100_disp_intr._entry, ptr @gv100_disp_intr._entry_ptr, ptr @gv100_disp_intr_ctrl_disp._entry, ptr @gv100_disp_intr_ctrl_disp._entry.28, ptr @gv100_disp_intr_ctrl_disp._entry_ptr, ptr @gv100_disp_intr_ctrl_disp._entry_ptr.30, ptr @gv100_disp_intr_exc_other._entry, ptr @gv100_disp_intr_exc_other._entry_ptr, ptr @gv100_disp_intr_exc_win._entry, ptr @gv100_disp_intr_exc_win._entry_ptr, ptr @gv100_disp_intr_exc_winim._entry, ptr @gv100_disp_intr_exc_winim._entry_ptr, ptr @gv100_disp_intr_head_timing._entry, ptr @gv100_disp_intr_head_timing._entry_ptr, ptr @gv100_disp_super._entry, ptr @gv100_disp_super._entry.5, ptr @gv100_disp_super._entry_ptr, ptr @gv100_disp_super._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @gv100_disp, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @switch.table.gv100_disp_init], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_disp_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_disp_super._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_disp_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_disp to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_disp_intr_head_timing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_disp_intr_exc_win._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_disp_exception._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_disp_exception._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_disp_intr_exc_winim._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_disp_intr_exc_other._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_disp_intr_ctrl_disp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_disp_intr_ctrl_disp._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gv100_disp_init to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gv100_disp_wndw_cnt(ptr nocapture noundef readonly %disp, ptr nocapture noundef writeonly %pmask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 6357092
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  %5 = ptrtoint ptr %pmask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %pmask, align 4
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 6357108
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  %and = lshr i32 %8, 20
  %shr = and i32 %and, 63
  ret i32 %shr
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gv100_disp_super(ptr noundef %work) #0 align 64 {
entry:
  %mask = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -516
  %base = getelementptr i8, ptr %work, i32 -512
  %device2 = getelementptr i8, ptr %work, i32 -500
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 6358952
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask) #5
  %debug = getelementptr i8, ptr %work, i32 -472
  %5 = call ptr @memset(ptr %mask, i32 255, i32 16)
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp ugt i32 %7, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %name = getelementptr i8, ptr %work, i32 -488
  %super = getelementptr i8, ptr %work, i32 44
  %12 = ptrtoint ptr %super to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %super, align 4
  %14 = tail call i32 @llvm.cttz.i32(i32 %13, i1 true), !range !75
  %15 = add nuw nsw i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %iszero = icmp eq i32 %13, 0
  %ffs = select i1 %iszero, i32 0, i32 %15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %ffs, i32 noundef %4) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %head11 = getelementptr i8, ptr %work, i32 -308
  %16 = ptrtoint ptr %head11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn303 = load ptr, ptr %head11, align 4
  %cmp17.not304 = icmp eq ptr %.pn303, %head11
  br i1 %cmp17.not304, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %if.end43.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn305 = phi ptr [ %.pn, %if.end43.for.body_crit_edge ], [ %.pn303, %if.end.for.body_crit_edge ]
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %id = getelementptr i8, ptr %.pn305, i32 -4
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  %mul = shl i32 %20, 2
  %add = add i32 %mul, 6358956
  %add.ptr20 = getelementptr i8, ptr %18, i32 %add
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [4 x i32], ptr %mask, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %arrayidx, align 4
  %disp27 = getelementptr i8, ptr %.pn305, i32 -8
  %25 = ptrtoint ptr %disp27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %disp27, align 4
  %debug30 = getelementptr inbounds %struct.nvkm_disp, ptr %26, i32 0, i32 1, i32 1, i32 5
  %27 = ptrtoint ptr %debug30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp31 = icmp ugt i32 %28, 3
  br i1 %cmp31, label %do.end35, label %for.body.if.end43_crit_edge

for.body.if.end43_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

do.end35:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %device36 = getelementptr inbounds %struct.nvkm_disp, ptr %26, i32 0, i32 1, i32 1, i32 1
  %29 = ptrtoint ptr %device36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device36, align 4
  %dev37 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev37, align 8
  %name38 = getelementptr inbounds %struct.nvkm_disp, ptr %26, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.6, ptr noundef %name38, i32 noundef %23, i32 noundef %21) #8
  br label %if.end43

if.end43:                                         ; preds = %do.end35, %for.body.if.end43_crit_edge
  %33 = ptrtoint ptr %.pn305 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn = load ptr, ptr %.pn305, align 4
  %cmp17.not = icmp eq ptr %.pn, %head11
  br i1 %cmp17.not, label %if.end43.for.end_crit_edge, label %if.end43.for.body_crit_edge

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end43.for.end_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end43.for.end_crit_edge, %if.end.for.end_crit_edge
  %super53 = getelementptr i8, ptr %work, i32 44
  %34 = ptrtoint ptr %super53 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %super53, align 4
  %and = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then54

if.then54:                                        ; preds = %for.end
  %chan = getelementptr i8, ptr %work, i32 216
  %36 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chan, align 4
  tail call void @nv50_disp_chan_mthd(ptr noundef %37, i32 noundef 4) #5
  tail call void @nv50_disp_super_1(ptr noundef %add.ptr) #5
  %38 = ptrtoint ptr %head11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn300306 = load ptr, ptr %head11, align 4
  %cmp66.not308 = icmp eq ptr %.pn300306, %head11
  br i1 %cmp66.not308, label %if.then54.if.end198_crit_edge, label %if.then54.for.body68_crit_edge

if.then54.for.body68_crit_edge:                   ; preds = %if.then54
  br label %for.body68

if.then54.if.end198_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end198

for.body68:                                       ; preds = %for.inc75.for.body68_crit_edge, %if.then54.for.body68_crit_edge
  %.pn300309 = phi ptr [ %.pn300, %for.inc75.for.body68_crit_edge ], [ %.pn300306, %if.then54.for.body68_crit_edge ]
  %id69 = getelementptr i8, ptr %.pn300309, i32 -4
  %39 = ptrtoint ptr %id69 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id69, align 4
  %arrayidx70 = getelementptr [4 x i32], ptr %mask, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx70, align 4
  %and71 = and i32 %42, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %for.body68.for.inc75_crit_edge, label %if.end74

for.body68.for.inc75_crit_edge:                   ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc75

if.end74:                                         ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #7
  %head.1310 = getelementptr i8, ptr %.pn300309, i32 -12
  tail call void @nv50_disp_super_1_0(ptr noundef %add.ptr, ptr noundef %head.1310) #5
  br label %for.inc75

for.inc75:                                        ; preds = %if.end74, %for.body68.for.inc75_crit_edge
  %43 = ptrtoint ptr %.pn300309 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn300 = load ptr, ptr %.pn300309, align 4
  %cmp66.not = icmp eq ptr %.pn300, %head11
  br i1 %cmp66.not, label %for.inc75.if.end198_crit_edge, label %for.inc75.for.body68_crit_edge

for.inc75.for.body68_crit_edge:                   ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body68

for.inc75.if.end198_crit_edge:                    ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end198

if.else:                                          ; preds = %for.end
  %and83 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.else165, label %for.cond92.preheader

for.cond92.preheader:                             ; preds = %if.else
  %44 = ptrtoint ptr %head11 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn297311 = load ptr, ptr %head11, align 4
  %cmp96.not313 = icmp eq ptr %.pn297311, %head11
  br i1 %cmp96.not313, label %for.cond92.preheader.for.end111_crit_edge, label %for.cond92.preheader.for.body98_crit_edge

for.cond92.preheader.for.body98_crit_edge:        ; preds = %for.cond92.preheader
  br label %for.body98

for.cond92.preheader.for.end111_crit_edge:        ; preds = %for.cond92.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end111

for.body98:                                       ; preds = %for.inc105.for.body98_crit_edge, %for.cond92.preheader.for.body98_crit_edge
  %.pn297314 = phi ptr [ %.pn297, %for.inc105.for.body98_crit_edge ], [ %.pn297311, %for.cond92.preheader.for.body98_crit_edge ]
  %id99 = getelementptr i8, ptr %.pn297314, i32 -4
  %45 = ptrtoint ptr %id99 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %id99, align 4
  %arrayidx100 = getelementptr [4 x i32], ptr %mask, i32 0, i32 %46
  %47 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx100, align 4
  %and101 = and i32 %48, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %for.body98.for.inc105_crit_edge, label %if.end104

for.body98.for.inc105_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc105

if.end104:                                        ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #7
  %head.2315 = getelementptr i8, ptr %.pn297314, i32 -12
  tail call void @nv50_disp_super_2_0(ptr noundef %add.ptr, ptr noundef %head.2315) #5
  br label %for.inc105

for.inc105:                                       ; preds = %if.end104, %for.body98.for.inc105_crit_edge
  %49 = ptrtoint ptr %.pn297314 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn297 = load ptr, ptr %.pn297314, align 4
  %cmp96.not = icmp eq ptr %.pn297, %head11
  br i1 %cmp96.not, label %for.inc105.for.end111_crit_edge, label %for.inc105.for.body98_crit_edge

for.inc105.for.body98_crit_edge:                  ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body98

for.inc105.for.end111_crit_edge:                  ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end111

for.end111:                                       ; preds = %for.inc105.for.end111_crit_edge, %for.cond92.preheader.for.end111_crit_edge
  tail call void @nvkm_outp_route(ptr noundef %base) #5
  %50 = ptrtoint ptr %head11 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn298316 = load ptr, ptr %head11, align 4
  %cmp123.not318 = icmp eq ptr %.pn298316, %head11
  br i1 %cmp123.not318, label %for.end111.for.cond145.preheader_crit_edge, label %for.end111.for.body125_crit_edge

for.end111.for.body125_crit_edge:                 ; preds = %for.end111
  br label %for.body125

for.end111.for.cond145.preheader_crit_edge:       ; preds = %for.end111
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond145.preheader

for.cond145.preheader:                            ; preds = %for.inc132.for.cond145.preheader_crit_edge, %for.end111.for.cond145.preheader_crit_edge
  %51 = ptrtoint ptr %head11 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn299321 = load ptr, ptr %head11, align 4
  %cmp149.not323 = icmp eq ptr %.pn299321, %head11
  br i1 %cmp149.not323, label %for.cond145.preheader.if.end198_crit_edge, label %for.cond145.preheader.for.body151_crit_edge

for.cond145.preheader.for.body151_crit_edge:      ; preds = %for.cond145.preheader
  br label %for.body151

for.cond145.preheader.if.end198_crit_edge:        ; preds = %for.cond145.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end198

for.body125:                                      ; preds = %for.inc132.for.body125_crit_edge, %for.end111.for.body125_crit_edge
  %.pn298319 = phi ptr [ %.pn298, %for.inc132.for.body125_crit_edge ], [ %.pn298316, %for.end111.for.body125_crit_edge ]
  %id126 = getelementptr i8, ptr %.pn298319, i32 -4
  %52 = ptrtoint ptr %id126 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id126, align 4
  %arrayidx127 = getelementptr [4 x i32], ptr %mask, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx127, align 4
  %and128 = and i32 %55, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %for.body125.for.inc132_crit_edge, label %if.end131

for.body125.for.inc132_crit_edge:                 ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc132

if.end131:                                        ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #7
  %head.3320 = getelementptr i8, ptr %.pn298319, i32 -12
  tail call void @nv50_disp_super_2_1(ptr noundef %add.ptr, ptr noundef %head.3320) #5
  br label %for.inc132

for.inc132:                                       ; preds = %if.end131, %for.body125.for.inc132_crit_edge
  %56 = ptrtoint ptr %.pn298319 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn298 = load ptr, ptr %.pn298319, align 4
  %cmp123.not = icmp eq ptr %.pn298, %head11
  br i1 %cmp123.not, label %for.inc132.for.cond145.preheader_crit_edge, label %for.inc132.for.body125_crit_edge

for.inc132.for.body125_crit_edge:                 ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body125

for.inc132.for.cond145.preheader_crit_edge:       ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond145.preheader

for.body151:                                      ; preds = %for.inc158.for.body151_crit_edge, %for.cond145.preheader.for.body151_crit_edge
  %.pn299324 = phi ptr [ %.pn299, %for.inc158.for.body151_crit_edge ], [ %.pn299321, %for.cond145.preheader.for.body151_crit_edge ]
  %id152 = getelementptr i8, ptr %.pn299324, i32 -4
  %57 = ptrtoint ptr %id152 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %id152, align 4
  %arrayidx153 = getelementptr [4 x i32], ptr %mask, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx153, align 4
  %and154 = and i32 %60, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %for.body151.for.inc158_crit_edge, label %if.end157

for.body151.for.inc158_crit_edge:                 ; preds = %for.body151
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc158

if.end157:                                        ; preds = %for.body151
  call void @__sanitizer_cov_trace_pc() #7
  %head.4325 = getelementptr i8, ptr %.pn299324, i32 -12
  tail call void @nv50_disp_super_2_2(ptr noundef %add.ptr, ptr noundef %head.4325) #5
  br label %for.inc158

for.inc158:                                       ; preds = %if.end157, %for.body151.for.inc158_crit_edge
  %61 = ptrtoint ptr %.pn299324 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn299 = load ptr, ptr %.pn299324, align 4
  %cmp149.not = icmp eq ptr %.pn299, %head11
  br i1 %cmp149.not, label %for.inc158.if.end198_crit_edge, label %for.inc158.for.body151_crit_edge

for.inc158.for.body151_crit_edge:                 ; preds = %for.inc158
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body151

for.inc158.if.end198_crit_edge:                   ; preds = %for.inc158
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end198

if.else165:                                       ; preds = %if.else
  %and167 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %if.else165.if.end198_crit_edge, label %for.cond176.preheader

if.else165.if.end198_crit_edge:                   ; preds = %if.else165
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end198

for.cond176.preheader:                            ; preds = %if.else165
  %62 = ptrtoint ptr %head11 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pn296326 = load ptr, ptr %head11, align 4
  %cmp180.not328 = icmp eq ptr %.pn296326, %head11
  br i1 %cmp180.not328, label %for.cond176.preheader.if.end198_crit_edge, label %for.cond176.preheader.for.body182_crit_edge

for.cond176.preheader.for.body182_crit_edge:      ; preds = %for.cond176.preheader
  br label %for.body182

for.cond176.preheader.if.end198_crit_edge:        ; preds = %for.cond176.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end198

for.body182:                                      ; preds = %for.inc189.for.body182_crit_edge, %for.cond176.preheader.for.body182_crit_edge
  %.pn296329 = phi ptr [ %.pn296, %for.inc189.for.body182_crit_edge ], [ %.pn296326, %for.cond176.preheader.for.body182_crit_edge ]
  %id183 = getelementptr i8, ptr %.pn296329, i32 -4
  %63 = ptrtoint ptr %id183 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %id183, align 4
  %arrayidx184 = getelementptr [4 x i32], ptr %mask, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx184, align 4
  %and185 = and i32 %66, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %for.body182.for.inc189_crit_edge, label %if.end188

for.body182.for.inc189_crit_edge:                 ; preds = %for.body182
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc189

if.end188:                                        ; preds = %for.body182
  call void @__sanitizer_cov_trace_pc() #7
  %head.5330 = getelementptr i8, ptr %.pn296329, i32 -12
  tail call void @nv50_disp_super_3_0(ptr noundef %add.ptr, ptr noundef %head.5330) #5
  br label %for.inc189

for.inc189:                                       ; preds = %if.end188, %for.body182.for.inc189_crit_edge
  %67 = ptrtoint ptr %.pn296329 to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pn296 = load ptr, ptr %.pn296329, align 4
  %cmp180.not = icmp eq ptr %.pn296, %head11
  br i1 %cmp180.not, label %for.inc189.if.end198_crit_edge, label %for.inc189.for.body182_crit_edge

for.inc189.for.body182_crit_edge:                 ; preds = %for.inc189
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body182

for.inc189.if.end198_crit_edge:                   ; preds = %for.inc189
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end198

if.end198:                                        ; preds = %for.inc189.if.end198_crit_edge, %for.cond176.preheader.if.end198_crit_edge, %if.else165.if.end198_crit_edge, %for.inc158.if.end198_crit_edge, %for.cond145.preheader.if.end198_crit_edge, %for.inc75.if.end198_crit_edge, %if.then54.if.end198_crit_edge
  %68 = ptrtoint ptr %head11 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn295331 = load ptr, ptr %head11, align 4
  %cmp209.not332 = icmp eq ptr %.pn295331, %head11
  br i1 %cmp209.not332, label %if.end198.do.body227_crit_edge, label %if.end198.do.body212_crit_edge

if.end198.do.body212_crit_edge:                   ; preds = %if.end198
  br label %do.body212

if.end198.do.body227_crit_edge:                   ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body227

do.body212:                                       ; preds = %do.body212.do.body212_crit_edge, %if.end198.do.body212_crit_edge
  %.pn295333 = phi ptr [ %.pn295, %do.body212.do.body212_crit_edge ], [ %.pn295331, %if.end198.do.body212_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %69 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pri, align 4
  %id216 = getelementptr i8, ptr %.pn295333, i32 -4
  %71 = ptrtoint ptr %id216 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %id216, align 4
  %mul217 = shl i32 %72, 2
  %add218 = add i32 %mul217, 6358956
  %add.ptr219 = getelementptr i8, ptr %70, i32 %add218
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr219, i32 0) #5, !srcloc !78
  %73 = ptrtoint ptr %.pn295333 to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pn295 = load ptr, ptr %.pn295333, align 4
  %cmp209.not = icmp eq ptr %.pn295, %head11
  br i1 %cmp209.not, label %do.body212.do.body227_crit_edge, label %do.body212.do.body212_crit_edge

do.body212.do.body212_crit_edge:                  ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body212

do.body212.do.body227_crit_edge:                  ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body227

do.body227:                                       ; preds = %do.body212.do.body227_crit_edge, %if.end198.do.body227_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %74 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pri, align 4
  %add.ptr231 = getelementptr i8, ptr %75, i32 6358952
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr231, i32 -2147483648) #5, !srcloc !78
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_chan_mthd(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_super_1(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_super_1_0(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_super_2_0(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_outp_route(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_super_2_1(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_super_2_2(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_super_3_0(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gv100_disp_intr(ptr noundef %disp) #0 align 64 {
entry:
  %wndws.i = alloca i32, align 4
  %mask.i = alloca i32, align 4
  %stat.i70 = alloca i32, align 4
  %stat.i = alloca i32, align 4
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 6364864
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #5
  %and = and i32 %4, 255
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask, i32 noundef 8, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call3)
  %cmp131 = icmp slt i32 %call3, 8
  br i1 %cmp131, label %for.body.lr.ph, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.lr.ph:                                   ; preds = %if.then
  %base.i = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1
  %debug.i = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 5
  %name.i = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 4
  br label %for.body

for.body:                                         ; preds = %gv100_disp_intr_head_timing.exit.for.body_crit_edge, %for.body.lr.ph
  %head.0133 = phi i32 [ %call3, %for.body.lr.ph ], [ %call5, %gv100_disp_intr_head_timing.exit.for.body_crit_edge ]
  %stat.0132 = phi i32 [ %4, %for.body.lr.ph ], [ %and4, %gv100_disp_intr_head_timing.exit.for.body_crit_edge ]
  %6 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device2, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri.i, align 4
  %mul.i = shl i32 %head.0133, 2
  %add.i = add i32 %mul.i, 6363136
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add.i
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  %and.i = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %do.body.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.body.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %12, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %and.i) #5, !srcloc !78
  %and8.i = and i32 %10, -4
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %for.body.if.end.i_crit_edge
  %stat.0.i = phi i32 [ %and8.i, %do.body.i ], [ %10, %for.body.if.end.i_crit_edge ]
  %and9.i = and i32 %stat.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end.i.if.end21.i_crit_edge, label %if.then11.i

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @nvkm_disp_vblank(ptr noundef %base.i, i32 noundef %head.0133) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %14, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 4) #5, !srcloc !78
  %and20.i = and i32 %stat.0.i, -5
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then11.i, %if.end.i.if.end21.i_crit_edge
  %stat.1.i = phi i32 [ %and20.i, %if.then11.i ], [ %stat.0.i, %if.end.i.if.end21.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.1.i)
  %tobool22.not.i = icmp eq i32 %stat.1.i, 0
  br i1 %tobool22.not.i, label %if.end21.i.gv100_disp_intr_head_timing.exit_crit_edge, label %do.body24.i

if.end21.i.gv100_disp_intr_head_timing.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gv100_disp_intr_head_timing.exit

do.body24.i:                                      ; preds = %if.end21.i
  %15 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i = icmp ugt i32 %16, 1
  br i1 %cmp.i, label %do.end28.i, label %do.body24.i.if.end30.i_crit_edge

do.body24.i.if.end30.i_crit_edge:                 ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.i

do.end28.i:                                       ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device2, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %20, ptr noundef nonnull @.str.11, ptr noundef %name.i, i32 noundef %stat.1.i) #8
  br label %if.end30.i

if.end30.i:                                       ; preds = %do.end28.i, %do.body24.i.if.end30.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %22, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i, i32 %stat.1.i) #5, !srcloc !78
  br label %gv100_disp_intr_head_timing.exit

gv100_disp_intr_head_timing.exit:                 ; preds = %if.end30.i, %if.end21.i.gv100_disp_intr_head_timing.exit_crit_edge
  %shl = shl nuw nsw i32 1, %head.0133
  %neg = xor i32 %shl, -1
  %and4 = and i32 %stat.0132, %neg
  %add = add nsw i32 %head.0133, 1
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask, i32 noundef 8, i32 noundef %add) #5
  %cmp = icmp slt i32 %call5, 8
  br i1 %cmp, label %gv100_disp_intr_head_timing.exit.for.body_crit_edge, label %gv100_disp_intr_head_timing.exit.if.end_crit_edge

gv100_disp_intr_head_timing.exit.if.end_crit_edge: ; preds = %gv100_disp_intr_head_timing.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

gv100_disp_intr_head_timing.exit.for.body_crit_edge: ; preds = %gv100_disp_intr_head_timing.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end:                                           ; preds = %gv100_disp_intr_head_timing.exit.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %stat.1 = phi i32 [ %4, %entry.if.end_crit_edge ], [ %4, %if.then.if.end_crit_edge ], [ %and4, %gv100_disp_intr_head_timing.exit.if.end_crit_edge ]
  %and6 = and i32 %stat.1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then8:                                         ; preds = %if.end
  %23 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat.i) #5
  %pri.i59 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %pri.i59 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri.i59, align 4
  %add.ptr.i60 = getelementptr i8, ptr %26, i32 6363212
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  %28 = ptrtoint ptr %stat.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %stat.i, align 4
  %nr.i = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr.i, align 4
  %call4.i = call i32 @_find_next_bit_be(ptr noundef nonnull %stat.i, i32 noundef %30, i32 noundef 0) #5
  %31 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i, i32 %32)
  %cmp42.i = icmp slt i32 %call4.i, %32
  br i1 %cmp42.i, label %if.then8.do.body.i64_crit_edge, label %if.then8.for.end.i_crit_edge

if.then8.for.end.i_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.then8.do.body.i64_crit_edge:                   ; preds = %if.then8
  br label %do.body.i64

do.body.i64:                                      ; preds = %do.body.i64.do.body.i64_crit_edge, %if.then8.do.body.i64_crit_edge
  %wndw.043.i = phi i32 [ %call13.i, %do.body.i64.do.body.i64_crit_edge ], [ %call4.i, %if.then8.do.body.i64_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  call void @arm_heavy_mb() #5
  %shl.i = shl nuw i32 1, %wndw.043.i
  %33 = ptrtoint ptr %pri.i59 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pri.i59, align 4
  %add.ptr8.i = getelementptr i8, ptr %34, i32 6363212
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %shl.i) #5, !srcloc !78
  %add.i61 = add nsw i32 %wndw.043.i, 1
  call fastcc void @gv100_disp_exception(ptr noundef %disp, i32 noundef %add.i61) #5
  %neg.i = xor i32 %shl.i, -1
  %35 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %stat.i, align 4
  %and.i62 = and i32 %36, %neg.i
  store i32 %and.i62, ptr %stat.i, align 4
  %37 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nr.i, align 4
  %call13.i = call i32 @_find_next_bit_be(ptr noundef nonnull %stat.i, i32 noundef %38, i32 noundef %add.i61) #5
  %39 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr.i, align 4
  %cmp.i63 = icmp slt i32 %call13.i, %40
  br i1 %cmp.i63, label %do.body.i64.do.body.i64_crit_edge, label %do.body.i64.for.end.i_crit_edge

do.body.i64.for.end.i_crit_edge:                  ; preds = %do.body.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

do.body.i64.do.body.i64_crit_edge:                ; preds = %do.body.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i64

for.end.i:                                        ; preds = %do.body.i64.for.end.i_crit_edge, %if.then8.for.end.i_crit_edge
  %41 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %stat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i65 = icmp eq i32 %42, 0
  br i1 %tobool.not.i65, label %for.end.i.gv100_disp_intr_exc_win.exit_crit_edge, label %do.body14.i

for.end.i.gv100_disp_intr_exc_win.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gv100_disp_intr_exc_win.exit

do.body14.i:                                      ; preds = %for.end.i
  %debug.i66 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 5
  %43 = ptrtoint ptr %debug.i66 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %debug.i66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp15.i = icmp ugt i32 %44, 1
  br i1 %cmp15.i, label %do.end19.i, label %do.body14.i.if.end.i69_crit_edge

do.body14.i.if.end.i69_crit_edge:                 ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i69

do.end19.i:                                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device2, align 4
  %dev.i67 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %dev.i67 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i67, align 8
  %name.i68 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %48, ptr noundef nonnull @.str.13, ptr noundef %name.i68, i32 noundef %42) #8
  br label %if.end.i69

if.end.i69:                                       ; preds = %do.end19.i, %do.body14.i.if.end.i69_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  call void @arm_heavy_mb() #5
  %49 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %stat.i, align 4
  %51 = ptrtoint ptr %pri.i59 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pri.i59, align 4
  %add.ptr27.i = getelementptr i8, ptr %52, i32 6363212
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %50) #5, !srcloc !78
  br label %gv100_disp_intr_exc_win.exit

gv100_disp_intr_exc_win.exit:                     ; preds = %if.end.i69, %for.end.i.gv100_disp_intr_exc_win.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat.i) #5
  %and9 = and i32 %stat.1, -513
  br label %if.end10

if.end10:                                         ; preds = %gv100_disp_intr_exc_win.exit, %if.end.if.end10_crit_edge
  %stat.2 = phi i32 [ %and9, %gv100_disp_intr_exc_win.exit ], [ %stat.1, %if.end.if.end10_crit_edge ]
  %and11 = and i32 %stat.2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end15_crit_edge, label %if.then13

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  %53 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat.i70) #5
  %pri.i72 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 11
  %55 = ptrtoint ptr %pri.i72 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pri.i72, align 4
  %add.ptr.i73 = getelementptr i8, ptr %56, i32 6363216
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  %58 = ptrtoint ptr %stat.i70 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %stat.i70, align 4
  %nr.i74 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 6, i32 1
  %59 = ptrtoint ptr %nr.i74 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nr.i74, align 4
  %call4.i75 = call i32 @_find_next_bit_be(ptr noundef nonnull %stat.i70, i32 noundef %60, i32 noundef 0) #5
  %61 = ptrtoint ptr %nr.i74 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr.i74, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i75, i32 %62)
  %cmp42.i76 = icmp slt i32 %call4.i75, %62
  br i1 %cmp42.i76, label %if.then13.do.body.i85_crit_edge, label %if.then13.for.end.i87_crit_edge

if.then13.for.end.i87_crit_edge:                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i87

if.then13.do.body.i85_crit_edge:                  ; preds = %if.then13
  br label %do.body.i85

do.body.i85:                                      ; preds = %do.body.i85.do.body.i85_crit_edge, %if.then13.do.body.i85_crit_edge
  %wndw.043.i77 = phi i32 [ %call13.i83, %do.body.i85.do.body.i85_crit_edge ], [ %call4.i75, %if.then13.do.body.i85_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  call void @arm_heavy_mb() #5
  %shl.i78 = shl nuw i32 1, %wndw.043.i77
  %63 = ptrtoint ptr %pri.i72 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pri.i72, align 4
  %add.ptr8.i79 = getelementptr i8, ptr %64, i32 6363216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i79, i32 %shl.i78) #5, !srcloc !78
  %add.i80 = add i32 %wndw.043.i77, 33
  call fastcc void @gv100_disp_exception(ptr noundef %disp, i32 noundef %add.i80) #5
  %neg.i81 = xor i32 %shl.i78, -1
  %65 = ptrtoint ptr %stat.i70 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %stat.i70, align 4
  %and.i82 = and i32 %66, %neg.i81
  store i32 %and.i82, ptr %stat.i70, align 4
  %67 = ptrtoint ptr %nr.i74 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nr.i74, align 4
  %add12.i = add nsw i32 %wndw.043.i77, 1
  %call13.i83 = call i32 @_find_next_bit_be(ptr noundef nonnull %stat.i70, i32 noundef %68, i32 noundef %add12.i) #5
  %69 = ptrtoint ptr %nr.i74 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nr.i74, align 4
  %cmp.i84 = icmp slt i32 %call13.i83, %70
  br i1 %cmp.i84, label %do.body.i85.do.body.i85_crit_edge, label %do.body.i85.for.end.i87_crit_edge

do.body.i85.for.end.i87_crit_edge:                ; preds = %do.body.i85
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i87

do.body.i85.do.body.i85_crit_edge:                ; preds = %do.body.i85
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i85

for.end.i87:                                      ; preds = %do.body.i85.for.end.i87_crit_edge, %if.then13.for.end.i87_crit_edge
  %71 = ptrtoint ptr %stat.i70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %stat.i70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i86 = icmp eq i32 %72, 0
  br i1 %tobool.not.i86, label %for.end.i87.gv100_disp_intr_exc_winim.exit_crit_edge, label %do.body14.i90

for.end.i87.gv100_disp_intr_exc_winim.exit_crit_edge: ; preds = %for.end.i87
  call void @__sanitizer_cov_trace_pc() #7
  br label %gv100_disp_intr_exc_winim.exit

do.body14.i90:                                    ; preds = %for.end.i87
  %debug.i88 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 5
  %73 = ptrtoint ptr %debug.i88 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %debug.i88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp15.i89 = icmp ugt i32 %74, 1
  br i1 %cmp15.i89, label %do.end19.i93, label %do.body14.i90.if.end.i95_crit_edge

do.body14.i90.if.end.i95_crit_edge:               ; preds = %do.body14.i90
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i95

do.end19.i93:                                     ; preds = %do.body14.i90
  call void @__sanitizer_cov_trace_pc() #7
  %75 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %device2, align 4
  %dev.i91 = getelementptr inbounds %struct.nvkm_device, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %dev.i91 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i91, align 8
  %name.i92 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %78, ptr noundef nonnull @.str.22, ptr noundef %name.i92, i32 noundef %72) #8
  br label %if.end.i95

if.end.i95:                                       ; preds = %do.end19.i93, %do.body14.i90.if.end.i95_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  call void @arm_heavy_mb() #5
  %79 = ptrtoint ptr %stat.i70 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %stat.i70, align 4
  %81 = ptrtoint ptr %pri.i72 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pri.i72, align 4
  %add.ptr27.i94 = getelementptr i8, ptr %82, i32 6363216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i94, i32 %80) #5, !srcloc !78
  br label %gv100_disp_intr_exc_winim.exit

gv100_disp_intr_exc_winim.exit:                   ; preds = %if.end.i95, %for.end.i87.gv100_disp_intr_exc_winim.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat.i70) #5
  %and14 = and i32 %stat.2, -1025
  br label %if.end15

if.end15:                                         ; preds = %gv100_disp_intr_exc_winim.exit, %if.end10.if.end15_crit_edge
  %stat.3 = phi i32 [ %and14, %gv100_disp_intr_exc_winim.exit ], [ %stat.2, %if.end10.if.end15_crit_edge ]
  %and16 = and i32 %stat.3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end20_crit_edge, label %if.then18

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  %83 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %device2, align 4
  %pri.i97 = getelementptr inbounds %struct.nvkm_device, ptr %84, i32 0, i32 11
  %85 = ptrtoint ptr %pri.i97 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pri.i97, align 4
  %add.ptr.i98 = getelementptr i8, ptr %86, i32 6363220
  %87 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #5
  %and.i99 = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99)
  %tobool.not.i100 = icmp eq i32 %and.i99, 0
  br i1 %tobool.not.i100, label %if.then18.if.end.i103_crit_edge, label %do.body.i101

if.then18.if.end.i103_crit_edge:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i103

do.body.i101:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  call void @arm_heavy_mb() #5
  %88 = ptrtoint ptr %pri.i97 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pri.i97, align 4
  %add.ptr4.i = getelementptr i8, ptr %89, i32 6363220
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 1) #5, !srcloc !78
  call fastcc void @gv100_disp_exception(ptr noundef %disp, i32 noundef 0) #5
  %and5.i = and i32 %87, -2
  br label %if.end.i103

if.end.i103:                                      ; preds = %do.body.i101, %if.then18.if.end.i103_crit_edge
  %stat.0.i102 = phi i32 [ %and5.i, %do.body.i101 ], [ %87, %if.then18.if.end.i103_crit_edge ]
  %and6.i = lshr i32 %stat.0.i102, 16
  %shr.i = and i32 %and6.i, 255
  %90 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %shr.i, ptr %mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool7.not.i = icmp eq i32 %shr.i, 0
  br i1 %tobool7.not.i, label %if.end.i103.if.end23.i_crit_edge, label %if.then8.i

if.end.i103.if.end23.i_crit_edge:                 ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i

if.then8.i:                                       ; preds = %if.end.i103
  %nr.i104 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 6, i32 1
  %91 = ptrtoint ptr %nr.i104 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %nr.i104, align 4
  %call9.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef %92, i32 noundef 0) #5
  %93 = ptrtoint ptr %nr.i104 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %nr.i104, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.i, i32 %94)
  %cmp63.i = icmp slt i32 %call9.i, %94
  br i1 %cmp63.i, label %if.then8.i.do.body12.i_crit_edge, label %if.then8.i.if.end23.i_crit_edge

if.then8.i.if.end23.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i

if.then8.i.do.body12.i_crit_edge:                 ; preds = %if.then8.i
  br label %do.body12.i

do.body12.i:                                      ; preds = %do.body12.i.do.body12.i_crit_edge, %if.then8.i.do.body12.i_crit_edge
  %head.065.i = phi i32 [ %call22.i, %do.body12.i.do.body12.i_crit_edge ], [ %call9.i, %if.then8.i.do.body12.i_crit_edge ]
  %stat.164.i = phi i32 [ %and18.i, %do.body12.i.do.body12.i_crit_edge ], [ %stat.0.i102, %if.then8.i.do.body12.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  call void @arm_heavy_mb() #5
  %shl.i105 = shl i32 65536, %head.065.i
  %95 = ptrtoint ptr %pri.i97 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pri.i97, align 4
  %add.ptr16.i = getelementptr i8, ptr %96, i32 6363220
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %shl.i105) #5, !srcloc !78
  %add.i106 = add i32 %head.065.i, 73
  call fastcc void @gv100_disp_exception(ptr noundef %disp, i32 noundef %add.i106) #5
  %neg.i107 = xor i32 %shl.i105, -1
  %and18.i = and i32 %stat.164.i, %neg.i107
  %97 = ptrtoint ptr %nr.i104 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %nr.i104, align 4
  %add21.i = add nsw i32 %head.065.i, 1
  %call22.i = call i32 @_find_next_bit_be(ptr noundef nonnull %mask.i, i32 noundef %98, i32 noundef %add21.i) #5
  %99 = ptrtoint ptr %nr.i104 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %nr.i104, align 4
  %cmp.i108 = icmp slt i32 %call22.i, %100
  br i1 %cmp.i108, label %do.body12.i.do.body12.i_crit_edge, label %do.body12.i.if.end23.i_crit_edge

do.body12.i.if.end23.i_crit_edge:                 ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i

do.body12.i.do.body12.i_crit_edge:                ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body12.i

if.end23.i:                                       ; preds = %do.body12.i.if.end23.i_crit_edge, %if.then8.i.if.end23.i_crit_edge, %if.end.i103.if.end23.i_crit_edge
  %stat.2.i = phi i32 [ %stat.0.i102, %if.end.i103.if.end23.i_crit_edge ], [ %stat.0.i102, %if.then8.i.if.end23.i_crit_edge ], [ %and18.i, %do.body12.i.if.end23.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.2.i)
  %tobool24.not.i = icmp eq i32 %stat.2.i, 0
  br i1 %tobool24.not.i, label %if.end23.i.gv100_disp_intr_exc_other.exit_crit_edge, label %do.body26.i

if.end23.i.gv100_disp_intr_exc_other.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gv100_disp_intr_exc_other.exit

do.body26.i:                                      ; preds = %if.end23.i
  %debug.i109 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 5
  %101 = ptrtoint ptr %debug.i109 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %debug.i109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %102)
  %cmp27.i = icmp ugt i32 %102, 1
  br i1 %cmp27.i, label %do.end31.i, label %do.body26.i.if.end33.i_crit_edge

do.body26.i.if.end33.i_crit_edge:                 ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.i

do.end31.i:                                       ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #7
  %103 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %device2, align 4
  %dev.i110 = getelementptr inbounds %struct.nvkm_device, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %dev.i110 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev.i110, align 8
  %name.i111 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %106, ptr noundef nonnull @.str.24, ptr noundef %name.i111, i32 noundef %stat.2.i) #8
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.end31.i, %do.body26.i.if.end33.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  call void @arm_heavy_mb() #5
  %107 = ptrtoint ptr %pri.i97 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pri.i97, align 4
  %add.ptr40.i = getelementptr i8, ptr %108, i32 6363220
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %stat.2.i) #5, !srcloc !78
  br label %gv100_disp_intr_exc_other.exit

gv100_disp_intr_exc_other.exit:                   ; preds = %if.end33.i, %if.end23.i.gv100_disp_intr_exc_other.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #5
  %and19 = and i32 %stat.3, -2049
  br label %if.end20

if.end20:                                         ; preds = %gv100_disp_intr_exc_other.exit, %if.end15.if.end20_crit_edge
  %stat.4 = phi i32 [ %and19, %gv100_disp_intr_exc_other.exit ], [ %stat.3, %if.end15.if.end20_crit_edge ]
  %and21 = and i32 %stat.4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end25_crit_edge, label %if.then23

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then23:                                        ; preds = %if.end20
  %109 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %device2, align 4
  %pri.i113 = getelementptr inbounds %struct.nvkm_device, ptr %110, i32 0, i32 11
  %111 = ptrtoint ptr %pri.i113 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pri.i113, align 4
  %add.ptr.i114 = getelementptr i8, ptr %112, i32 6364208
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  %and.i115 = and i32 %113, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i115)
  %tobool.not.i116 = icmp eq i32 %and.i115, 0
  br i1 %tobool.not.i116, label %if.then23.if.end.i120_crit_edge, label %if.then.i

if.then23.if.end.i120_crit_edge:                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i120

if.then.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  %super.i = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 4
  %114 = ptrtoint ptr %super.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %and.i115, ptr %super.i, align 4
  %wq.i = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 2
  %115 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %wq.i, align 4
  %supervisor.i = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 3
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %116, ptr noundef %supervisor.i) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  call void @arm_heavy_mb() #5
  %117 = ptrtoint ptr %super.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %super.i, align 4
  %119 = ptrtoint ptr %pri.i113 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pri.i113, align 4
  %add.ptr7.i117 = getelementptr i8, ptr %120, i32 6363232
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i117, i32 %118) #5, !srcloc !78
  %and8.i118 = and i32 %113, -8
  br label %if.end.i120

if.end.i120:                                      ; preds = %if.then.i, %if.then23.if.end.i120_crit_edge
  %stat.0.i119 = phi i32 [ %and8.i118, %if.then.i ], [ %113, %if.then23.if.end.i120_crit_edge ]
  %and12.i = and i32 %stat.0.i119, -9
  %and14.i = and i32 %stat.0.i119, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end.i120.if.end39.i_crit_edge, label %if.then16.i

if.end.i120.if.end39.i_crit_edge:                 ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i

if.then16.i:                                      ; preds = %if.end.i120
  %121 = ptrtoint ptr %pri.i113 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pri.i113, align 4
  %add.ptr19.i121 = getelementptr i8, ptr %122, i32 6363208
  %123 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i121) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  call void @arm_heavy_mb() #5
  %124 = ptrtoint ptr %pri.i113 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pri.i113, align 4
  %add.ptr27.i122 = getelementptr i8, ptr %125, i32 6363208
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i122, i32 %123) #5, !srcloc !78
  %debug.i123 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 5
  %126 = ptrtoint ptr %debug.i123 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %debug.i123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %127)
  %cmp.i124 = icmp ugt i32 %127, 1
  br i1 %cmp.i124, label %do.end33.i, label %if.then16.i.if.end35.i_crit_edge

if.then16.i.if.end35.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

do.end33.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #7
  %128 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %device2, align 4
  %dev.i125 = getelementptr inbounds %struct.nvkm_device, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %dev.i125 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev.i125, align 8
  %name.i126 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %131, ptr noundef nonnull @.str.26, ptr noundef %name.i126, i32 noundef %123) #8
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.end33.i, %if.then16.i.if.end35.i_crit_edge
  %and38.i = and i32 %stat.0.i119, -137
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end35.i, %if.end.i120.if.end39.i_crit_edge
  %stat.2.i127 = phi i32 [ %and38.i, %if.end35.i ], [ %and12.i, %if.end.i120.if.end39.i_crit_edge ]
  %and40.i = and i32 %stat.2.i127, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.end39.i.if.end76.i_crit_edge, label %if.then42.i

if.end39.i.if.end76.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76.i

if.then42.i:                                      ; preds = %if.end39.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wndws.i) #5
  %132 = ptrtoint ptr %pri.i113 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pri.i113, align 4
  %add.ptr45.i = getelementptr i8, ptr %133, i32 6363224
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  %135 = ptrtoint ptr %wndws.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %wndws.i, align 4
  %136 = ptrtoint ptr %pri.i113 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pri.i113, align 4
  %add.ptr50.i = getelementptr i8, ptr %137, i32 6363228
  %138 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  call void @arm_heavy_mb() #5
  %139 = ptrtoint ptr %pri.i113 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %pri.i113, align 4
  %add.ptr57.i = getelementptr i8, ptr %140, i32 6363224
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57.i, i32 %134) #5, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  call void @arm_heavy_mb() #5
  %141 = ptrtoint ptr %pri.i113 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %pri.i113, align 4
  %add.ptr62.i = getelementptr i8, ptr %142, i32 6363228
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62.i, i32 %138) #5, !srcloc !78
  %and63.i = and i32 %138, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  br i1 %tobool64.not.i, label %if.then42.i.if.end66.i_crit_edge, label %if.then65.i

if.then42.i.if.end66.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66.i

if.then65.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @nv50_disp_chan_uevent_send(ptr noundef %disp, i32 noundef 0) #5
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then65.i, %if.then42.i.if.end66.i_crit_edge
  %nr.i128 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 6, i32 1
  %143 = ptrtoint ptr %nr.i128 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %nr.i128, align 4
  %call68.i = call i32 @_find_next_bit_be(ptr noundef nonnull %wndws.i, i32 noundef %144, i32 noundef 0) #5
  %145 = ptrtoint ptr %nr.i128 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %nr.i128, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call68.i, i32 %146)
  %cmp71131.i = icmp slt i32 %call68.i, %146
  br i1 %cmp71131.i, label %if.end66.i.for.body.i_crit_edge, label %if.end66.i.for.end.i130_crit_edge

if.end66.i.for.end.i130_crit_edge:                ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i130

if.end66.i.for.body.i_crit_edge:                  ; preds = %if.end66.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end66.i.for.body.i_crit_edge
  %wndw.0132.i = phi i32 [ %call75.i, %for.body.i.for.body.i_crit_edge ], [ %call68.i, %if.end66.i.for.body.i_crit_edge ]
  %add.i129 = add nsw i32 %wndw.0132.i, 1
  call void @nv50_disp_chan_uevent_send(ptr noundef %disp, i32 noundef %add.i129) #5
  %147 = ptrtoint ptr %nr.i128 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %nr.i128, align 4
  %call75.i = call i32 @_find_next_bit_be(ptr noundef nonnull %wndws.i, i32 noundef %148, i32 noundef %add.i129) #5
  %149 = ptrtoint ptr %nr.i128 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %nr.i128, align 4
  %cmp71.i = icmp slt i32 %call75.i, %150
  br i1 %cmp71.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i130_crit_edge

for.body.i.for.end.i130_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i130

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i130:                                     ; preds = %for.body.i.for.end.i130_crit_edge, %if.end66.i.for.end.i130_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wndws.i) #5
  br label %if.end76.i

if.end76.i:                                       ; preds = %for.end.i130, %if.end39.i.if.end76.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.2.i127)
  %tobool77.not.i = icmp eq i32 %stat.2.i127, 0
  br i1 %tobool77.not.i, label %if.end76.i.gv100_disp_intr_ctrl_disp.exit_crit_edge, label %do.body79.i

if.end76.i.gv100_disp_intr_ctrl_disp.exit_crit_edge: ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gv100_disp_intr_ctrl_disp.exit

do.body79.i:                                      ; preds = %if.end76.i
  %debug81.i = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 5
  %151 = ptrtoint ptr %debug81.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %debug81.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %152)
  %cmp82.i = icmp ugt i32 %152, 1
  br i1 %cmp82.i, label %do.end86.i, label %do.body79.i.gv100_disp_intr_ctrl_disp.exit_crit_edge

do.body79.i.gv100_disp_intr_ctrl_disp.exit_crit_edge: ; preds = %do.body79.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gv100_disp_intr_ctrl_disp.exit

do.end86.i:                                       ; preds = %do.body79.i
  call void @__sanitizer_cov_trace_pc() #7
  %153 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %device2, align 4
  %dev88.i = getelementptr inbounds %struct.nvkm_device, ptr %154, i32 0, i32 2
  %155 = ptrtoint ptr %dev88.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev88.i, align 8
  %name89.i = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %156, ptr noundef nonnull @.str.29, ptr noundef %name89.i, i32 noundef %stat.2.i127) #8
  br label %gv100_disp_intr_ctrl_disp.exit

gv100_disp_intr_ctrl_disp.exit:                   ; preds = %do.end86.i, %do.body79.i.gv100_disp_intr_ctrl_disp.exit_crit_edge, %if.end76.i.gv100_disp_intr_ctrl_disp.exit_crit_edge
  %and24 = and i32 %stat.4, -4097
  br label %if.end25

if.end25:                                         ; preds = %gv100_disp_intr_ctrl_disp.exit, %if.end20.if.end25_crit_edge
  %stat.5 = phi i32 [ %and24, %gv100_disp_intr_ctrl_disp.exit ], [ %stat.4, %if.end20.if.end25_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.5)
  %tobool26.not = icmp eq i32 %stat.5, 0
  br i1 %tobool26.not, label %if.end25.if.end35_crit_edge, label %do.body

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

do.body:                                          ; preds = %if.end25
  %debug = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 5
  %157 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %158)
  %cmp28 = icmp ugt i32 %158, 1
  br i1 %cmp28, label %do.end, label %do.body.if.end35_crit_edge

do.body.if.end35_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %159 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %160, i32 0, i32 2
  %161 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %162, ptr noundef nonnull @.str.8, ptr noundef %name, i32 noundef %stat.5) #8
  br label %if.end35

if.end35:                                         ; preds = %do.end, %do.body.if.end35_crit_edge, %if.end25.if.end35_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gv100_disp_fini(ptr nocapture noundef readonly %disp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 6364592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !78
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gv100_disp_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pdisp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv50_disp_new_(ptr noundef nonnull @gv100_disp, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pdisp) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_disp_vblank(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gv100_disp_exception(ptr noundef %disp, i32 noundef %chid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %mul = mul i32 %chid, 12
  %add = add i32 %mul, 6361120
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %and = lshr i32 %4, 12
  %shr = and i32 %and, 7
  %and3 = shl i32 %4, 2
  %shl = and i32 %and3, 16380
  %call4 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @nv50_disp_intr_error_type, i32 noundef %shr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %chid)
  %cmp = icmp slt i32 %chid, 33
  br i1 %cmp, label %if.then, label %do.body26

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add8 = add i32 %mul, 6361124
  %add.ptr9 = getelementptr i8, ptr %6, i32 %add8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add15 = add i32 %mul, 6361128
  %add.ptr16 = getelementptr i8, ptr %9, i32 %add15
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  %debug = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 5
  %11 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp19.not = icmp eq i32 %12, 0
  br i1 %cmp19.not, label %if.then.if.end47_crit_edge, label %do.end

if.then.if.end47_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

do.end:                                           ; preds = %if.then
  %13 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 4
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %name23 = getelementptr inbounds %struct.nvkm_enum, ptr %call4, i32 0, i32 1
  %17 = ptrtoint ptr %name23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name23, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi ptr [ %18, %cond.true ], [ @.str.18, %do.end.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.15, ptr noundef %name, i32 noundef %chid, i32 noundef %4, i32 noundef %shr, ptr noundef %cond, i32 noundef %shl, i32 noundef %7, i32 noundef %10) #8
  br label %if.end47

do.body26:                                        ; preds = %entry
  %debug28 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 5
  %19 = ptrtoint ptr %debug28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp29.not = icmp eq i32 %20, 0
  br i1 %cmp29.not, label %do.body26.if.end47_crit_edge, label %do.end33

do.body26.if.end47_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

do.end33:                                         ; preds = %do.body26
  %21 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device2, align 4
  %dev35 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev35, align 8
  %name36 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 4
  %tobool38.not = icmp eq ptr %call4, null
  br i1 %tobool38.not, label %do.end33.cond.end42_crit_edge, label %cond.true39

do.end33.cond.end42_crit_edge:                    ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end42

cond.true39:                                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #7
  %name40 = getelementptr inbounds %struct.nvkm_enum, ptr %call4, i32 0, i32 1
  %25 = ptrtoint ptr %name40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name40, align 4
  br label %cond.end42

cond.end42:                                       ; preds = %cond.true39, %do.end33.cond.end42_crit_edge
  %cond43 = phi ptr [ %26, %cond.true39 ], [ @.str.18, %do.end33.cond.end42_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.20, ptr noundef %name36, i32 noundef %chid, i32 noundef %4, i32 noundef %shr, ptr noundef %cond43, i32 noundef %shl) #8
  br label %if.end47

if.end47:                                         ; preds = %cond.end42, %do.body26.if.end47_crit_edge, %cond.end, %if.then.if.end47_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 81, i32 %chid)
  %cmp48 = icmp ult i32 %chid, 81
  br i1 %cmp48, label %land.lhs.true, label %if.end47.do.body54_crit_edge

if.end47.do.body54_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body54

land.lhs.true:                                    ; preds = %if.end47
  %arrayidx = getelementptr %struct.nv50_disp, ptr %disp, i32 0, i32 13, i32 %chid
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %tobool49.not = icmp ne ptr %28, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %shl)
  %cond61 = icmp eq i32 %shl, 512
  %or.cond = select i1 %tobool49.not, i1 %cond61, i1 false
  br i1 %or.cond, label %sw.bb, label %land.lhs.true.do.body54_crit_edge

land.lhs.true.do.body54_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body54

sw.bb:                                            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nv50_disp_chan_mthd(ptr noundef nonnull %28, i32 noundef 1) #5
  br label %do.body54

do.body54:                                        ; preds = %sw.bb, %land.lhs.true.do.body54_crit_edge, %if.end47.do.body54_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri, align 4
  %add.ptr60 = getelementptr i8, ptr %30, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 -1879048192) #5, !srcloc !78
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_enum_find(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_chan_uevent_send(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gv100_disp_init(ptr noundef readonly %disp) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 6444264
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end61_crit_edge, label %if.then

entry.if.end61_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 6444264
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %and8 = and i32 %7, -2
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr10 = getelementptr i8, ptr %9, i32 6444264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %and8) #5, !srcloc !78
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #5
  %10 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #5
  br label %do.body12

do.body12:                                        ; preds = %do.cond21.do.body12_crit_edge, %if.then
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr15 = getelementptr i8, ptr %12, i32 6444264
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  %and18 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end56.thread, label %do.cond21

if.end56.thread:                                  ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #5
  br label %if.end61

do.cond21:                                        ; preds = %do.body12
  %call22 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #5
  %cmp = icmp sgt i64 %call22, -1
  br i1 %cmp, label %do.cond21.do.body12_crit_edge, label %do.end34

do.cond21.do.body12_crit_edge:                    ; preds = %do.cond21
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body12

do.end34:                                         ; preds = %do.cond21
  %14 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_wait, align 8
  %device36 = getelementptr inbounds %struct.nvkm_timer, ptr %15, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %device36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device36, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %call37 = call ptr @dev_driver_string(ptr noundef %19) #5
  %20 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_wait, align 8
  %device40 = getelementptr inbounds %struct.nvkm_timer, ptr %21, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %device40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device40, align 4
  %dev41 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev41, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end34.if.end56_crit_edge

do.end34.if.end56_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.end.i:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.end.i, %do.end34.if.end56_crit_edge
  %retval.0.i = phi ptr [ %29, %if.end.i ], [ %27, %do.end34.if.end56_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 341, i32 noundef 9, ptr noundef nonnull @.str.31, ptr noundef %call37, ptr noundef %retval.0.i) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #5
  br label %cleanup

if.end61:                                         ; preds = %if.end56.thread, %entry.if.end61_crit_edge
  %30 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri, align 4
  %add.ptr64 = getelementptr i8, ptr %31, i32 6357096
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pri, align 4
  %add.ptr71 = getelementptr i8, ptr %34, i32 6553608
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 %32) #5, !srcloc !78
  %nr = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 9, i32 1
  %35 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp72457 = icmp sgt i32 %36, 0
  br i1 %cmp72457, label %if.end61.for.body_crit_edge, label %if.end61.for.end_crit_edge

if.end61.for.end_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end61.for.body_crit_edge:                      ; preds = %if.end61
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end61.for.body_crit_edge
  %i.0458 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end61.for.body_crit_edge ]
  %37 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri, align 4
  %mul = shl i32 %i.0458, 11
  %add = add i32 %mul, 6406144
  %add.ptr75 = getelementptr i8, ptr %38, i32 %add
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  %40 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri, align 4
  %add.ptr83 = getelementptr i8, ptr %41, i32 6553600
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  call void @arm_heavy_mb() #5
  %shl = shl i32 256, %i.0458
  %or91 = or i32 %42, %shl
  %43 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pri, align 4
  %add.ptr93 = getelementptr i8, ptr %44, i32 6553600
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 %or91) #5, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  call void @arm_heavy_mb() #5
  %45 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri, align 4
  %mul99 = shl i32 %i.0458, 3
  %add100 = add i32 %mul99, 6553924
  %add.ptr101 = getelementptr i8, ptr %46, i32 %add100
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 %39) #5, !srcloc !78
  %inc = add nuw nsw i32 %i.0458, 1
  %47 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr, align 4
  %cmp72 = icmp slt i32 %inc, %48
  br i1 %cmp72, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end61.for.end_crit_edge
  %head103 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 2
  %49 = ptrtoint ptr %head103 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn460 = load ptr, ptr %head103, align 4
  %cmp110.not461 = icmp eq ptr %.pn460, %head103
  br i1 %cmp110.not461, label %for.end.for.cond158.preheader_crit_edge, label %for.end.for.body113_crit_edge

for.end.for.body113_crit_edge:                    ; preds = %for.end
  br label %for.body113

for.end.for.cond158.preheader_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond158.preheader

for.cond158.preheader:                            ; preds = %for.body113.for.cond158.preheader_crit_edge, %for.end.for.cond158.preheader_crit_edge
  %nr159 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 6, i32 1
  %50 = ptrtoint ptr %nr159 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nr159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp160465 = icmp sgt i32 %51, 0
  br i1 %cmp160465, label %for.cond158.preheader.for.body161_crit_edge, label %for.cond158.preheader.for.cond206.preheader_crit_edge

for.cond158.preheader.for.cond206.preheader_crit_edge: ; preds = %for.cond158.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond206.preheader

for.cond158.preheader.for.body161_crit_edge:      ; preds = %for.cond158.preheader
  br label %for.body161

for.body113:                                      ; preds = %for.body113.for.body113_crit_edge, %for.end.for.body113_crit_edge
  %.pn462 = phi ptr [ %.pn, %for.body113.for.body113_crit_edge ], [ %.pn460, %for.end.for.body113_crit_edge ]
  %id114 = getelementptr i8, ptr %.pn462, i32 -4
  %52 = ptrtoint ptr %id114 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id114, align 4
  %54 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pri, align 4
  %mul117 = shl i32 %53, 11
  %add118 = add i32 %mul117, 6382336
  %add.ptr119 = getelementptr i8, ptr %55, i32 %add118
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr119) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  call void @arm_heavy_mb() #5
  %57 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pri, align 4
  %mul126 = shl i32 %53, 5
  %add127 = add i32 %mul126, 6553672
  %add.ptr128 = getelementptr i8, ptr %58, i32 %add127
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 %56) #5, !srcloc !78
  %add135 = add i32 %mul117, 6381824
  %add145 = add i32 %mul126, 6553648
  %59 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pri, align 4
  %add.ptr137 = getelementptr i8, ptr %60, i32 %add135
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr137) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  call void @arm_heavy_mb() #5
  %62 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pri, align 4
  %add.ptr147 = getelementptr i8, ptr %63, i32 %add145
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147, i32 %61) #5, !srcloc !78
  %64 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pri, align 4
  %add136.1 = add i32 %mul117, 6381828
  %add.ptr137.1 = getelementptr i8, ptr %65, i32 %add136.1
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr137.1) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  call void @arm_heavy_mb() #5
  %67 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pri, align 4
  %add146.1 = add i32 %mul126, 6553652
  %add.ptr147.1 = getelementptr i8, ptr %68, i32 %add146.1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147.1, i32 %66) #5, !srcloc !78
  %69 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pri, align 4
  %add136.2 = add i32 %mul117, 6381832
  %add.ptr137.2 = getelementptr i8, ptr %70, i32 %add136.2
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr137.2) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  call void @arm_heavy_mb() #5
  %72 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pri, align 4
  %add146.2 = add i32 %mul126, 6553656
  %add.ptr147.2 = getelementptr i8, ptr %73, i32 %add146.2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147.2, i32 %71) #5, !srcloc !78
  %74 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pri, align 4
  %add136.3 = add i32 %mul117, 6381836
  %add.ptr137.3 = getelementptr i8, ptr %75, i32 %add136.3
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr137.3) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  call void @arm_heavy_mb() #5
  %77 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pri, align 4
  %add146.3 = add i32 %mul126, 6553660
  %add.ptr147.3 = getelementptr i8, ptr %78, i32 %add146.3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147.3, i32 %76) #5, !srcloc !78
  %79 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pri, align 4
  %add136.4 = add i32 %mul117, 6381840
  %add.ptr137.4 = getelementptr i8, ptr %80, i32 %add136.4
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr137.4) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  call void @arm_heavy_mb() #5
  %82 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pri, align 4
  %add146.4 = add i32 %mul126, 6553664
  %add.ptr147.4 = getelementptr i8, ptr %83, i32 %add146.4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147.4, i32 %81) #5, !srcloc !78
  %84 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pri, align 4
  %add136.5 = add i32 %mul117, 6381844
  %add.ptr137.5 = getelementptr i8, ptr %85, i32 %add136.5
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr137.5) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  call void @arm_heavy_mb() #5
  %87 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pri, align 4
  %add146.5 = add i32 %mul126, 6553668
  %add.ptr147.5 = getelementptr i8, ptr %88, i32 %add146.5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147.5, i32 %86) #5, !srcloc !78
  %89 = ptrtoint ptr %.pn462 to i32
  call void @__asan_load4_noabort(i32 %89)
  %.pn = load ptr, ptr %.pn462, align 4
  %cmp110.not = icmp eq ptr %.pn, %head103
  br i1 %cmp110.not, label %for.body113.for.cond158.preheader_crit_edge, label %for.body113.for.body113_crit_edge

for.body113.for.body113_crit_edge:                ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body113

for.body113.for.cond158.preheader_crit_edge:      ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond158.preheader

for.cond206.preheader:                            ; preds = %for.body161.for.cond206.preheader_crit_edge, %for.cond158.preheader.for.cond206.preheader_crit_edge
  %90 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pri, align 4
  %add.ptr213 = getelementptr i8, ptr %91, i32 6479872
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr213) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  call void @arm_heavy_mb() #5
  %93 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pri, align 4
  %add.ptr222 = getelementptr i8, ptr %94, i32 6553616
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr222, i32 %92) #5, !srcloc !78
  %95 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pri, align 4
  %add.ptr213.1 = getelementptr i8, ptr %96, i32 6479876
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr213.1) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  call void @arm_heavy_mb() #5
  %98 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pri, align 4
  %add.ptr222.1 = getelementptr i8, ptr %99, i32 6553620
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr222.1, i32 %97) #5, !srcloc !78
  %100 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pri, align 4
  %add.ptr213.2 = getelementptr i8, ptr %101, i32 6479880
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr213.2) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  call void @arm_heavy_mb() #5
  %103 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pri, align 4
  %add.ptr222.2 = getelementptr i8, ptr %104, i32 6553624
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr222.2, i32 %102) #5, !srcloc !78
  %105 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pri, align 4
  %add.ptr213.3 = getelementptr i8, ptr %106, i32 6479884
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr213.3) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  call void @arm_heavy_mb() #5
  %108 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pri, align 4
  %add.ptr222.3 = getelementptr i8, ptr %109, i32 6553628
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr222.3, i32 %107) #5, !srcloc !78
  %wndw.le = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 6
  %110 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pri, align 4
  %add.ptr231 = getelementptr i8, ptr %111, i32 6357112
  %112 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr231) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  call void @arm_heavy_mb() #5
  %or238 = or i32 %112, 1
  %113 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pri, align 4
  %add.ptr240 = getelementptr i8, ptr %114, i32 6357112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr240, i32 %or238) #5, !srcloc !78
  %inst = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 11
  %115 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %inst, align 4
  %memory = getelementptr inbounds %struct.nvkm_gpuobj, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %memory, align 8
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 4
  %target = getelementptr inbounds %struct.nvkm_memory_func, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %target, align 4
  %call244 = call i32 %122(ptr noundef %118) #5
  %switch.tableidx = add i32 %call244, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %123 = icmp ult i32 %switch.tableidx, 3
  br i1 %123, label %switch.lookup, label %for.cond206.preheader.do.body247_crit_edge

for.cond206.preheader.do.body247_crit_edge:       ; preds = %for.cond206.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body247

for.body161:                                      ; preds = %for.body161.for.body161_crit_edge, %for.cond158.preheader.for.body161_crit_edge
  %i.1466 = phi i32 [ %inc204, %for.body161.for.body161_crit_edge ], [ 0, %for.cond158.preheader.for.body161_crit_edge ]
  %124 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pri, align 4
  %add.ptr167 = getelementptr i8, ptr %125, i32 6553604
  %126 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr167) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !127
  call void @arm_heavy_mb() #5
  %shl173 = shl nuw i32 1, %i.1466
  %or177 = or i32 %126, %shl173
  %127 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pri, align 4
  %add.ptr179 = getelementptr i8, ptr %128, i32 6553604
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr179, i32 %or177) #5, !srcloc !78
  %mul186 = shl i32 %i.1466, 11
  %add187 = add i32 %mul186, 6488144
  %mul196 = shl i32 %i.1466, 5
  %add197 = add i32 %mul196, 6554084
  %129 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pri, align 4
  %add.ptr189 = getelementptr i8, ptr %130, i32 %add187
  %131 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr189) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  call void @arm_heavy_mb() #5
  %132 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pri, align 4
  %add.ptr199 = getelementptr i8, ptr %133, i32 %add197
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr199, i32 %131) #5, !srcloc !78
  %134 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %pri, align 4
  %add188.1 = add i32 %mul186, 6488148
  %add.ptr189.1 = getelementptr i8, ptr %135, i32 %add188.1
  %136 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr189.1) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  call void @arm_heavy_mb() #5
  %137 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %pri, align 4
  %add198.1 = add i32 %mul196, 6554088
  %add.ptr199.1 = getelementptr i8, ptr %138, i32 %add198.1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr199.1, i32 %136) #5, !srcloc !78
  %139 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %pri, align 4
  %add188.2 = add i32 %mul186, 6488152
  %add.ptr189.2 = getelementptr i8, ptr %140, i32 %add188.2
  %141 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr189.2) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  call void @arm_heavy_mb() #5
  %142 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pri, align 4
  %add198.2 = add i32 %mul196, 6554092
  %add.ptr199.2 = getelementptr i8, ptr %143, i32 %add198.2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr199.2, i32 %141) #5, !srcloc !78
  %144 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pri, align 4
  %add188.3 = add i32 %mul186, 6488156
  %add.ptr189.3 = getelementptr i8, ptr %145, i32 %add188.3
  %146 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr189.3) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  call void @arm_heavy_mb() #5
  %147 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pri, align 4
  %add198.3 = add i32 %mul196, 6554096
  %add.ptr199.3 = getelementptr i8, ptr %148, i32 %add198.3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr199.3, i32 %146) #5, !srcloc !78
  %149 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pri, align 4
  %add188.4 = add i32 %mul186, 6488160
  %add.ptr189.4 = getelementptr i8, ptr %150, i32 %add188.4
  %151 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr189.4) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  call void @arm_heavy_mb() #5
  %152 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pri, align 4
  %add198.4 = add i32 %mul196, 6554100
  %add.ptr199.4 = getelementptr i8, ptr %153, i32 %add198.4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr199.4, i32 %151) #5, !srcloc !78
  %154 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pri, align 4
  %add188.5 = add i32 %mul186, 6488164
  %add.ptr189.5 = getelementptr i8, ptr %155, i32 %add188.5
  %156 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr189.5) #5, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  call void @arm_heavy_mb() #5
  %157 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pri, align 4
  %add198.5 = add i32 %mul196, 6554104
  %add.ptr199.5 = getelementptr i8, ptr %158, i32 %add198.5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr199.5, i32 %156) #5, !srcloc !78
  %inc204 = add nuw nsw i32 %i.1466, 1
  %159 = ptrtoint ptr %nr159 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %nr159, align 4
  %cmp160 = icmp slt i32 %inc204, %160
  br i1 %cmp160, label %for.body161.for.body161_crit_edge, label %for.body161.for.cond206.preheader_crit_edge

for.body161.for.cond206.preheader_crit_edge:      ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond206.preheader

for.body161.for.body161_crit_edge:                ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body161

switch.lookup:                                    ; preds = %for.cond206.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.gv100_disp_init, i32 0, i32 %switch.tableidx
  %161 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %161)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %do.body247

do.body247:                                       ; preds = %switch.lookup, %for.cond206.preheader.do.body247_crit_edge
  %tmp.6 = phi i32 [ %107, %for.cond206.preheader.do.body247_crit_edge ], [ %switch.load, %switch.lookup ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  call void @arm_heavy_mb() #5
  %or250 = or i32 %tmp.6, 8
  %162 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pri, align 4
  %add.ptr252 = getelementptr i8, ptr %163, i32 6357008
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr252, i32 %or250) #5, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  call void @arm_heavy_mb() #5
  %164 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %inst, align 4
  %addr = getelementptr inbounds %struct.nvkm_gpuobj, ptr %165, i32 0, i32 4
  %166 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %addr, align 8
  %shr = lshr i64 %167, 16
  %conv = trunc i64 %shr to i32
  %168 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %pri, align 4
  %add.ptr258 = getelementptr i8, ptr %169, i32 6357012
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr258, i32 %conv) #5, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  call void @arm_heavy_mb() #5
  %170 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %pri, align 4
  %add.ptr263 = getelementptr i8, ptr %171, i32 6364400
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr263, i32 391) #5, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  call void @arm_heavy_mb() #5
  %172 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pri, align 4
  %add.ptr268 = getelementptr i8, ptr %173, i32 6364592
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr268, i32 391) #5, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  call void @arm_heavy_mb() #5
  %head272 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 7
  %174 = ptrtoint ptr %head272 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %head272, align 4
  %shl273 = shl i32 %175, 16
  %or274 = or i32 %shl273, 1
  %176 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %pri, align 4
  %add.ptr276 = getelementptr i8, ptr %177, i32 6364396
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr276, i32 %or274) #5, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  call void @arm_heavy_mb() #5
  %178 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %pri, align 4
  %add.ptr281 = getelementptr i8, ptr %179, i32 6364588
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr281, i32 0) #5, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  call void @arm_heavy_mb() #5
  %180 = ptrtoint ptr %wndw.le to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %wndw.le, align 4
  %182 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %pri, align 4
  %add.ptr288 = getelementptr i8, ptr %183, i32 6364392
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr288, i32 %181) #5, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  call void @arm_heavy_mb() #5
  %184 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %pri, align 4
  %add.ptr293 = getelementptr i8, ptr %185, i32 6364584
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr293, i32 0) #5, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  call void @arm_heavy_mb() #5
  %186 = ptrtoint ptr %wndw.le to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %wndw.le, align 4
  %188 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %pri, align 4
  %add.ptr300 = getelementptr i8, ptr %189, i32 6364388
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr300, i32 %187) #5, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  call void @arm_heavy_mb() #5
  %190 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %pri, align 4
  %add.ptr305 = getelementptr i8, ptr %191, i32 6364580
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr305, i32 0) #5, !srcloc !78
  %192 = ptrtoint ptr %head103 to i32
  call void @__asan_load4_noabort(i32 %192)
  %.pn451469 = load ptr, ptr %head103, align 4
  %cmp316.not470 = icmp eq ptr %.pn451469, %head103
  br i1 %cmp316.not470, label %do.body247.do.body342_crit_edge, label %do.body247.for.body320_crit_edge

do.body247.for.body320_crit_edge:                 ; preds = %do.body247
  br label %for.body320

do.body247.do.body342_crit_edge:                  ; preds = %do.body247
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body342

for.body320:                                      ; preds = %for.body320.for.body320_crit_edge, %do.body247.for.body320_crit_edge
  %.pn451471 = phi ptr [ %.pn451, %for.body320.for.body320_crit_edge ], [ %.pn451469, %do.body247.for.body320_crit_edge ]
  %id321 = getelementptr i8, ptr %.pn451471, i32 -4
  %193 = ptrtoint ptr %id321 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %id321, align 4
  %mul322 = shl i32 %194, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %195 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %pri, align 4
  %add327 = add i32 %mul322, 6364352
  %add.ptr328 = getelementptr i8, ptr %196, i32 %add327
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr328, i32 4) #5, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  call void @arm_heavy_mb() #5
  %197 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %pri, align 4
  %add333 = add i32 %mul322, 6364544
  %add.ptr334 = getelementptr i8, ptr %198, i32 %add333
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr334, i32 0) #5, !srcloc !78
  %199 = ptrtoint ptr %.pn451471 to i32
  call void @__asan_load4_noabort(i32 %199)
  %.pn451 = load ptr, ptr %.pn451471, align 4
  %cmp316.not = icmp eq ptr %.pn451, %head103
  br i1 %cmp316.not, label %for.body320.do.body342_crit_edge, label %for.body320.for.body320_crit_edge

for.body320.for.body320_crit_edge:                ; preds = %for.body320
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body320

for.body320.do.body342_crit_edge:                 ; preds = %for.body320
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body342

do.body342:                                       ; preds = %for.body320.do.body342_crit_edge, %do.body247.do.body342_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  call void @arm_heavy_mb() #5
  %200 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %pri, align 4
  %add.ptr346 = getelementptr i8, ptr %201, i32 6364404
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr346, i32 0) #5, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  call void @arm_heavy_mb() #5
  %202 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %pri, align 4
  %add.ptr351 = getelementptr i8, ptr %203, i32 6364596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr351, i32 0) #5, !srcloc !78
  br label %cleanup

cleanup:                                          ; preds = %do.body342, %if.end56
  %retval.0 = phi i32 [ 0, %do.body342 ], [ -16, %if.end56 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_head_cnt(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_head_new(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_sor_cnt(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_sor_new(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/gv100.c", i32 50, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gv100_disp_super._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gv100_disp_super._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/gv100.c", i32 53, i32 3}
!10 = !{ptr @gv100_disp_super._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @gv100_disp_super._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/gv100.c", i32 317, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @gv100_disp_intr._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @gv100_disp_intr._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/gv100.c", i32 275, i32 3}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @gv100_disp_intr_head_timing._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @gv100_disp_intr_head_timing._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/gv100.c", i32 250, i32 3}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @gv100_disp_intr_exc_win._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @gv100_disp_intr_exc_win._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/gv100.c", i32 115, i32 3}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @gv100_disp_exception._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @gv100_disp_exception._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/gv100.c", i32 120, i32 3}
!37 = !{ptr @gv100_disp_exception._entry.19, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @gv100_disp_exception._entry_ptr.21, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/gv100.c", i32 230, i32 3}
!41 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @gv100_disp_intr_exc_winim._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @gv100_disp_intr_exc_winim._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/gv100.c", i32 210, i32 3}
!46 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @gv100_disp_intr_exc_other._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @gv100_disp_intr_exc_other._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/gv100.c", i32 160, i32 3}
!51 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @gv100_disp_intr_ctrl_disp._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @gv100_disp_intr_ctrl_disp._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/gv100.c", i32 183, i32 3}
!56 = !{ptr @gv100_disp_intr_ctrl_disp._entry.28, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @gv100_disp_intr_ctrl_disp._entry_ptr.30, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @gv100_disp, !59, !"gv100_disp", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/gv100.c", i32 430, i32 1}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/gv100.c", i32 338, i32 7}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 5400311}
!72 = !{i64 2156278200}
!73 = !{i64 2156278585}
!74 = !{i64 2156280166}
!75 = !{i32 0, i32 33}
!76 = !{i64 2156286248}
!77 = !{i64 2156313143}
!78 = !{i64 5399893}
!79 = !{i64 2156313556}
!80 = !{i64 2156346218}
!81 = !{i64 2156342371}
!82 = !{i64 2156342759}
!83 = !{i64 2156343211}
!84 = !{i64 2156345768}
!85 = !{i64 2156338430}
!86 = !{i64 2156339225}
!87 = !{i64 2156341873}
!88 = !{i64 2156334537}
!89 = !{i64 2156335332}
!90 = !{i64 2156337980}
!91 = !{i64 2156330388}
!92 = !{i64 2156330730}
!93 = !{i64 2156331494}
!94 = !{i64 2156334087}
!95 = !{i64 2156322142}
!96 = !{i64 2156322486}
!97 = !{i64 2156323328}
!98 = !{i64 2156323730}
!99 = !{i64 2156326359}
!100 = !{i64 2156326744}
!101 = !{i64 2156327076}
!102 = !{i64 2156327474}
!103 = !{i64 2156349037}
!104 = !{i64 2156314054}
!105 = !{i64 2156314481}
!106 = !{i64 2156314908}
!107 = !{i64 2156321686}
!108 = !{i64 2156349493}
!109 = !{i64 2156350263}
!110 = !{i64 2156350665}
!111 = !{i64 2156352582}
!112 = !{i64 2156353865}
!113 = !{i64 2156354193}
!114 = !{i64 2156354684}
!115 = !{i64 2156355464}
!116 = !{i64 2156355886}
!117 = !{i64 2156356353}
!118 = !{i64 2156360141}
!119 = !{i64 2156360499}
!120 = !{i64 2156361005}
!121 = !{i64 2156361369}
!122 = !{i64 2156363965}
!123 = !{i64 2156364319}
!124 = !{i64 2156365153}
!125 = !{i64 2156365555}
!126 = !{i64 2156362195}
!127 = !{i64 2156362581}
!128 = !{i64 2156363115}
!129 = !{i64 2156363477}
!130 = !{i64 2156366071}
!131 = !{i64 2156366514}
!132 = !{i64 2156366939}
!133 = !{i64 2156367352}
!134 = !{i64 2156367829}
!135 = !{i64 2156368274}
!136 = !{i64 2156368697}
!137 = !{i64 2156369115}
!138 = !{i64 2156369538}
!139 = !{i64 2156369956}
!140 = !{i64 2156373677}
!141 = !{i64 2156374104}
!142 = !{i64 2156374517}
!143 = !{i64 2156374930}
