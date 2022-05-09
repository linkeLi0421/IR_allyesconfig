; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_disp_func = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.nv50_disp_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.145, %struct.anon.145, %struct.anon.145, %struct.anon.145, %struct.anon.145, i16 }
%struct.anon.145 = type { ptr, ptr }
%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_disp_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.139, %struct.anon.139, %struct.anon.139, %struct.anon.140, %struct.anon.141, ptr, ptr, [81 x ptr] }
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
%struct.anon.138 = type { %struct.spinlock, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.139 = type { i32, i32 }
%struct.anon.140 = type { i32, i32, i32 }
%struct.anon.141 = type { i32, i32, [3 x i8] }
%struct.nvkm_head = type { ptr, ptr, i32, %struct.list_head, %struct.nvkm_head_state, %struct.nvkm_head_state }
%struct.nvkm_head_state = type { i16, i16, i16, i16, i16, i16, i16, i16, i32, %struct.anon.152 }
%struct.anon.152 = type { i8 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.135, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.135 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_ior_func = type { %struct.anon.153, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.160, %struct.anon.161, %struct.anon.162 }
%struct.anon.153 = type { ptr, ptr }
%struct.anon.160 = type { ptr, ptr }
%struct.anon.161 = type { [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.162 = type { ptr, ptr, ptr }
%struct.nvbios_ocfg = type { i8, i8, [2 x i16] }
%struct.nvbios_outp = type { i16, i16, [3 x i16] }
%struct.nvbios_init = type { ptr, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32 }
%struct.nvkm_ior = type { ptr, ptr, i32, i32, [8 x i8], %struct.list_head, i8, %struct.nvkm_ior_state, %struct.nvkm_ior_state, %struct.anon.163, %struct.anon.164 }
%struct.nvkm_ior_state = type { ptr, i32, i24 }
%struct.anon.163 = type { i8, i8, i8, i8 }
%struct.anon.164 = type { i8 }
%struct.nvkm_outp = type { ptr, ptr, i32, %struct.dcb_output, ptr, %struct.list_head, ptr, i8, i8, ptr }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.154, i8 }
%union.anon.154 = type { %struct.anon.158 }
%struct.anon.158 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.nvkm_outp_func = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_head_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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

@nv50_disp_ = internal constant { %struct.nvkm_disp_func, [40 x i8] } { %struct.nvkm_disp_func { ptr @nv50_disp_dtor_, ptr @nv50_disp_oneinit_, ptr @nv50_disp_init_, ptr @nv50_disp_fini_, ptr @nv50_disp_intr_, ptr @nv50_disp_root_ }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nvkm-disp\00", [22 x i8] zeroinitializer }, align 32
@nv50_disp_new_.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&disp->supervisor)\00", [59 x i8] zeroinitializer }, align 32
@nv50_disp_super_3_0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 311, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: head-%d: supervisor 3.0\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nv50_disp_super_3_0\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv50_disp_super_3_0._entry_ptr = internal global ptr @nv50_disp_super_3_0._entry, section ".printk_index", align 4
@nv50_disp_super_2_2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 438, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: head-%d: supervisor 2.2\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nv50_disp_super_2_2\00", [44 x i8] zeroinitializer }, align 32
@nv50_disp_super_2_2._entry_ptr = internal global ptr @nv50_disp_super_2_2._entry, section ".printk_index", align 4
@nv50_disp_super_2_1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 482, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: head-%d: supervisor 2.1 - %d khz\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nv50_disp_super_2_1\00", [44 x i8] zeroinitializer }, align 32
@nv50_disp_super_2_1._entry_ptr = internal global ptr @nv50_disp_super_2_1._entry, section ".printk_index", align 4
@nv50_disp_super_2_0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 494, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: head-%d: supervisor 2.0\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nv50_disp_super_2_0\00", [44 x i8] zeroinitializer }, align 32
@nv50_disp_super_2_0._entry_ptr = internal global ptr @nv50_disp_super_2_0._entry, section ".printk_index", align 4
@nv50_disp_super_1_0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 517, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: head-%d: supervisor 1.0\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nv50_disp_super_1_0\00", [44 x i8] zeroinitializer }, align 32
@nv50_disp_super_1_0._entry_ptr = internal global ptr @nv50_disp_super_1_0._entry, section ".printk_index", align 4
@nv50_disp_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 553, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: supervisor %08x %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nv50_disp_super\00", [16 x i8] zeroinitializer }, align 32
@nv50_disp_super._entry_ptr = internal global ptr @nv50_disp_super._entry, section ".printk_index", align 4
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PUSHBUFFER_ERR\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TRAP\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RESERVED_METHOD\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"INVALID_ARG\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"INVALID_STATE\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"UNRESOLVABLE_HANDLE\00", [44 x i8] zeroinitializer }, align 32
@nv50_disp_intr_error_type = dso_local constant { [8 x %struct.nvkm_enum], [32 x i8] } { [8 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.18, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.19, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.20, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.21, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.22, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.23, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.24, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@nv50_disp = internal constant { %struct.nv50_disp_func, [56 x i8] } { %struct.nv50_disp_func { ptr @nv50_disp_init, ptr @nv50_disp_fini, ptr @nv50_disp_intr, ptr null, ptr @nv50_disp_chan_uevent, ptr @nv50_disp_super, ptr @nv50_disp_root_oclass, %struct.anon.145 zeroinitializer, %struct.anon.145 { ptr @nv50_head_cnt, ptr @nv50_head_new }, %struct.anon.145 { ptr @nv50_dac_cnt, ptr @nv50_dac_new }, %struct.anon.145 { ptr @nv50_sor_cnt, ptr @nv50_sor_new }, %struct.anon.145 { ptr @nv50_pior_cnt, ptr @nv50_pior_new }, i16 0 }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nv50_disp_oneinit_._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.5, i32 93, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Window(s): %d (%08lx)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nv50_disp_oneinit_\00", [45 x i8] zeroinitializer }, align 32
@nv50_disp_oneinit_._entry_ptr = internal global ptr @nv50_disp_oneinit_._entry, section ".printk_index", align 4
@nv50_disp_oneinit_._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.5, i32 98, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:   Head(s): %d (%02lx)\0A\00", [37 x i8] zeroinitializer }, align 32
@nv50_disp_oneinit_._entry_ptr.30 = internal global ptr @nv50_disp_oneinit_._entry.28, section ".printk_index", align 4
@nv50_disp_oneinit_._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.5, i32 108, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:    DAC(s): %d (%02lx)\0A\00", [37 x i8] zeroinitializer }, align 32
@nv50_disp_oneinit_._entry_ptr.33 = internal global ptr @nv50_disp_oneinit_._entry.31, section ".printk_index", align 4
@nv50_disp_oneinit_._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.5, i32 119, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:   PIOR(s): %d (%02lx)\0A\00", [37 x i8] zeroinitializer }, align 32
@nv50_disp_oneinit_._entry_ptr.36 = internal global ptr @nv50_disp_oneinit_._entry.34, section ".printk_index", align 4
@nv50_disp_oneinit_._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.27, ptr @.str.5, i32 129, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:    SOR(s): %d (%02lx)\0A\00", [37 x i8] zeroinitializer }, align 32
@nv50_disp_oneinit_._entry_ptr.39 = internal global ptr @nv50_disp_oneinit_._entry.37, section ".printk_index", align 4
@nv50_disp_super_ior_asy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.5, i32 283, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: head-%d: to %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nv50_disp_super_ior_asy\00", [40 x i8] zeroinitializer }, align 32
@nv50_disp_super_ior_asy._entry_ptr = internal global ptr @nv50_disp_super_ior_asy._entry, section ".printk_index", align 4
@nv50_disp_super_ior_asy._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.5, i32 287, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: head-%d: nothing to attach\0A\00", [32 x i8] zeroinitializer }, align 32
@nv50_disp_super_ior_asy._entry_ptr.44 = internal global ptr @nv50_disp_super_ior_asy._entry.42, section ".printk_index", align 4
@nv50_disp_super_ied_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 209, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: %s: nothing to attach\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nv50_disp_super_ied_on\00", [41 x i8] zeroinitializer }, align 32
@nv50_disp_super_ied_on._entry_ptr = internal global ptr @nv50_disp_super_ied_on._entry, section ".printk_index", align 4
@nv50_disp_super_ied_on._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.5, i32 232, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: outp %02x:%04x:%04x: missing IEDT RS for %02x:%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@nv50_disp_super_ied_on._entry_ptr.49 = internal global ptr @nv50_disp_super_ied_on._entry.47, section ".printk_index", align 4
@nv50_disp_super_ied_on._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.5, i32 240, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: outp %02x:%04x:%04x: missing IEDT RSS %d for %02x:%02x %d khz\0A\00", [61 x i8] zeroinitializer }, align 32
@nv50_disp_super_ied_on._entry_ptr.52 = internal global ptr @nv50_disp_super_ied_on._entry.50, section ".printk_index", align 4
@nv50_disp_super_iedt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.5, i32 192, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: outp %02x:%04x:%04x: missing IEDT for %04x:%04x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nv50_disp_super_iedt\00", [43 x i8] zeroinitializer }, align 32
@nv50_disp_super_iedt._entry_ptr = internal global ptr @nv50_disp_super_iedt._entry, section ".printk_index", align 4
@nv50_disp_super_2_2_dp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.5, i32 411, ptr @.str.57, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: unable to determine dp config\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nv50_disp_super_2_2_dp\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nv50_disp_super_2_2_dp._entry_ptr = internal global ptr @nv50_disp_super_2_2_dp._entry, section ".printk_index", align 4
@nv50_disp_super_ior_arm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.5, i32 297, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: head-%d: on %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nv50_disp_super_ior_arm\00", [40 x i8] zeroinitializer }, align 32
@nv50_disp_super_ior_arm._entry_ptr = internal global ptr @nv50_disp_super_ior_arm._entry, section ".printk_index", align 4
@nv50_disp_super_ior_arm._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.5, i32 301, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: head-%d: nothing attached\0A\00", [33 x i8] zeroinitializer }, align 32
@nv50_disp_super_ior_arm._entry_ptr.62 = internal global ptr @nv50_disp_super_ior_arm._entry.60, section ".printk_index", align 4
@nv50_disp_super_ied_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.5, i32 261, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: %s: nothing attached\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nv50_disp_super_ied_off\00", [40 x i8] zeroinitializer }, align 32
@nv50_disp_super_ied_off._entry_ptr = internal global ptr @nv50_disp_super_ied_off._entry, section ".printk_index", align 4
@nv50_disp_intr_error_code = internal constant { [2 x %struct.nvkm_enum], [56 x i8] } { [2 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.67, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], [56 x i8] zeroinitializer }, align 32
@nv50_disp_intr_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.5, i32 631, ptr @.str.57, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: ERROR %d [%s] %02x [%s] chid %d mthd %04x data %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nv50_disp_intr_error\00", [43 x i8] zeroinitializer }, align 32
@nv50_disp_intr_error._entry_ptr = internal global ptr @nv50_disp_intr_error._entry, section ".printk_index", align 4
@.str.67 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@nv50_disp_chan_uevent = external dso_local constant %struct.nvkm_event_func, align 4
@nv50_disp_root_oclass = external dso_local constant %struct.nvkm_disp_oclass, align 4
@___asan_gen_.68 = private unnamed_addr constant [11 x i8] c"nv50_disp_\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 146, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 171, i32 13 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 175, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 311, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 438, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 482, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 494, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 517, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 553, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 597, i32 7 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 598, i32 7 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 599, i32 7 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 600, i32 7 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 601, i32 7 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 602, i32 7 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 603, i32 7 }
@___asan_gen_.167 = private unnamed_addr constant [26 x i8] c"nv50_disp_intr_error_type\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 596, i32 1 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 741, i32 7 }
@___asan_gen_.173 = private unnamed_addr constant [10 x i8] c"nv50_disp\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 758, i32 1 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 92, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 97, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 107, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 118, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 128, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 283, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 287, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 209, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 231, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 239, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 192, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 411, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 297, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 301, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 261, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant [26 x i8] c"nv50_disp_intr_error_code\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 608, i32 1 }
@___asan_gen_.293 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.303 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 628, i32 2 }
@llvm.compiler.used = appending global [101 x ptr] [ptr @nv50_disp_intr_error._entry, ptr @nv50_disp_intr_error._entry_ptr, ptr @nv50_disp_oneinit_._entry, ptr @nv50_disp_oneinit_._entry.28, ptr @nv50_disp_oneinit_._entry.31, ptr @nv50_disp_oneinit_._entry.34, ptr @nv50_disp_oneinit_._entry.37, ptr @nv50_disp_oneinit_._entry_ptr, ptr @nv50_disp_oneinit_._entry_ptr.30, ptr @nv50_disp_oneinit_._entry_ptr.33, ptr @nv50_disp_oneinit_._entry_ptr.36, ptr @nv50_disp_oneinit_._entry_ptr.39, ptr @nv50_disp_super._entry, ptr @nv50_disp_super._entry_ptr, ptr @nv50_disp_super_1_0._entry, ptr @nv50_disp_super_1_0._entry_ptr, ptr @nv50_disp_super_2_0._entry, ptr @nv50_disp_super_2_0._entry_ptr, ptr @nv50_disp_super_2_1._entry, ptr @nv50_disp_super_2_1._entry_ptr, ptr @nv50_disp_super_2_2._entry, ptr @nv50_disp_super_2_2._entry_ptr, ptr @nv50_disp_super_2_2_dp._entry, ptr @nv50_disp_super_2_2_dp._entry_ptr, ptr @nv50_disp_super_3_0._entry, ptr @nv50_disp_super_3_0._entry_ptr, ptr @nv50_disp_super_ied_off._entry, ptr @nv50_disp_super_ied_off._entry_ptr, ptr @nv50_disp_super_ied_on._entry, ptr @nv50_disp_super_ied_on._entry.47, ptr @nv50_disp_super_ied_on._entry.50, ptr @nv50_disp_super_ied_on._entry_ptr, ptr @nv50_disp_super_ied_on._entry_ptr.49, ptr @nv50_disp_super_ied_on._entry_ptr.52, ptr @nv50_disp_super_iedt._entry, ptr @nv50_disp_super_iedt._entry_ptr, ptr @nv50_disp_super_ior_arm._entry, ptr @nv50_disp_super_ior_arm._entry.60, ptr @nv50_disp_super_ior_arm._entry_ptr, ptr @nv50_disp_super_ior_arm._entry_ptr.62, ptr @nv50_disp_super_ior_asy._entry, ptr @nv50_disp_super_ior_asy._entry.42, ptr @nv50_disp_super_ior_asy._entry_ptr, ptr @nv50_disp_super_ior_asy._entry_ptr.44, ptr @nv50_disp_, ptr @.str, ptr @.str.1, ptr @nv50_disp_new_.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @nv50_disp_intr_error_type, ptr @.str.25, ptr @nv50_disp, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @nv50_disp_intr_error_code, ptr @.str.65, ptr @.str.66, ptr @.str.67], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_ to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_new_.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_super_3_0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_super_2_2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_super_2_1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_super_2_0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_super_1_0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_intr_error_type to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_oneinit_._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_oneinit_._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_oneinit_._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_oneinit_._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_oneinit_._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_super_ior_asy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_super_ior_asy._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_super_ied_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_super_ied_on._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_super_ied_on._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_super_iedt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_super_2_2_dp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_super_ior_arm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_super_ior_arm._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_super_ied_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_intr_error_code to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_intr_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_disp_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pdisp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1056) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %func, ptr %call7.i.i, align 8
  %base = getelementptr inbounds %struct.nv50_disp, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %pdisp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %base, ptr %pdisp, align 4
  %call3 = tail call i32 @nvkm_disp_ctor(ptr noundef nonnull @nv50_disp_, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %base) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.1) #7
  %wq = getelementptr inbounds %struct.nv50_disp, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7, ptr %wq, align 8
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %do.body

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %supervisor = getelementptr inbounds %struct.nv50_disp, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %supervisor, i32 noundef 0) #7
  %4 = ptrtoint ptr %supervisor to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %supervisor, align 4
  %lockdep_map = getelementptr inbounds %struct.nv50_disp, ptr %call7.i.i, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @nv50_disp_new_.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry15 = getelementptr inbounds %struct.nv50_disp, ptr %call7.i.i, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %entry15 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry15, ptr %entry15, align 8
  %prev.i = getelementptr inbounds %struct.nv50_disp, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry15, ptr %prev.i, align 4
  %super = getelementptr inbounds %struct.nv50_disp_func, ptr %func, i32 0, i32 5
  %7 = ptrtoint ptr %super to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %super, align 4
  %func17 = getelementptr inbounds %struct.nv50_disp, ptr %call7.i.i, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %func17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %func17, align 8
  %uevent = getelementptr inbounds %struct.nv50_disp_func, ptr %func, i32 0, i32 4
  %10 = ptrtoint ptr %uevent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %uevent, align 4
  %uevent18 = getelementptr inbounds %struct.nv50_disp, ptr %call7.i.i, i32 0, i32 5
  %call19 = tail call i32 @nvkm_event_init(ptr noundef %11, i32 noundef 1, i32 noundef 81, ptr noundef %uevent18) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %do.body ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_disp_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_event_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_disp_super_3_0(ptr nocapture readnone %disp, ptr nocapture noundef readonly %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %disp2 = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %disp2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp2, align 4
  %debug = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 5
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 4
  %id = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 2
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef %name, i32 noundef %9) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %disp2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disp2, align 4
  %ior1.i = getelementptr inbounds %struct.nvkm_disp, ptr %11, i32 0, i32 3
  %id.i = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %ior1.i, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ior1.i
  br i1 %cmp.not.i, label %do.body24.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %head5.i = getelementptr i8, ptr %.pn.i, i32 32
  %13 = ptrtoint ptr %head5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load.i = load i32, ptr %head5.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 15
  %bf.clear.i = and i32 %bf.lshr.i, 255
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i, align 4
  %shl.i = shl nuw i32 1, %15
  %and.i = and i32 %bf.clear.i, %shl.i
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %do.body.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

do.body.i:                                        ; preds = %for.body.i
  %ior.0.le.i = getelementptr i8, ptr %.pn.i, i32 -24
  %debug.i = getelementptr inbounds %struct.nvkm_disp, ptr %11, i32 0, i32 1, i32 1, i32 5
  %16 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp8.i = icmp ugt i32 %17, 3
  br i1 %cmp8.i, label %do.end.i, label %do.body.i.nv50_disp_super_ior_asy.exit_crit_edge

do.body.i.nv50_disp_super_ior_asy.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_disp_super_ior_asy.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %device.i = getelementptr inbounds %struct.nvkm_disp, ptr %11, i32 0, i32 1, i32 1, i32 1
  %18 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_disp, ptr %11, i32 0, i32 1, i32 1, i32 4
  %name12.i = getelementptr i8, ptr %.pn.i, i32 -8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.40, ptr noundef %name.i, i32 noundef %15, ptr noundef %name12.i) #11
  br label %nv50_disp_super_ior_asy.exit

do.body24.i:                                      ; preds = %for.cond.i
  %debug31.i = getelementptr inbounds %struct.nvkm_disp, ptr %11, i32 0, i32 1, i32 1, i32 5
  %22 = ptrtoint ptr %debug31.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp32.i = icmp ugt i32 %23, 3
  br i1 %cmp32.i, label %do.end36.i, label %do.body24.i.cleanup_crit_edge

do.body24.i.cleanup_crit_edge:                    ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end36.i:                                       ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  %device37.i = getelementptr inbounds %struct.nvkm_disp, ptr %11, i32 0, i32 1, i32 1, i32 1
  %24 = ptrtoint ptr %device37.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device37.i, align 4
  %dev38.i = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dev38.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev38.i, align 8
  %name39.i = getelementptr inbounds %struct.nvkm_disp, ptr %11, i32 0, i32 1, i32 1, i32 4
  %28 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.43, ptr noundef %name39.i, i32 noundef %29) #11
  br label %cleanup

nv50_disp_super_ior_asy.exit:                     ; preds = %do.end.i, %do.body.i.nv50_disp_super_ior_asy.exit_crit_edge
  %tobool.not = icmp eq ptr %ior.0.le.i, null
  br i1 %tobool.not, label %nv50_disp_super_ior_asy.exit.cleanup_crit_edge, label %if.end9

nv50_disp_super_ior_asy.exit.cleanup_crit_edge:   ; preds = %nv50_disp_super_ior_asy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %nv50_disp_super_ior_asy.exit
  %hz = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 5, i32 8
  %30 = ptrtoint ptr %hz to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hz, align 4
  %div = udiv i32 %31, 1000
  tail call fastcc void @nv50_disp_super_ied_on(ptr noundef %head, ptr noundef nonnull %ior.0.le.i, i32 noundef 1, i32 noundef %div)
  %32 = ptrtoint ptr %ior.0.le.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ior.0.le.i, align 4
  %war_3 = getelementptr inbounds %struct.nvkm_ior_func, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %war_3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %war_3, align 4
  %tobool10.not = icmp eq ptr %35, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %35(ptr noundef nonnull %ior.0.le.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end9.cleanup_crit_edge, %nv50_disp_super_ior_asy.exit.cleanup_crit_edge, %do.end36.i, %do.body24.i.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv50_disp_super_ied_on(ptr nocapture noundef readonly %head, ptr noundef %ior, i32 noundef %id, i32 noundef %khz) unnamed_addr #0 align 64 {
entry:
  %iedtrs = alloca %struct.nvbios_ocfg, align 2
  %iedt = alloca %struct.nvbios_outp, align 2
  %ver = alloca i8, align 1
  %hdr = alloca i8, align 1
  %cnt = alloca i8, align 1
  %len = alloca i8, align 1
  %init = alloca %struct.nvbios_init, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 4
  %subdev1 = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1
  %device = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %bios2 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %bios2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bios2, align 8
  %asy = getelementptr inbounds %struct.nvkm_ior, ptr %ior, i32 0, i32 8
  %6 = ptrtoint ptr %asy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asy, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %iedtrs) #7
  %8 = call ptr @memset(ptr %iedtrs, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %iedt) #7
  %9 = call ptr @memset(ptr %iedt, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #7
  %10 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %ver, align 1, !annotation !146
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr) #7
  %11 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %hdr, align 1, !annotation !146
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt) #7
  %12 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %cnt, align 1, !annotation !146
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #7
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %len, align 1, !annotation !146
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.body, label %if.end17

do.body:                                          ; preds = %entry
  %disp5 = getelementptr inbounds %struct.nvkm_ior, ptr %ior, i32 0, i32 1
  %14 = ptrtoint ptr %disp5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disp5, align 4
  %debug = getelementptr inbounds %struct.nvkm_disp, ptr %15, i32 0, i32 1, i32 1, i32 5
  %16 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp = icmp ugt i32 %17, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %device10 = getelementptr inbounds %struct.nvkm_disp, ptr %15, i32 0, i32 1, i32 1, i32 1
  %18 = ptrtoint ptr %device10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device10, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_disp, ptr %15, i32 0, i32 1, i32 1, i32 4
  %name11 = getelementptr inbounds %struct.nvkm_ior, ptr %ior, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.45, ptr noundef %name, ptr noundef %name11) #11
  br label %cleanup

if.end17:                                         ; preds = %entry
  %link.i = getelementptr inbounds %struct.nvkm_outp, ptr %7, i32 0, i32 3, i32 10
  %22 = ptrtoint ptr %link.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %link.i, align 2
  %24 = tail call i8 @llvm.cttz.i8(i8 %23, i1 true) #7, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %iszero.i = icmp eq i8 %23, 0
  %25 = add nuw nsw i8 %24, 1
  %conv2.i = select i1 %iszero.i, i8 0, i8 %25
  %hasht.i = getelementptr inbounds %struct.nvkm_outp, ptr %7, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %hasht.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %hasht.i, align 4
  %id.i = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 2
  %28 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id.i, align 4
  %shl.i = shl i32 256, %29
  %conv4.i = zext i8 %conv2.i to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 6
  %or7.i = getelementptr inbounds %struct.nvkm_outp, ptr %7, i32 0, i32 3, i32 9
  %30 = ptrtoint ptr %or7.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %or7.i, align 1
  %conv8.i = zext i8 %31 to i32
  %or.i = or i32 %shl.i, %conv8.i
  %or9.i = or i32 %or.i, %shl5.i
  %conv10.i = trunc i32 %or9.i to i16
  %call.i = call zeroext i16 @nvbios_outp_match(ptr noundef %5, i16 noundef zeroext %27, i16 noundef zeroext %conv10.i, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef nonnull %len, ptr noundef nonnull %iedt) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %nv50_disp_super_iedt.exit

do.body.i:                                        ; preds = %if.end17
  %disp13.i = getelementptr inbounds %struct.nvkm_outp, ptr %7, i32 0, i32 1
  %32 = ptrtoint ptr %disp13.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %disp13.i, align 4
  %debug.i = getelementptr inbounds %struct.nvkm_disp, ptr %33, i32 0, i32 1, i32 1, i32 5
  %34 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp.i = icmp ugt i32 %35, 3
  br i1 %cmp.i, label %do.end.i, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %device19.i = getelementptr inbounds %struct.nvkm_disp, ptr %33, i32 0, i32 1, i32 1, i32 1
  %36 = ptrtoint ptr %device19.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device19.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_disp, ptr %33, i32 0, i32 1, i32 1, i32 4
  %index.i = getelementptr inbounds %struct.nvkm_outp, ptr %7, i32 0, i32 2
  %40 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %index.i, align 4
  %42 = ptrtoint ptr %hasht.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %hasht.i, align 4
  %conv22.i = zext i16 %43 to i32
  %hashm.i = getelementptr inbounds %struct.nvkm_outp, ptr %7, i32 0, i32 3, i32 2
  %44 = ptrtoint ptr %hashm.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %hashm.i, align 2
  %conv24.i = zext i16 %45 to i32
  %conv25.i = zext i16 %27 to i32
  %conv26.i = and i32 %or9.i, 65535
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.53, ptr noundef %name.i, i32 noundef %41, i32 noundef %conv22.i, i32 noundef %conv24.i, i32 noundef %conv25.i, i32 noundef %conv26.i) #11
  br label %cleanup

nv50_disp_super_iedt.exit:                        ; preds = %if.end17
  %type = getelementptr inbounds %struct.nvkm_ior, ptr %ior, i32 0, i32 2
  %46 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp21 = icmp eq i32 %47, 1
  br i1 %cmp21, label %if.then22, label %nv50_disp_super_iedt.exit.if.end46_crit_edge

nv50_disp_super_iedt.exit.if.end46_crit_edge:     ; preds = %nv50_disp_super_iedt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then22:                                        ; preds = %nv50_disp_super_iedt.exit
  %proto = getelementptr inbounds %struct.nvkm_ior, ptr %ior, i32 0, i32 8, i32 2
  %48 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load = load i32, ptr %proto, align 4
  %49 = and i32 %bf.load, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %49)
  %cmp24 = icmp eq i32 %49, 100663296
  br i1 %cmp24, label %if.then25, label %if.then22.if.end34_crit_edge

if.then22.if.end34_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then25:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %or = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 5, i32 9
  %50 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %or, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %51)
  %cmp27 = icmp eq i8 %51, 24
  %spec.select = select i1 %cmp27, i8 2, i8 0
  br label %if.end34

if.end34:                                         ; preds = %if.then25, %if.then22.if.end34_crit_edge
  %flags.0 = phi i8 [ 0, %if.then22.if.end34_crit_edge ], [ %spec.select, %if.then25 ]
  %52 = and i32 %bf.load, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 25165824, i32 %52)
  %cmp39 = icmp eq i32 %52, 25165824
  %53 = zext i1 %cmp39 to i8
  %spec.select196 = or i8 %flags.0, %53
  br label %if.end46

if.end46:                                         ; preds = %if.end34, %nv50_disp_super_iedt.exit.if.end46_crit_edge
  %flags.1 = phi i8 [ 0, %nv50_disp_super_iedt.exit.if.end46_crit_edge ], [ %spec.select196, %if.end34 ]
  %proto_evo = getelementptr inbounds %struct.nvkm_ior, ptr %ior, i32 0, i32 8, i32 2
  %54 = ptrtoint ptr %proto_evo to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load49 = load i32, ptr %proto_evo, align 4
  %bf.lshr50 = lshr i32 %bf.load49, 28
  %conv51 = trunc i32 %bf.lshr50 to i8
  %call52 = call zeroext i16 @nvbios_ocfg_match(ptr noundef %5, i16 noundef zeroext %call.i, i8 noundef zeroext %conv51, i8 noundef zeroext %flags.1, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef nonnull %len, ptr noundef nonnull %iedtrs) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call52)
  %tobool54.not = icmp eq i16 %call52, 0
  br i1 %tobool54.not, label %do.body56, label %if.end86

do.body56:                                        ; preds = %if.end46
  %disp59 = getelementptr inbounds %struct.nvkm_outp, ptr %7, i32 0, i32 1
  %55 = ptrtoint ptr %disp59 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %disp59, align 4
  %debug62 = getelementptr inbounds %struct.nvkm_disp, ptr %56, i32 0, i32 1, i32 1, i32 5
  %57 = ptrtoint ptr %debug62 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %debug62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %58)
  %cmp63 = icmp ugt i32 %58, 3
  br i1 %cmp63, label %do.end68, label %do.body56.cleanup_crit_edge

do.body56.cleanup_crit_edge:                      ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end68:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  %device69 = getelementptr inbounds %struct.nvkm_disp, ptr %56, i32 0, i32 1, i32 1, i32 1
  %59 = ptrtoint ptr %device69 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device69, align 4
  %dev70 = getelementptr inbounds %struct.nvkm_device, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev70, align 8
  %name71 = getelementptr inbounds %struct.nvkm_disp, ptr %56, i32 0, i32 1, i32 1, i32 4
  %index = getelementptr inbounds %struct.nvkm_outp, ptr %7, i32 0, i32 2
  %63 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %index, align 4
  %65 = ptrtoint ptr %hasht.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %hasht.i, align 4
  %conv73 = zext i16 %66 to i32
  %hashm = getelementptr inbounds %struct.nvkm_outp, ptr %7, i32 0, i32 3, i32 2
  %67 = ptrtoint ptr %hashm to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %hashm, align 2
  %conv75 = zext i16 %68 to i32
  %69 = ptrtoint ptr %proto_evo to i32
  call void @__asan_load4_noabort(i32 %69)
  %bf.load78 = load i32, ptr %proto_evo, align 4
  %bf.lshr79 = lshr i32 %bf.load78, 28
  %conv80 = zext i8 %flags.1 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %62, ptr noundef nonnull @.str.48, ptr noundef %name71, i32 noundef %64, i32 noundef %conv73, i32 noundef %conv75, i32 noundef %bf.lshr79, i32 noundef %conv80) #11
  br label %cleanup

if.end86:                                         ; preds = %if.end46
  %arrayidx = getelementptr %struct.nvbios_ocfg, ptr %iedtrs, i32 0, i32 2, i32 %id
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx, align 2
  %call87 = call zeroext i16 @nvbios_oclk_match(ptr noundef %5, i16 noundef zeroext %71, i32 noundef %khz) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call87)
  %tobool89.not = icmp eq i16 %call87, 0
  br i1 %tobool89.not, label %do.body91, label %if.end126

do.body91:                                        ; preds = %if.end86
  %disp95 = getelementptr inbounds %struct.nvkm_outp, ptr %7, i32 0, i32 1
  %72 = ptrtoint ptr %disp95 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %disp95, align 4
  %debug98 = getelementptr inbounds %struct.nvkm_disp, ptr %73, i32 0, i32 1, i32 1, i32 5
  %74 = ptrtoint ptr %debug98 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %debug98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %75)
  %cmp99 = icmp ugt i32 %75, 3
  br i1 %cmp99, label %do.end104, label %do.body91.cleanup_crit_edge

do.body91.cleanup_crit_edge:                      ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end104:                                        ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #9
  %device105 = getelementptr inbounds %struct.nvkm_disp, ptr %73, i32 0, i32 1, i32 1, i32 1
  %76 = ptrtoint ptr %device105 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %device105, align 4
  %dev106 = getelementptr inbounds %struct.nvkm_device, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev106, align 8
  %name107 = getelementptr inbounds %struct.nvkm_disp, ptr %73, i32 0, i32 1, i32 1, i32 4
  %index109 = getelementptr inbounds %struct.nvkm_outp, ptr %7, i32 0, i32 2
  %80 = ptrtoint ptr %index109 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %index109, align 4
  %82 = ptrtoint ptr %hasht.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %hasht.i, align 4
  %conv112 = zext i16 %83 to i32
  %hashm114 = getelementptr inbounds %struct.nvkm_outp, ptr %7, i32 0, i32 3, i32 2
  %84 = ptrtoint ptr %hashm114 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %hashm114, align 2
  %conv115 = zext i16 %85 to i32
  %86 = ptrtoint ptr %proto_evo to i32
  call void @__asan_load4_noabort(i32 %86)
  %bf.load118 = load i32, ptr %proto_evo, align 4
  %bf.lshr119 = lshr i32 %bf.load118, 28
  %conv120 = zext i8 %flags.1 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %79, ptr noundef nonnull @.str.51, ptr noundef %name107, i32 noundef %81, i32 noundef %conv112, i32 noundef %conv115, i32 noundef %id, i32 noundef %bf.lshr119, i32 noundef %conv120, i32 noundef %khz) #11
  br label %cleanup

if.end126:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  %conv88 = zext i16 %call87 to i32
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %init) #7
  %87 = getelementptr inbounds i8, ptr %init, i32 24
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %87, align 4, !annotation !146
  %89 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %subdev1, ptr %init, align 4
  %offset = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 1
  %90 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %conv88, ptr %offset, align 4
  %outp128 = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 2
  %or129 = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 3
  %link130 = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 4
  %head131 = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 5
  %execute = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 6
  %91 = ptrtoint ptr %execute to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %execute, align 4
  %nested = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 7
  %info132 = getelementptr inbounds %struct.nvkm_outp, ptr %7, i32 0, i32 3
  %92 = call ptr @memset(ptr %nested, i32 0, i32 16)
  %93 = ptrtoint ptr %outp128 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %info132, ptr %outp128, align 4
  %id134 = getelementptr inbounds %struct.nvkm_ior, ptr %ior, i32 0, i32 3
  %94 = ptrtoint ptr %id134 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %id134, align 4
  %96 = ptrtoint ptr %or129 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %or129, align 4
  %97 = ptrtoint ptr %proto_evo to i32
  call void @__asan_load4_noabort(i32 %97)
  %bf.load138 = load i32, ptr %proto_evo, align 4
  %bf.lshr139 = lshr i32 %bf.load138, 23
  %bf.clear140 = and i32 %bf.lshr139, 3
  %98 = ptrtoint ptr %link130 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %bf.clear140, ptr %link130, align 4
  %99 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %id.i, align 4
  %101 = ptrtoint ptr %head131 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %head131, align 4
  %call144 = call i32 @nvbios_exec(ptr noundef nonnull %init) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %init) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end126, %do.end104, %do.body91.cleanup_crit_edge, %do.end68, %do.body56.cleanup_crit_edge, %do.end.i, %do.body.i.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #7
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %iedt) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %iedtrs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_disp_super_2_2(ptr nocapture noundef readonly %disp, ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hz = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hz, align 4
  %div = udiv i32 %1, 1000
  %disp2 = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 1
  %2 = ptrtoint ptr %disp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disp2, align 4
  %debug = getelementptr inbounds %struct.nvkm_disp, ptr %3, i32 0, i32 1, i32 1, i32 5
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ugt i32 %5, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_disp, ptr %3, i32 0, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_disp, ptr %3, i32 0, i32 1, i32 1, i32 4
  %id = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 2
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.8, ptr noundef %name, i32 noundef %11) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %disp2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %disp2, align 4
  %ior1.i = getelementptr inbounds %struct.nvkm_disp, ptr %13, i32 0, i32 3
  %id.i = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %ior1.i, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %14 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ior1.i
  br i1 %cmp.not.i, label %do.body24.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %head5.i = getelementptr i8, ptr %.pn.i, i32 32
  %15 = ptrtoint ptr %head5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load.i = load i32, ptr %head5.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 15
  %bf.clear.i = and i32 %bf.lshr.i, 255
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i, align 4
  %shl.i = shl nuw i32 1, %17
  %and.i = and i32 %bf.clear.i, %shl.i
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %do.body.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

do.body.i:                                        ; preds = %for.body.i
  %head5.i.le = getelementptr i8, ptr %.pn.i, i32 32
  %ior.0.le.i = getelementptr i8, ptr %.pn.i, i32 -24
  %debug.i = getelementptr inbounds %struct.nvkm_disp, ptr %13, i32 0, i32 1, i32 1, i32 5
  %18 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp8.i = icmp ugt i32 %19, 3
  br i1 %cmp8.i, label %do.end.i, label %do.body.i.nv50_disp_super_ior_asy.exit_crit_edge

do.body.i.nv50_disp_super_ior_asy.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_disp_super_ior_asy.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %device.i = getelementptr inbounds %struct.nvkm_disp, ptr %13, i32 0, i32 1, i32 1, i32 1
  %20 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_disp, ptr %13, i32 0, i32 1, i32 1, i32 4
  %name12.i = getelementptr i8, ptr %.pn.i, i32 -8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.40, ptr noundef %name.i, i32 noundef %17, ptr noundef %name12.i) #11
  br label %nv50_disp_super_ior_asy.exit

do.body24.i:                                      ; preds = %for.cond.i
  %debug31.i = getelementptr inbounds %struct.nvkm_disp, ptr %13, i32 0, i32 1, i32 1, i32 5
  %24 = ptrtoint ptr %debug31.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %debug31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp32.i = icmp ugt i32 %25, 3
  br i1 %cmp32.i, label %do.end36.i, label %do.body24.i.cleanup_crit_edge

do.body24.i.cleanup_crit_edge:                    ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end36.i:                                       ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  %device37.i = getelementptr inbounds %struct.nvkm_disp, ptr %13, i32 0, i32 1, i32 1, i32 1
  %26 = ptrtoint ptr %device37.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device37.i, align 4
  %dev38.i = getelementptr inbounds %struct.nvkm_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dev38.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev38.i, align 8
  %name39.i = getelementptr inbounds %struct.nvkm_disp, ptr %13, i32 0, i32 1, i32 1, i32 4
  %30 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.43, ptr noundef %name39.i, i32 noundef %31) #11
  br label %cleanup

nv50_disp_super_ior_asy.exit:                     ; preds = %do.end.i, %do.body.i.nv50_disp_super_ior_asy.exit_crit_edge
  %tobool.not = icmp eq ptr %ior.0.le.i, null
  br i1 %tobool.not, label %nv50_disp_super_ior_asy.exit.cleanup_crit_edge, label %if.end9

nv50_disp_super_ior_asy.exit.cleanup_crit_edge:   ; preds = %nv50_disp_super_ior_asy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %nv50_disp_super_ior_asy.exit
  %type = getelementptr i8, ptr %.pn.i, i32 -16
  %32 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp10 = icmp eq i32 %33, 1
  br i1 %cmp10, label %land.lhs.true, label %if.end9.if.end24_crit_edge

if.end9.if.end24_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end9
  %34 = ptrtoint ptr %head5.i.le to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load = load i32, ptr %head5.i.le, align 4
  %35 = and i32 %bf.load, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %35)
  %cmp12 = icmp eq i32 %35, 100663296
  br i1 %cmp12, label %if.then13, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %lvdsconf = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 9, i32 2
  %36 = ptrtoint ptr %lvdsconf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lvdsconf, align 4
  %and = and i32 %37, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  %conv = select i1 %tobool14.not, i8 18, i8 24
  %or = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 5, i32 9
  %38 = ptrtoint ptr %or to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv, ptr %or, align 4
  %39 = ptrtoint ptr %lvdsconf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lvdsconf, align 4
  %and18 = and i32 %40, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %cond20 = select i1 %tobool19.not, i32 8388608, i32 25165824
  %41 = ptrtoint ptr %head5.i.le to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load22 = load i32, ptr %head5.i.le, align 4
  %bf.clear23 = and i32 %bf.load22, -25165825
  %bf.set = or i32 %cond20, %bf.clear23
  store i32 %bf.set, ptr %head5.i.le, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then13, %land.lhs.true.if.end24_crit_edge, %if.end9.if.end24_crit_edge
  %asy25 = getelementptr i8, ptr %.pn.i, i32 24
  %42 = ptrtoint ptr %asy25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %asy25, align 4
  %tobool27.not = icmp eq ptr %43, null
  br i1 %tobool27.not, label %if.end24.if.end34_crit_edge, label %land.lhs.true28

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

land.lhs.true28:                                  ; preds = %if.end24
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %acquire = getelementptr inbounds %struct.nvkm_outp_func, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %acquire, align 4
  %tobool29.not = icmp eq ptr %47, null
  br i1 %tobool29.not, label %land.lhs.true28.if.end34_crit_edge, label %if.then30

land.lhs.true28.if.end34_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then30:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = tail call i32 %47(ptr noundef nonnull %43) #7
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %land.lhs.true28.if.end34_crit_edge, %if.end24.if.end34_crit_edge
  tail call fastcc void @nv50_disp_super_ied_on(ptr noundef %head, ptr noundef nonnull %ior.0.le.i, i32 noundef 0, i32 noundef %div)
  %48 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %head, align 4
  %rgclk = getelementptr inbounds %struct.nvkm_head_func, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %rgclk to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rgclk, align 4
  %rgdiv = getelementptr i8, ptr %.pn.i, i32 28
  %52 = ptrtoint ptr %rgdiv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rgdiv, align 4
  tail call void %51(ptr noundef %head, i32 noundef %53) #7
  %54 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp38 = icmp eq i32 %55, 1
  br i1 %cmp38, label %land.lhs.true40, label %if.end34.if.end49_crit_edge

if.end34.if.end49_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

land.lhs.true40:                                  ; preds = %if.end34
  %56 = ptrtoint ptr %head5.i.le to i32
  call void @__asan_load4_noabort(i32 %56)
  %bf.load43 = load i32, ptr %head5.i.le, align 4
  %57 = and i32 %bf.load43, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %57)
  %cmp46 = icmp eq i32 %57, 134217728
  br i1 %cmp46, label %if.then48, label %land.lhs.true40.if.end49_crit_edge

land.lhs.true40.if.end49_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then48:                                        ; preds = %land.lhs.true40
  %58 = ptrtoint ptr %disp2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %disp2, align 4
  %asy.i = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 5
  %60 = ptrtoint ptr %hz to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hz, align 4
  %div.i = udiv i32 %61, 1000
  %bw.i = getelementptr i8, ptr %.pn.i, i32 39
  %62 = ptrtoint ptr %bw.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %bw.i, align 1
  %conv.i = zext i8 %63 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 27000
  %hblanke.i = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 5, i32 2
  %64 = ptrtoint ptr %hblanke.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %hblanke.i, align 4
  %conv3.i = zext i16 %65 to i32
  %66 = ptrtoint ptr %asy.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %asy.i, align 4
  %conv5.i = zext i16 %67 to i32
  %hblanks.i = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 5, i32 3
  %68 = ptrtoint ptr %hblanks.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %hblanks.i, align 2
  %conv7.i = zext i16 %69 to i32
  %add.i = add nsw i32 %conv3.i, -7
  %sub.i = add nsw i32 %add.i, %conv5.i
  %sub8.i = sub nsw i32 %sub.i, %conv7.i
  %conv9.i = sext i32 %sub8.i to i64
  %conv10.i = zext i32 %mul.i to i64
  %mul11.i = mul nsw i64 %conv9.i, %conv10.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul11.i)
  %cmp181.i = icmp ult i64 %mul11.i, 4294967296
  br i1 %cmp181.i, label %if.then185.i, label %if.else191.i, !prof !148

if.then185.i:                                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  %conv186.i = trunc i64 %mul11.i to i32
  %div189.i = udiv i32 %conv186.i, %div.i
  %conv190.i = zext i32 %div189.i to i64
  br label %if.end195.i

if.else191.i:                                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  %70 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div.i, i64 %mul11.i) #12, !srcloc !149
  %asmresult1.i.i = extractvalue { i64, i64 } %70, 1
  br label %if.end195.i

if.end195.i:                                      ; preds = %if.else191.i, %if.then185.i
  %h.0.i = phi i64 [ %conv190.i, %if.then185.i ], [ %asmresult1.i.i, %if.else191.i ]
  %ef.i = getelementptr i8, ptr %.pn.i, i32 37
  %71 = ptrtoint ptr %ef.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ef.i, align 1, !range !150
  %narrow.i = mul nuw nsw i8 %72, 3
  %nr.i = getelementptr i8, ptr %.pn.i, i32 38
  %73 = ptrtoint ptr %nr.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %nr.i, align 2
  %75 = udiv i8 12, %74
  %narrow1685.i = add nuw nsw i8 %75, %narrow.i
  %76 = zext i8 %narrow1685.i to i64
  %sub207.i = sub i64 %h.0.i, %76
  %vblanks.i = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 5, i32 7
  %77 = ptrtoint ptr %vblanks.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %vblanks.i, align 2
  %conv209.i = zext i16 %78 to i32
  %vblanke.i = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 5, i32 6
  %79 = ptrtoint ptr %vblanke.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %vblanke.i, align 4
  %conv211.i = zext i16 %80 to i32
  %sub212.i = add nsw i32 %conv209.i, -25
  %sub213.i = sub nsw i32 %sub212.i, %conv211.i
  %conv214.i = sext i32 %sub213.i to i64
  %mul216.i = mul nsw i64 %conv214.i, %conv10.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul216.i)
  %cmp418.i = icmp ult i64 %mul216.i, 4294967296
  br i1 %cmp418.i, label %if.then426.i, label %if.else432.i, !prof !148

if.then426.i:                                     ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv427.i = trunc i64 %mul216.i to i32
  %div430.i = udiv i32 %conv427.i, %div.i
  %conv431.i = zext i32 %div430.i to i64
  br label %if.end436.i

if.else432.i:                                     ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #9
  %81 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div.i, i64 %mul216.i) #12, !srcloc !149
  %asmresult1.i1721.i = extractvalue { i64, i64 } %81, 1
  br label %if.end436.i

if.end436.i:                                      ; preds = %if.else432.i, %if.then426.i
  %v.0.i = phi i64 [ %conv431.i, %if.then426.i ], [ %asmresult1.i1721.i, %if.else432.i ]
  %82 = udiv i8 36, %74
  %narrow1686.i = add nuw nsw i8 %82, 3
  %83 = zext i8 %narrow1686.i to i64
  %84 = xor i64 %83, -1
  %sub445.i = add i64 %v.0.i, %84
  %85 = ptrtoint ptr %ior.0.le.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ior.0.le.i, align 4
  %audio_sym.i = getelementptr inbounds %struct.nvkm_ior_func, ptr %86, i32 0, i32 8, i32 7
  %87 = ptrtoint ptr %audio_sym.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %audio_sym.i, align 4
  %89 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %id.i, align 4
  %conv447.i = trunc i64 %sub207.i to i16
  %conv448.i = trunc i64 %sub445.i to i32
  tail call void %88(ptr noundef nonnull %ior.0.le.i, i32 noundef %90, i16 noundef zeroext %conv447.i, i32 noundef %conv448.i) #7
  %or450.i = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 5, i32 9
  %91 = ptrtoint ptr %or450.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %or450.i, align 4
  %conv451.i = zext i8 %92 to i32
  %mul452.i = mul nuw nsw i32 %div.i, %conv451.i
  %div4531687.i = lshr i32 %mul452.i, 3
  %93 = ptrtoint ptr %nr.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %nr.i, align 2
  %conv456.i = zext i8 %94 to i32
  %div457.i = udiv i32 %div4531687.i, %conv456.i
  %conv458.i = zext i32 %div457.i to i64
  %mul459.i = mul nuw nsw i64 %conv458.i, 100000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul459.i)
  %cmp661.i = icmp ult i64 %mul459.i, 4294967296
  br i1 %cmp661.i, label %if.then669.i, label %if.else675.i, !prof !148

if.then669.i:                                     ; preds = %if.end436.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv670.i = trunc i64 %mul459.i to i32
  %div673.i = udiv i32 %conv670.i, %mul.i
  %conv674.i = zext i32 %div673.i to i64
  br label %if.end679.i

if.else675.i:                                     ; preds = %if.end436.i
  call void @__sanitizer_cov_trace_pc() #9
  %95 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul.i, i64 %mul459.i) #12, !srcloc !149
  %asmresult1.i1746.i = extractvalue { i64, i64 } %95, 1
  br label %if.end679.i

if.end679.i:                                      ; preds = %if.else675.i, %if.then669.i
  %link_ratio.0.i = phi i64 [ %conv674.i, %if.then669.i ], [ %asmresult1.i1746.i, %if.else675.i ]
  %96 = ptrtoint ptr %ior.0.le.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ior.0.le.i, align 4
  %activesym.i = getelementptr inbounds %struct.nvkm_ior_func, ptr %97, i32 0, i32 8, i32 8
  %98 = ptrtoint ptr %activesym.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %activesym.i, align 4
  %tobool683.not.not.i = icmp eq ptr %99, null
  br i1 %tobool683.not.not.i, label %if.end679.i.if.end1208.i_crit_edge, label %for.body.lr.ph.i

if.end679.i.if.end1208.i_crit_edge:               ; preds = %if.end679.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1208.i

for.body.lr.ph.i:                                 ; preds = %if.end679.i
  %100 = trunc i64 %link_ratio.0.i to i32
  br label %for.body.i92

for.body.i92:                                     ; preds = %for.inc.i.for.body.i92_crit_edge, %for.body.lr.ph.i
  %bestTU.01897.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %bestTU.1.i, %for.inc.i.for.body.i92_crit_edge ]
  %bestVTUi.01896.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %bestVTUi.1.i, %for.inc.i.for.body.i92_crit_edge ]
  %bestVTUf.01895.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %bestVTUf.1.i, %for.inc.i.for.body.i92_crit_edge ]
  %bestVTUa.01894.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %bestVTUa.1.i, %for.inc.i.for.body.i92_crit_edge ]
  %TU.01892.i = phi i32 [ 64, %for.body.lr.ph.i ], [ %dec738.i, %for.inc.i.for.body.i92_crit_edge ]
  %best_diff.01891.i = phi i32 [ 6400000, %for.body.lr.ph.i ], [ %best_diff.1.i, %for.inc.i.for.body.i92_crit_edge ]
  %conv688.i = mul i32 %TU.01892.i, %100
  %div689.i = udiv i32 %conv688.i, 100000
  %mul690.i = mul nuw i32 %div689.i, 100000
  %sub691.i = sub nuw i32 %conv688.i, %mul690.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv688.i, i32 %mul690.i)
  %tobool692.not.i = icmp eq i32 %conv688.i, %mul690.i
  br i1 %tobool692.not.i, label %if.end727.thread.i, label %if.then693.i

if.then693.i:                                     ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_const_cmp4(i32 49999, i32 %sub691.i)
  %cmp694.i = icmp ugt i32 %sub691.i, 49999
  br i1 %cmp694.i, label %if.then696.i, label %if.else713.i

if.then696.i:                                     ; preds = %if.then693.i
  %sub697.i = sub i32 100000, %sub691.i
  %div698.i = udiv i32 100000, %sub697.i
  %mul699.i = mul i32 %div698.i, %sub691.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %mul699.i)
  %tobool701.not.i = icmp ne i32 %mul699.i, 100000
  %inc.i = zext i1 %tobool701.not.i to i32
  %spec.select.i = add nuw nsw i32 %div698.i, %inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %spec.select.i)
  %cmp704.i = icmp ult i32 %spec.select.i, 16
  br i1 %cmp704.i, label %if.then706.i, label %if.then696.i.if.end727.i_crit_edge

if.then696.i.if.end727.i_crit_edge:               ; preds = %if.then696.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end727.i

if.then706.i:                                     ; preds = %if.then696.i
  call void @__sanitizer_cov_trace_pc() #9
  %div707.i = udiv i32 100000, %spec.select.i
  %sub708.i = sub nuw nsw i32 100000, %div707.i
  br label %if.end727.i

if.else713.i:                                     ; preds = %if.then693.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6666, i32 %sub691.i)
  %cmp716.i = icmp ugt i32 %sub691.i, 6666
  br i1 %cmp716.i, label %cond.true718.i, label %if.else713.i.cond.end720.i_crit_edge

if.else713.i.cond.end720.i_crit_edge:             ; preds = %if.else713.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end720.i

cond.true718.i:                                   ; preds = %if.else713.i
  call void @__sanitizer_cov_trace_pc() #9
  %div714.i = udiv i32 100000, %sub691.i
  br label %cond.end720.i

cond.end720.i:                                    ; preds = %cond.true718.i, %if.else713.i.cond.end720.i_crit_edge
  %cond721.i = phi i32 [ %div714.i, %cond.true718.i ], [ 15, %if.else713.i.cond.end720.i_crit_edge ]
  %div722.i = udiv i32 100000, %cond721.i
  br label %if.end727.i

if.end727.i:                                      ; preds = %cond.end720.i, %if.then706.i, %if.then696.i.if.end727.i_crit_edge
  %VTUa.0.i = phi i32 [ 1, %if.then706.i ], [ 0, %cond.end720.i ], [ 0, %if.then696.i.if.end727.i_crit_edge ]
  %VTUf.1.i = phi i32 [ %spec.select.i, %if.then706.i ], [ %cond721.i, %cond.end720.i ], [ 1, %if.then696.i.if.end727.i_crit_edge ]
  %sub708.pn.i = phi i32 [ %sub708.i, %if.then706.i ], [ %div722.i, %cond.end720.i ], [ 100000, %if.then696.i.if.end727.i_crit_edge ]
  %calc.0.i = sub i32 %mul690.i, %conv688.i
  %sub725.i = add i32 %sub708.pn.i, %calc.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub725.i, i32 %best_diff.01891.i)
  %cmp728.i = icmp ult i32 %sub725.i, %best_diff.01891.i
  br i1 %cmp728.i, label %if.then730.i, label %if.end727.i.for.inc.i_crit_edge

if.end727.i.for.inc.i_crit_edge:                  ; preds = %if.end727.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end727.thread.i:                               ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_diff.01891.i)
  %cmp7281839.not.i = icmp eq i32 %best_diff.01891.i, 0
  br i1 %cmp7281839.not.i, label %if.end727.thread.i.for.inc.i_crit_edge, label %if.end753.loopexit.i

if.end727.thread.i.for.inc.i_crit_edge:           ; preds = %if.end727.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then730.i:                                     ; preds = %if.end727.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub725.i)
  %cmp731.i = icmp eq i32 %sub725.i, 0
  br i1 %cmp731.i, label %if.then730.i.if.end753.i_crit_edge, label %if.then730.i.for.inc.i_crit_edge

if.then730.i.for.inc.i_crit_edge:                 ; preds = %if.then730.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then730.i.if.end753.i_crit_edge:               ; preds = %if.then730.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end753.i

for.inc.i:                                        ; preds = %if.then730.i.for.inc.i_crit_edge, %if.end727.thread.i.for.inc.i_crit_edge, %if.end727.i.for.inc.i_crit_edge
  %best_diff.1.i = phi i32 [ %sub725.i, %if.then730.i.for.inc.i_crit_edge ], [ %best_diff.01891.i, %if.end727.i.for.inc.i_crit_edge ], [ 0, %if.end727.thread.i.for.inc.i_crit_edge ]
  %bestVTUa.1.i = phi i32 [ %VTUa.0.i, %if.then730.i.for.inc.i_crit_edge ], [ %bestVTUa.01894.i, %if.end727.i.for.inc.i_crit_edge ], [ %bestVTUa.01894.i, %if.end727.thread.i.for.inc.i_crit_edge ]
  %bestVTUf.1.i = phi i32 [ %VTUf.1.i, %if.then730.i.for.inc.i_crit_edge ], [ %bestVTUf.01895.i, %if.end727.i.for.inc.i_crit_edge ], [ %bestVTUf.01895.i, %if.end727.thread.i.for.inc.i_crit_edge ]
  %bestVTUi.1.i = phi i32 [ %div689.i, %if.then730.i.for.inc.i_crit_edge ], [ %bestVTUi.01896.i, %if.end727.i.for.inc.i_crit_edge ], [ %bestVTUi.01896.i, %if.end727.thread.i.for.inc.i_crit_edge ]
  %bestTU.1.i = phi i32 [ %TU.01892.i, %if.then730.i.for.inc.i_crit_edge ], [ %bestTU.01897.i, %if.end727.i.for.inc.i_crit_edge ], [ %bestTU.01897.i, %if.end727.thread.i.for.inc.i_crit_edge ]
  %dec738.i = add nsw i32 %TU.01892.i, -1
  %cmp684.i = icmp ugt i32 %dec738.i, 31
  br i1 %cmp684.i, label %for.inc.i.for.body.i92_crit_edge, label %for.end.i

for.inc.i.for.body.i92_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i92

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bestTU.1.i)
  %tobool744.not.i = icmp eq i32 %bestTU.1.i, 0
  br i1 %tobool744.not.i, label %do.body.i94, label %for.end.i.if.end753.i_crit_edge

for.end.i.if.end753.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end753.i

do.body.i94:                                      ; preds = %for.end.i
  %debug.i93 = getelementptr inbounds %struct.nvkm_disp, ptr %59, i32 0, i32 1, i32 1, i32 5
  %101 = ptrtoint ptr %debug.i93 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %debug.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp746.not.i = icmp eq i32 %102, 0
  br i1 %cmp746.not.i, label %do.body.i94.if.end49_crit_edge, label %do.end.i98

do.body.i94.if.end49_crit_edge:                   ; preds = %do.body.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

do.end.i98:                                       ; preds = %do.body.i94
  call void @__sanitizer_cov_trace_pc() #9
  %device.i95 = getelementptr inbounds %struct.nvkm_disp, ptr %59, i32 0, i32 1, i32 1, i32 1
  %103 = ptrtoint ptr %device.i95 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %device.i95, align 4
  %dev.i96 = getelementptr inbounds %struct.nvkm_device, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %dev.i96 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev.i96, align 8
  %name.i97 = getelementptr inbounds %struct.nvkm_disp, ptr %59, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.55, ptr noundef %name.i97) #11
  br label %if.end49

if.end753.loopexit.i:                             ; preds = %if.end727.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec.le.i = add nsw i32 %div689.i, -1
  br label %if.end753.i

if.end753.i:                                      ; preds = %if.end753.loopexit.i, %for.end.i.if.end753.i_crit_edge, %if.then730.i.if.end753.i_crit_edge
  %bestVTUa.318611873.i = phi i32 [ %bestVTUa.1.i, %for.end.i.if.end753.i_crit_edge ], [ 0, %if.end753.loopexit.i ], [ %VTUa.0.i, %if.then730.i.if.end753.i_crit_edge ]
  %bestVTUf.318621872.i = phi i32 [ %bestVTUf.1.i, %for.end.i.if.end753.i_crit_edge ], [ 1, %if.end753.loopexit.i ], [ %VTUf.1.i, %if.then730.i.if.end753.i_crit_edge ]
  %bestVTUi.318631871.i = phi i32 [ %bestVTUi.1.i, %for.end.i.if.end753.i_crit_edge ], [ %dec.le.i, %if.end753.loopexit.i ], [ %div689.i, %if.then730.i.if.end753.i_crit_edge ]
  %bestTU.318641870.i = phi i32 [ %bestTU.1.i, %for.end.i.if.end753.i_crit_edge ], [ %TU.01892.i, %if.end753.loopexit.i ], [ %TU.01892.i, %if.then730.i.if.end753.i_crit_edge ]
  %107 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %id.i, align 4
  %conv758.i = trunc i32 %bestTU.318641870.i to i8
  %conv759.i = trunc i32 %bestVTUa.318611873.i to i8
  %conv760.i = trunc i32 %bestVTUf.318621872.i to i8
  %conv761.i = trunc i32 %bestVTUi.318631871.i to i8
  tail call void %99(ptr noundef nonnull %ior.0.le.i, i32 noundef %108, i8 noundef zeroext %conv758.i, i8 noundef zeroext %conv759.i, i8 noundef zeroext %conv760.i, i8 noundef zeroext %conv761.i) #7
  br label %if.end1208.i

if.end1208.i:                                     ; preds = %if.end753.i, %if.end679.i.if.end1208.i_crit_edge
  %bestTU.4.i = phi i32 [ %bestTU.318641870.i, %if.end753.i ], [ 64, %if.end679.i.if.end1208.i_crit_edge ]
  %sub764.i = sub i64 100000, %link_ratio.0.i
  %conv765.i = sext i32 %bestTU.4.i to i64
  %mul766.i = mul i64 %sub764.i, %link_ratio.0.i
  %mul767.i = mul i64 %mul766.i, %conv765.i
  %109 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %mul767.i, i32 0) #12, !srcloc !151
  %asmresult.i1749.i = extractvalue { i64, i32 } %109, 0
  %asmresult4.i1750.i = extractvalue { i64, i32 } %109, 1
  %110 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %mul767.i, i64 %asmresult.i1749.i, i32 %asmresult4.i1750.i) #12, !srcloc !152
  %asmresult10.i1754.i = extractvalue { i64, i32 } %110, 0
  %unk.0.i = lshr i64 %asmresult10.i1754.i, 16
  %111 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %unk.0.i, i32 0) #12, !srcloc !151
  %asmresult.i1759.i = extractvalue { i64, i32 } %111, 0
  %asmresult4.i1760.i = extractvalue { i64, i32 } %111, 1
  %112 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %unk.0.i, i64 %asmresult.i1759.i, i32 %asmresult4.i1760.i) #12, !srcloc !152
  %asmresult10.i1764.i = extractvalue { i64, i32 } %112, 0
  %extract1694.i = lshr i64 %asmresult10.i1764.i, 16
  %extract.t1695.i = trunc i64 %extract1694.i to i8
  %113 = ptrtoint ptr %ior.0.le.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ior.0.le.i, align 4
  %watermark.i = getelementptr inbounds %struct.nvkm_ior_func, ptr %114, i32 0, i32 8, i32 9
  %115 = ptrtoint ptr %watermark.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %watermark.i, align 4
  %117 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %id.i, align 4
  %conv1214.i = add i8 %extract.t1695.i, 6
  tail call void %116(ptr noundef nonnull %ior.0.le.i, i32 noundef %118, i8 noundef zeroext %conv1214.i) #7
  br label %if.end49

if.end49:                                         ; preds = %if.end1208.i, %do.end.i98, %do.body.i94.if.end49_crit_edge, %land.lhs.true40.if.end49_crit_edge, %if.end34.if.end49_crit_edge
  %119 = ptrtoint ptr %ior.0.le.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ior.0.le.i, align 4
  %clock = getelementptr inbounds %struct.nvkm_ior_func, ptr %120, i32 0, i32 4
  %121 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %clock, align 4
  tail call void %122(ptr noundef nonnull %ior.0.le.i) #7
  %123 = ptrtoint ptr %ior.0.le.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ior.0.le.i, align 4
  %war_2 = getelementptr inbounds %struct.nvkm_ior_func, ptr %124, i32 0, i32 5
  %125 = ptrtoint ptr %war_2 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %war_2, align 4
  %tobool52.not = icmp eq ptr %126, null
  br i1 %tobool52.not, label %if.end49.cleanup_crit_edge, label %if.then53

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %126(ptr noundef nonnull %ior.0.le.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %if.end49.cleanup_crit_edge, %nv50_disp_super_ior_asy.exit.cleanup_crit_edge, %do.end36.i, %do.body24.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_disp_super_2_1(ptr nocapture noundef readonly %disp, ptr nocapture noundef readonly %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %devinit1 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %devinit1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devinit1, align 4
  %hz = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 5, i32 8
  %4 = ptrtoint ptr %hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hz, align 4
  %div = udiv i32 %5, 1000
  %disp3 = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 1
  %6 = ptrtoint ptr %disp3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disp3, align 4
  %debug = getelementptr inbounds %struct.nvkm_disp, ptr %7, i32 0, i32 1, i32 1, i32 5
  %8 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp ugt i32 %9, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %device7 = getelementptr inbounds %struct.nvkm_disp, ptr %7, i32 0, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %device7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device7, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_disp, ptr %7, i32 0, i32 1, i32 1, i32 4
  %id = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 2
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %15, i32 noundef %div) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %5)
  %16 = icmp ult i32 %5, 1000
  br i1 %16, label %if.end.if.end14_crit_edge, label %if.then12

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %id13 = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 2
  %17 = ptrtoint ptr %id13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id13, align 4
  %add = add i32 %18, 128
  %call = tail call i32 @nvkm_devinit_pll_set(ptr noundef %3, i32 noundef %add, i32 noundef %div) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_devinit_pll_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_disp_super_2_0(ptr nocapture readnone %disp, ptr nocapture noundef readonly %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %disp2 = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %disp2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp2, align 4
  %debug = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 5
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 4
  %id = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 2
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %9) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %disp2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disp2, align 4
  %ior1.i = getelementptr inbounds %struct.nvkm_disp, ptr %11, i32 0, i32 3
  %id.i = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %ior1.i, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ior1.i
  br i1 %cmp.not.i, label %do.body24.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %head5.i = getelementptr i8, ptr %.pn.i, i32 20
  %13 = ptrtoint ptr %head5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load.i = load i32, ptr %head5.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 15
  %bf.clear.i = and i32 %bf.lshr.i, 255
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i, align 4
  %shl.i = shl nuw i32 1, %15
  %and.i = and i32 %bf.clear.i, %shl.i
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %do.body.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

do.body.i:                                        ; preds = %for.body.i
  %head5.i.le = getelementptr i8, ptr %.pn.i, i32 20
  %ior.0.le.i = getelementptr i8, ptr %.pn.i, i32 -24
  %debug.i = getelementptr inbounds %struct.nvkm_disp, ptr %11, i32 0, i32 1, i32 1, i32 5
  %16 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp8.i = icmp ugt i32 %17, 3
  br i1 %cmp8.i, label %do.end.i, label %do.body.i.nv50_disp_super_ior_arm.exit_crit_edge

do.body.i.nv50_disp_super_ior_arm.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_disp_super_ior_arm.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %device.i = getelementptr inbounds %struct.nvkm_disp, ptr %11, i32 0, i32 1, i32 1, i32 1
  %18 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_disp, ptr %11, i32 0, i32 1, i32 1, i32 4
  %name12.i = getelementptr i8, ptr %.pn.i, i32 -8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.58, ptr noundef %name.i, i32 noundef %15, ptr noundef %name12.i) #11
  br label %nv50_disp_super_ior_arm.exit

do.body24.i:                                      ; preds = %for.cond.i
  %debug31.i = getelementptr inbounds %struct.nvkm_disp, ptr %11, i32 0, i32 1, i32 1, i32 5
  %22 = ptrtoint ptr %debug31.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp32.i = icmp ugt i32 %23, 3
  br i1 %cmp32.i, label %do.end36.i, label %do.body24.i.cleanup_crit_edge

do.body24.i.cleanup_crit_edge:                    ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end36.i:                                       ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  %device37.i = getelementptr inbounds %struct.nvkm_disp, ptr %11, i32 0, i32 1, i32 1, i32 1
  %24 = ptrtoint ptr %device37.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device37.i, align 4
  %dev38.i = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dev38.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev38.i, align 8
  %name39.i = getelementptr inbounds %struct.nvkm_disp, ptr %11, i32 0, i32 1, i32 1, i32 4
  %28 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.61, ptr noundef %name39.i, i32 noundef %29) #11
  br label %cleanup

nv50_disp_super_ior_arm.exit:                     ; preds = %do.end.i, %do.body.i.nv50_disp_super_ior_arm.exit_crit_edge
  %tobool.not = icmp eq ptr %ior.0.le.i, null
  br i1 %tobool.not, label %nv50_disp_super_ior_arm.exit.cleanup_crit_edge, label %if.end9

nv50_disp_super_ior_arm.exit.cleanup_crit_edge:   ; preds = %nv50_disp_super_ior_arm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %nv50_disp_super_ior_arm.exit
  tail call fastcc void @nv50_disp_super_ied_off(ptr noundef %head, ptr noundef nonnull %ior.0.le.i, i32 noundef 2)
  %30 = ptrtoint ptr %head5.i.le to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load = load i32, ptr %head5.i.le, align 4
  %bf.lshr = lshr i32 %bf.load, 15
  %bf.clear = and i32 %bf.lshr, 255
  %31 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id.i, align 4
  %shl = shl nuw i32 1, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear, i32 %shl)
  %cmp12 = icmp eq i32 %bf.clear, %shl
  br i1 %cmp12, label %if.then13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %if.end9
  %arm = getelementptr i8, ptr %.pn.i, i32 12
  %33 = ptrtoint ptr %arm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arm, align 4
  %tobool16.not = icmp eq ptr %34, null
  br i1 %tobool16.not, label %if.then13.cleanup_crit_edge, label %land.lhs.true

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then13
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %disable = getelementptr inbounds %struct.nvkm_outp_func, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %disable, align 4
  %tobool17.not = icmp eq ptr %38, null
  br i1 %tobool17.not, label %land.lhs.true.cleanup_crit_edge, label %if.then18

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %38(ptr noundef nonnull %34, ptr noundef nonnull %ior.0.le.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %land.lhs.true.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %nv50_disp_super_ior_arm.exit.cleanup_crit_edge, %do.end36.i, %do.body24.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv50_disp_super_ied_off(ptr nocapture noundef readonly %head, ptr noundef %ior, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  %iedt = alloca %struct.nvbios_outp, align 2
  %ver = alloca i8, align 1
  %hdr = alloca i8, align 1
  %cnt = alloca i8, align 1
  %len = alloca i8, align 1
  %init = alloca %struct.nvbios_init, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arm = getelementptr inbounds %struct.nvkm_ior, ptr %ior, i32 0, i32 7
  %0 = ptrtoint ptr %arm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arm, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %iedt) #7
  %2 = call ptr @memset(ptr %iedt, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #7
  %3 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %ver, align 1, !annotation !146
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr) #7
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %hdr, align 1, !annotation !146
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt) #7
  %5 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %cnt, align 1, !annotation !146
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #7
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %len, align 1, !annotation !146
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  %disp = getelementptr inbounds %struct.nvkm_ior, ptr %ior, i32 0, i32 1
  %7 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disp, align 4
  %debug = getelementptr inbounds %struct.nvkm_disp, ptr %8, i32 0, i32 1, i32 1, i32 5
  %9 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp = icmp ugt i32 %10, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_disp, ptr %8, i32 0, i32 1, i32 1, i32 1
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_disp, ptr %8, i32 0, i32 1, i32 1, i32 4
  %name5 = getelementptr inbounds %struct.nvkm_ior, ptr %ior, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.63, ptr noundef %name, ptr noundef %name5) #11
  br label %cleanup

if.end11:                                         ; preds = %entry
  %disp.i = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 1
  %15 = ptrtoint ptr %disp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %disp.i, align 4
  %device.i = getelementptr inbounds %struct.nvkm_disp, ptr %16, i32 0, i32 1, i32 1, i32 1
  %17 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device.i, align 4
  %bios1.i = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 21
  %19 = ptrtoint ptr %bios1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bios1.i, align 8
  %link.i = getelementptr inbounds %struct.nvkm_outp, ptr %1, i32 0, i32 3, i32 10
  %21 = ptrtoint ptr %link.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %link.i, align 2
  %23 = tail call i8 @llvm.cttz.i8(i8 %22, i1 true) #7, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %iszero.i = icmp eq i8 %22, 0
  %24 = add nuw nsw i8 %23, 1
  %conv2.i = select i1 %iszero.i, i8 0, i8 %24
  %hasht.i = getelementptr inbounds %struct.nvkm_outp, ptr %1, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %hasht.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %hasht.i, align 4
  %id.i = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 2
  %27 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id.i, align 4
  %shl.i = shl i32 256, %28
  %conv4.i = zext i8 %conv2.i to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 6
  %or7.i = getelementptr inbounds %struct.nvkm_outp, ptr %1, i32 0, i32 3, i32 9
  %29 = ptrtoint ptr %or7.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %or7.i, align 1
  %conv8.i = zext i8 %30 to i32
  %or.i = or i32 %shl.i, %conv8.i
  %or9.i = or i32 %or.i, %shl5.i
  %conv10.i = trunc i32 %or9.i to i16
  %call.i = call zeroext i16 @nvbios_outp_match(ptr noundef %20, i16 noundef zeroext %26, i16 noundef zeroext %conv10.i, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef nonnull %len, ptr noundef nonnull %iedt) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %nv50_disp_super_iedt.exit

do.body.i:                                        ; preds = %if.end11
  %disp13.i = getelementptr inbounds %struct.nvkm_outp, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %disp13.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %disp13.i, align 4
  %debug.i = getelementptr inbounds %struct.nvkm_disp, ptr %32, i32 0, i32 1, i32 1, i32 5
  %33 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp.i = icmp ugt i32 %34, 3
  br i1 %cmp.i, label %do.end.i, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %device19.i = getelementptr inbounds %struct.nvkm_disp, ptr %32, i32 0, i32 1, i32 1, i32 1
  %35 = ptrtoint ptr %device19.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device19.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_disp, ptr %32, i32 0, i32 1, i32 1, i32 4
  %index.i = getelementptr inbounds %struct.nvkm_outp, ptr %1, i32 0, i32 2
  %39 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index.i, align 4
  %41 = ptrtoint ptr %hasht.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %hasht.i, align 4
  %conv22.i = zext i16 %42 to i32
  %hashm.i = getelementptr inbounds %struct.nvkm_outp, ptr %1, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %hashm.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %hashm.i, align 2
  %conv24.i = zext i16 %44 to i32
  %conv25.i = zext i16 %26 to i32
  %conv26.i = and i32 %or9.i, 65535
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.53, ptr noundef %name.i, i32 noundef %40, i32 noundef %conv22.i, i32 noundef %conv24.i, i32 noundef %conv25.i, i32 noundef %conv26.i) #11
  br label %cleanup

nv50_disp_super_iedt.exit:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %init) #7
  %45 = getelementptr inbounds i8, ptr %init, i32 24
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %45, align 4, !annotation !146
  %47 = ptrtoint ptr %disp.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %disp.i, align 4
  %subdev18 = getelementptr inbounds %struct.nvkm_disp, ptr %48, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %subdev18, ptr %init, align 4
  %offset = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 1
  %arrayidx = getelementptr %struct.nvbios_outp, ptr %iedt, i32 0, i32 2, i32 %id
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %51 to i32
  %52 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv, ptr %offset, align 4
  %outp19 = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 2
  %or = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 3
  %link = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 4
  %head20 = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 5
  %execute = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 6
  %53 = ptrtoint ptr %execute to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %execute, align 4
  %nested = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 7
  %info = getelementptr inbounds %struct.nvkm_outp, ptr %1, i32 0, i32 3
  %54 = call ptr @memset(ptr %nested, i32 0, i32 16)
  %55 = ptrtoint ptr %outp19 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %info, ptr %outp19, align 4
  %id22 = getelementptr inbounds %struct.nvkm_ior, ptr %ior, i32 0, i32 3
  %56 = ptrtoint ptr %id22 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %id22, align 4
  %58 = ptrtoint ptr %or to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %or, align 4
  %link25 = getelementptr inbounds %struct.nvkm_ior, ptr %ior, i32 0, i32 7, i32 2
  %59 = ptrtoint ptr %link25 to i32
  call void @__asan_load4_noabort(i32 %59)
  %bf.load = load i32, ptr %link25, align 4
  %bf.lshr = lshr i32 %bf.load, 23
  %bf.clear = and i32 %bf.lshr, 3
  %60 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %bf.clear, ptr %link, align 4
  %61 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %id.i, align 4
  %63 = ptrtoint ptr %head20 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %head20, align 4
  %call29 = call i32 @nvbios_exec(ptr noundef nonnull %init) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %init) #7
  br label %cleanup

cleanup:                                          ; preds = %nv50_disp_super_iedt.exit, %do.end.i, %do.body.i.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #7
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %iedt) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_disp_super_1_0(ptr nocapture readnone %disp, ptr nocapture noundef readonly %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %disp2 = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %disp2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp2, align 4
  %debug = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 5
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 4
  %id = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 2
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.14, ptr noundef %name, i32 noundef %9) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %disp2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disp2, align 4
  %ior1.i = getelementptr inbounds %struct.nvkm_disp, ptr %11, i32 0, i32 3
  %id.i = getelementptr inbounds %struct.nvkm_head, ptr %head, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %ior1.i, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ior1.i
  br i1 %cmp.not.i, label %do.body24.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %head5.i = getelementptr i8, ptr %.pn.i, i32 20
  %13 = ptrtoint ptr %head5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load.i = load i32, ptr %head5.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 15
  %bf.clear.i = and i32 %bf.lshr.i, 255
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i, align 4
  %shl.i = shl nuw i32 1, %15
  %and.i = and i32 %bf.clear.i, %shl.i
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %do.body.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

do.body.i:                                        ; preds = %for.body.i
  %ior.0.le.i = getelementptr i8, ptr %.pn.i, i32 -24
  %debug.i = getelementptr inbounds %struct.nvkm_disp, ptr %11, i32 0, i32 1, i32 1, i32 5
  %16 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp8.i = icmp ugt i32 %17, 3
  br i1 %cmp8.i, label %do.end.i, label %do.body.i.nv50_disp_super_ior_arm.exit_crit_edge

do.body.i.nv50_disp_super_ior_arm.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_disp_super_ior_arm.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %device.i = getelementptr inbounds %struct.nvkm_disp, ptr %11, i32 0, i32 1, i32 1, i32 1
  %18 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_disp, ptr %11, i32 0, i32 1, i32 1, i32 4
  %name12.i = getelementptr i8, ptr %.pn.i, i32 -8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.58, ptr noundef %name.i, i32 noundef %15, ptr noundef %name12.i) #11
  br label %nv50_disp_super_ior_arm.exit

do.body24.i:                                      ; preds = %for.cond.i
  %debug31.i = getelementptr inbounds %struct.nvkm_disp, ptr %11, i32 0, i32 1, i32 1, i32 5
  %22 = ptrtoint ptr %debug31.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp32.i = icmp ugt i32 %23, 3
  br i1 %cmp32.i, label %do.end36.i, label %do.body24.i.cleanup_crit_edge

do.body24.i.cleanup_crit_edge:                    ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end36.i:                                       ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  %device37.i = getelementptr inbounds %struct.nvkm_disp, ptr %11, i32 0, i32 1, i32 1, i32 1
  %24 = ptrtoint ptr %device37.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device37.i, align 4
  %dev38.i = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dev38.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev38.i, align 8
  %name39.i = getelementptr inbounds %struct.nvkm_disp, ptr %11, i32 0, i32 1, i32 1, i32 4
  %28 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.61, ptr noundef %name39.i, i32 noundef %29) #11
  br label %cleanup

nv50_disp_super_ior_arm.exit:                     ; preds = %do.end.i, %do.body.i.nv50_disp_super_ior_arm.exit_crit_edge
  %tobool.not = icmp eq ptr %ior.0.le.i, null
  br i1 %tobool.not, label %nv50_disp_super_ior_arm.exit.cleanup_crit_edge, label %if.end9

nv50_disp_super_ior_arm.exit.cleanup_crit_edge:   ; preds = %nv50_disp_super_ior_arm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %nv50_disp_super_ior_arm.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @nv50_disp_super_ied_off(ptr noundef %head, ptr noundef nonnull %ior.0.le.i, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %nv50_disp_super_ior_arm.exit.cleanup_crit_edge, %do.end36.i, %do.body24.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_disp_super_1(ptr noundef readonly %disp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %head1 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %head1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn56 = load ptr, ptr %head1, align 4
  %cmp.not57 = icmp eq ptr %.pn56, %head1
  br i1 %cmp.not57, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn58 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn56, %entry.for.body_crit_edge ]
  %head.0 = getelementptr i8, ptr %.pn58, i32 -12
  %1 = ptrtoint ptr %head.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head.0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %arm = getelementptr i8, ptr %.pn58, i32 8
  tail call void %4(ptr noundef %head.0, ptr noundef %arm) #7
  %5 = ptrtoint ptr %head.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.0, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %asy = getelementptr i8, ptr %.pn58, i32 32
  tail call void %8(ptr noundef %head.0, ptr noundef %asy) #7
  %9 = ptrtoint ptr %.pn58 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn58, align 4
  %cmp.not = icmp eq ptr %.pn, %head1
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %ior14 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %ior14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn5559 = load ptr, ptr %ior14, align 4
  %cmp22.not60 = icmp eq ptr %.pn5559, %ior14
  br i1 %cmp22.not60, label %for.end.for.end37_crit_edge, label %for.end.for.body24_crit_edge

for.end.for.body24_crit_edge:                     ; preds = %for.end
  br label %for.body24

for.end.for.end37_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end37

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %for.end.for.body24_crit_edge
  %.pn5561 = phi ptr [ %.pn55, %for.body24.for.body24_crit_edge ], [ %.pn5559, %for.end.for.body24_crit_edge ]
  %ior.0 = getelementptr i8, ptr %.pn5561, i32 -24
  %11 = ptrtoint ptr %ior.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ior.0, align 4
  %state26 = getelementptr inbounds %struct.nvkm_ior_func, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %state26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state26, align 4
  %arm27 = getelementptr i8, ptr %.pn5561, i32 12
  tail call void %14(ptr noundef %ior.0, ptr noundef %arm27) #7
  %15 = ptrtoint ptr %ior.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ior.0, align 4
  %state29 = getelementptr inbounds %struct.nvkm_ior_func, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %state29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state29, align 4
  %asy30 = getelementptr i8, ptr %.pn5561, i32 24
  tail call void %18(ptr noundef %ior.0, ptr noundef %asy30) #7
  %19 = ptrtoint ptr %.pn5561 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn55 = load ptr, ptr %.pn5561, align 4
  %cmp22.not = icmp eq ptr %.pn55, %ior14
  br i1 %cmp22.not, label %for.body24.for.end37_crit_edge, label %for.body24.for.body24_crit_edge

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body24

for.body24.for.end37_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end37

for.end37:                                        ; preds = %for.body24.for.end37_crit_edge, %for.end.for.end37_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_disp_super(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %add.ptr3 = getelementptr i8, ptr %3, i32 6357040
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #7, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  %debug = getelementptr i8, ptr %work, i32 -472
  %5 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp = icmp ugt i32 %6, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %name = getelementptr i8, ptr %work, i32 -488
  %super7 = getelementptr i8, ptr %work, i32 44
  %11 = ptrtoint ptr %super7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %super7, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.16, ptr noundef %name, i32 noundef %12, i32 noundef %4) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %super10 = getelementptr i8, ptr %work, i32 44
  %13 = ptrtoint ptr %super10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %super10, align 4
  %and = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end
  %chan = getelementptr i8, ptr %work, i32 216
  %15 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chan, align 4
  tail call void @nv50_disp_chan_mthd(ptr noundef %16, i32 noundef 4) #7
  %head1.i = getelementptr i8, ptr %work, i32 -308
  %17 = ptrtoint ptr %head1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn56.i = load ptr, ptr %head1.i, align 4
  %cmp.not57.i = icmp eq ptr %.pn56.i, %head1.i
  br i1 %cmp.not57.i, label %if.then11.for.end.i_crit_edge, label %if.then11.for.body.i_crit_edge

if.then11.for.body.i_crit_edge:                   ; preds = %if.then11
  br label %for.body.i

if.then11.for.end.i_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then11.for.body.i_crit_edge
  %.pn58.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn56.i, %if.then11.for.body.i_crit_edge ]
  %head.0.i = getelementptr i8, ptr %.pn58.i, i32 -12
  %18 = ptrtoint ptr %head.0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.0.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %arm.i = getelementptr i8, ptr %.pn58.i, i32 8
  tail call void %21(ptr noundef %head.0.i, ptr noundef %arm.i) #7
  %22 = ptrtoint ptr %head.0.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.0.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %asy.i = getelementptr i8, ptr %.pn58.i, i32 32
  tail call void %25(ptr noundef %head.0.i, ptr noundef %asy.i) #7
  %26 = ptrtoint ptr %.pn58.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn.i = load ptr, ptr %.pn58.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %head1.i
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then11.for.end.i_crit_edge
  %ior14.i = getelementptr i8, ptr %work, i32 -300
  %27 = ptrtoint ptr %ior14.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn5559.i = load ptr, ptr %ior14.i, align 4
  %cmp22.not60.i = icmp eq ptr %.pn5559.i, %ior14.i
  br i1 %cmp22.not60.i, label %for.end.i.nv50_disp_super_1.exit_crit_edge, label %for.end.i.for.body24.i_crit_edge

for.end.i.for.body24.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body24.i

for.end.i.nv50_disp_super_1.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_disp_super_1.exit

for.body24.i:                                     ; preds = %for.body24.i.for.body24.i_crit_edge, %for.end.i.for.body24.i_crit_edge
  %.pn5561.i = phi ptr [ %.pn55.i, %for.body24.i.for.body24.i_crit_edge ], [ %.pn5559.i, %for.end.i.for.body24.i_crit_edge ]
  %ior.0.i = getelementptr i8, ptr %.pn5561.i, i32 -24
  %28 = ptrtoint ptr %ior.0.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ior.0.i, align 4
  %state26.i = getelementptr inbounds %struct.nvkm_ior_func, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %state26.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %state26.i, align 4
  %arm27.i = getelementptr i8, ptr %.pn5561.i, i32 12
  tail call void %31(ptr noundef %ior.0.i, ptr noundef %arm27.i) #7
  %32 = ptrtoint ptr %ior.0.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ior.0.i, align 4
  %state29.i = getelementptr inbounds %struct.nvkm_ior_func, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %state29.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %state29.i, align 4
  %asy30.i = getelementptr i8, ptr %.pn5561.i, i32 24
  tail call void %35(ptr noundef %ior.0.i, ptr noundef %asy30.i) #7
  %36 = ptrtoint ptr %.pn5561.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn55.i = load ptr, ptr %.pn5561.i, align 4
  %cmp22.not.i = icmp eq ptr %.pn55.i, %ior14.i
  br i1 %cmp22.not.i, label %for.body24.i.nv50_disp_super_1.exit_crit_edge, label %for.body24.i.for.body24.i_crit_edge

for.body24.i.for.body24.i_crit_edge:              ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body24.i

for.body24.i.nv50_disp_super_1.exit_crit_edge:    ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_disp_super_1.exit

nv50_disp_super_1.exit:                           ; preds = %for.body24.i.nv50_disp_super_1.exit_crit_edge, %for.end.i.nv50_disp_super_1.exit_crit_edge
  %37 = ptrtoint ptr %head1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn213216 = load ptr, ptr %head1.i, align 4
  %cmp20.not218 = icmp eq ptr %.pn213216, %head1.i
  br i1 %cmp20.not218, label %nv50_disp_super_1.exit.do.body153_crit_edge, label %nv50_disp_super_1.exit.for.body_crit_edge

nv50_disp_super_1.exit.for.body_crit_edge:        ; preds = %nv50_disp_super_1.exit
  br label %for.body

nv50_disp_super_1.exit.do.body153_crit_edge:      ; preds = %nv50_disp_super_1.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body153

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %nv50_disp_super_1.exit.for.body_crit_edge
  %.pn213219 = phi ptr [ %.pn213, %for.inc.for.body_crit_edge ], [ %.pn213216, %nv50_disp_super_1.exit.for.body_crit_edge ]
  %head.0220 = getelementptr i8, ptr %.pn213219, i32 -12
  %id = getelementptr i8, ptr %.pn213219, i32 -4
  %38 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id, align 4
  %shl = shl i32 32, %39
  %and21 = and i32 %shl, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %for.body.for.inc_crit_edge, label %if.end24

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end24:                                         ; preds = %for.body
  %shl26 = shl i32 128, %39
  %and27 = and i32 %shl26, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end24.for.inc_crit_edge, label %if.end30

if.end24.for.inc_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nv50_disp_super_1_0(ptr undef, ptr noundef %head.0220)
  br label %for.inc

for.inc:                                          ; preds = %if.end30, %if.end24.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %40 = ptrtoint ptr %.pn213219 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn213 = load ptr, ptr %.pn213219, align 4
  %cmp20.not = icmp eq ptr %.pn213, %head1.i
  br i1 %cmp20.not, label %for.inc.do.body153_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.body153_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body153

if.else:                                          ; preds = %if.end
  %and37 = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.else119, label %if.then39

if.then39:                                        ; preds = %if.else
  %head42 = getelementptr i8, ptr %work, i32 -308
  %41 = ptrtoint ptr %head42 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn210221 = load ptr, ptr %head42, align 4
  %cmp50.not223 = icmp eq ptr %.pn210221, %head42
  br i1 %cmp50.not223, label %if.then39.for.end65_crit_edge, label %if.then39.for.body52_crit_edge

if.then39.for.body52_crit_edge:                   ; preds = %if.then39
  br label %for.body52

if.then39.for.end65_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end65

for.body52:                                       ; preds = %for.inc59.for.body52_crit_edge, %if.then39.for.body52_crit_edge
  %.pn210224 = phi ptr [ %.pn210, %for.inc59.for.body52_crit_edge ], [ %.pn210221, %if.then39.for.body52_crit_edge ]
  %id53 = getelementptr i8, ptr %.pn210224, i32 -4
  %42 = ptrtoint ptr %id53 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id53, align 4
  %shl54 = shl i32 128, %43
  %and55 = and i32 %shl54, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %for.body52.for.inc59_crit_edge, label %if.end58

for.body52.for.inc59_crit_edge:                   ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc59

if.end58:                                         ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #9
  %head.1225 = getelementptr i8, ptr %.pn210224, i32 -12
  tail call void @nv50_disp_super_2_0(ptr undef, ptr noundef %head.1225)
  br label %for.inc59

for.inc59:                                        ; preds = %if.end58, %for.body52.for.inc59_crit_edge
  %44 = ptrtoint ptr %.pn210224 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn210 = load ptr, ptr %.pn210224, align 4
  %cmp50.not = icmp eq ptr %.pn210, %head42
  br i1 %cmp50.not, label %for.inc59.for.end65_crit_edge, label %for.inc59.for.body52_crit_edge

for.inc59.for.body52_crit_edge:                   ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body52

for.inc59.for.end65_crit_edge:                    ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end65

for.end65:                                        ; preds = %for.inc59.for.end65_crit_edge, %if.then39.for.end65_crit_edge
  tail call void @nvkm_outp_route(ptr noundef %base) #7
  %45 = ptrtoint ptr %head42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn211226 = load ptr, ptr %head42, align 4
  %cmp77.not227 = icmp eq ptr %.pn211226, %head42
  br i1 %cmp77.not227, label %for.end65.for.cond99.preheader_crit_edge, label %for.end65.for.body79_crit_edge

for.end65.for.body79_crit_edge:                   ; preds = %for.end65
  br label %for.body79

for.end65.for.cond99.preheader_crit_edge:         ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond99.preheader

for.cond99.preheader:                             ; preds = %for.inc86.for.cond99.preheader_crit_edge, %for.end65.for.cond99.preheader_crit_edge
  %46 = ptrtoint ptr %head42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn212229 = load ptr, ptr %head42, align 4
  %cmp103.not231 = icmp eq ptr %.pn212229, %head42
  br i1 %cmp103.not231, label %for.cond99.preheader.do.body153_crit_edge, label %for.cond99.preheader.for.body105_crit_edge

for.cond99.preheader.for.body105_crit_edge:       ; preds = %for.cond99.preheader
  br label %for.body105

for.cond99.preheader.do.body153_crit_edge:        ; preds = %for.cond99.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body153

for.body79:                                       ; preds = %for.inc86.for.body79_crit_edge, %for.end65.for.body79_crit_edge
  %.pn211228 = phi ptr [ %.pn211, %for.inc86.for.body79_crit_edge ], [ %.pn211226, %for.end65.for.body79_crit_edge ]
  %id80 = getelementptr i8, ptr %.pn211228, i32 -4
  %47 = ptrtoint ptr %id80 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id80, align 4
  %shl81 = shl i32 512, %48
  %and82 = and i32 %shl81, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %for.body79.for.inc86_crit_edge, label %if.end85

for.body79.for.inc86_crit_edge:                   ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc86

if.end85:                                         ; preds = %for.body79
  %49 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device2, align 4
  %devinit1.i = getelementptr inbounds %struct.nvkm_device, ptr %50, i32 0, i32 22
  %51 = ptrtoint ptr %devinit1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %devinit1.i, align 4
  %hz.i = getelementptr i8, ptr %.pn211228, i32 48
  %53 = ptrtoint ptr %hz.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hz.i, align 4
  %div.i = udiv i32 %54, 1000
  %disp3.i = getelementptr i8, ptr %.pn211228, i32 -8
  %55 = ptrtoint ptr %disp3.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %disp3.i, align 4
  %debug.i = getelementptr inbounds %struct.nvkm_disp, ptr %56, i32 0, i32 1, i32 1, i32 5
  %57 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %58)
  %cmp.i = icmp ugt i32 %58, 3
  br i1 %cmp.i, label %do.end.i, label %if.end85.if.end.i_crit_edge

if.end85.if.end.i_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %device7.i = getelementptr inbounds %struct.nvkm_disp, ptr %56, i32 0, i32 1, i32 1, i32 1
  %59 = ptrtoint ptr %device7.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device7.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_disp, ptr %56, i32 0, i32 1, i32 1, i32 4
  %63 = ptrtoint ptr %id80 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %id80, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %62, ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef %64, i32 noundef %div.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end85.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %54)
  %65 = icmp ult i32 %54, 1000
  br i1 %65, label %if.end.i.for.inc86_crit_edge, label %if.then12.i

if.end.i.for.inc86_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc86

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %id80 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %id80, align 4
  %add.i = add i32 %67, 128
  %call.i = tail call i32 @nvkm_devinit_pll_set(ptr noundef %52, i32 noundef %add.i, i32 noundef %div.i) #7
  br label %for.inc86

for.inc86:                                        ; preds = %if.then12.i, %if.end.i.for.inc86_crit_edge, %for.body79.for.inc86_crit_edge
  %68 = ptrtoint ptr %.pn211228 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn211 = load ptr, ptr %.pn211228, align 4
  %cmp77.not = icmp eq ptr %.pn211, %head42
  br i1 %cmp77.not, label %for.inc86.for.cond99.preheader_crit_edge, label %for.inc86.for.body79_crit_edge

for.inc86.for.body79_crit_edge:                   ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body79

for.inc86.for.cond99.preheader_crit_edge:         ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond99.preheader

for.body105:                                      ; preds = %for.inc112.for.body105_crit_edge, %for.cond99.preheader.for.body105_crit_edge
  %.pn212232 = phi ptr [ %.pn212, %for.inc112.for.body105_crit_edge ], [ %.pn212229, %for.cond99.preheader.for.body105_crit_edge ]
  %id106 = getelementptr i8, ptr %.pn212232, i32 -4
  %69 = ptrtoint ptr %id106 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %id106, align 4
  %shl107 = shl i32 128, %70
  %and108 = and i32 %shl107, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %for.body105.for.inc112_crit_edge, label %if.end111

for.body105.for.inc112_crit_edge:                 ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc112

if.end111:                                        ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #9
  %head.3233 = getelementptr i8, ptr %.pn212232, i32 -12
  tail call void @nv50_disp_super_2_2(ptr noundef %add.ptr, ptr noundef %head.3233)
  br label %for.inc112

for.inc112:                                       ; preds = %if.end111, %for.body105.for.inc112_crit_edge
  %71 = ptrtoint ptr %.pn212232 to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn212 = load ptr, ptr %.pn212232, align 4
  %cmp103.not = icmp eq ptr %.pn212, %head42
  br i1 %cmp103.not, label %for.inc112.do.body153_crit_edge, label %for.inc112.for.body105_crit_edge

for.inc112.for.body105_crit_edge:                 ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body105

for.inc112.do.body153_crit_edge:                  ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body153

if.else119:                                       ; preds = %if.else
  %and121 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.else119.do.body153_crit_edge, label %if.then123

if.else119.do.body153_crit_edge:                  ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body153

if.then123:                                       ; preds = %if.else119
  %head126 = getelementptr i8, ptr %work, i32 -308
  %72 = ptrtoint ptr %head126 to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn234 = load ptr, ptr %head126, align 4
  %cmp134.not236 = icmp eq ptr %.pn234, %head126
  br i1 %cmp134.not236, label %if.then123.do.body153_crit_edge, label %if.then123.for.body136_crit_edge

if.then123.for.body136_crit_edge:                 ; preds = %if.then123
  br label %for.body136

if.then123.do.body153_crit_edge:                  ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body153

for.body136:                                      ; preds = %for.inc143.for.body136_crit_edge, %if.then123.for.body136_crit_edge
  %.pn237 = phi ptr [ %.pn, %for.inc143.for.body136_crit_edge ], [ %.pn234, %if.then123.for.body136_crit_edge ]
  %id137 = getelementptr i8, ptr %.pn237, i32 -4
  %73 = ptrtoint ptr %id137 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %id137, align 4
  %shl138 = shl i32 128, %74
  %and139 = and i32 %shl138, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %for.body136.for.inc143_crit_edge, label %if.end142

for.body136.for.inc143_crit_edge:                 ; preds = %for.body136
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc143

if.end142:                                        ; preds = %for.body136
  call void @__sanitizer_cov_trace_pc() #9
  %head.4238 = getelementptr i8, ptr %.pn237, i32 -12
  tail call void @nv50_disp_super_3_0(ptr undef, ptr noundef %head.4238)
  br label %for.inc143

for.inc143:                                       ; preds = %if.end142, %for.body136.for.inc143_crit_edge
  %75 = ptrtoint ptr %.pn237 to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pn = load ptr, ptr %.pn237, align 4
  %cmp134.not = icmp eq ptr %.pn, %head126
  br i1 %cmp134.not, label %for.inc143.do.body153_crit_edge, label %for.inc143.for.body136_crit_edge

for.inc143.for.body136_crit_edge:                 ; preds = %for.inc143
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body136

for.inc143.do.body153_crit_edge:                  ; preds = %for.inc143
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body153

do.body153:                                       ; preds = %for.inc143.do.body153_crit_edge, %if.then123.do.body153_crit_edge, %if.else119.do.body153_crit_edge, %for.inc112.do.body153_crit_edge, %for.cond99.preheader.do.body153_crit_edge, %for.inc.do.body153_crit_edge, %nv50_disp_super_1.exit.do.body153_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void @arm_heavy_mb() #7
  %76 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pri, align 4
  %add.ptr157 = getelementptr i8, ptr %77, i32 6357040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr157, i32 -2147483648) #7, !srcloc !156
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_chan_mthd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_outp_route(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_disp_intr(ptr noundef %disp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1
  %device1 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 6357024
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 6357028
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  %and70 = and i32 %4, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool.not71 = icmp eq i32 %and70, 0
  br i1 %tobool.not71, label %entry.while.cond10.preheader_crit_edge, label %while.body.lr.ph

entry.while.cond10.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond10.preheader

while.body.lr.ph:                                 ; preds = %entry
  %debug.i = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 5
  %name.i = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 4
  br label %while.body

while.cond10.preheader:                           ; preds = %nv50_disp_intr_error.exit.while.cond10.preheader_crit_edge, %entry.while.cond10.preheader_crit_edge
  %intr0.0.lcssa = phi i32 [ %4, %entry.while.cond10.preheader_crit_edge ], [ %and9, %nv50_disp_intr_error.exit.while.cond10.preheader_crit_edge ]
  %and1174 = and i32 %intr0.0.lcssa, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1174)
  %tobool12.not75 = icmp eq i32 %and1174, 0
  br i1 %tobool12.not75, label %while.cond10.preheader.while.end20_crit_edge, label %while.cond10.preheader.while.body13_crit_edge

while.cond10.preheader.while.body13_crit_edge:    ; preds = %while.cond10.preheader
  br label %while.body13

while.cond10.preheader.while.end20_crit_edge:     ; preds = %while.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end20

while.body:                                       ; preds = %nv50_disp_intr_error.exit.while.body_crit_edge, %while.body.lr.ph
  %and73 = phi i32 [ %and70, %while.body.lr.ph ], [ %and, %nv50_disp_intr_error.exit.while.body_crit_edge ]
  %intr0.072 = phi i32 [ %4, %while.body.lr.ph ], [ %and9, %nv50_disp_intr_error.exit.while.body_crit_edge ]
  %8 = tail call i32 @llvm.cttz.i32(i32 %and73, i1 true) #7, !range !159
  %sub = add nsw i32 %8, -16
  %9 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device1, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri.i, align 4
  %mul.i = shl nsw i32 %sub, 3
  %add.i = add nsw i32 %mul.i, 6357124
  %add.ptr.i = getelementptr i8, ptr %12, i32 %add.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  %14 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri.i, align 4
  %add6.i = add nsw i32 %mul.i, 6357120
  %add.ptr7.i = getelementptr i8, ptr %15, i32 %add6.i
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #7, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  %and.i = lshr i32 %16, 16
  %shr.i = and i32 %and.i, 255
  %and10.i = lshr i32 %16, 12
  %shr11.i = and i32 %and10.i, 7
  %and12.i = and i32 %16, 4092
  %call13.i = tail call ptr @nvkm_enum_find(ptr noundef nonnull @nv50_disp_intr_error_type, i32 noundef %shr11.i) #7
  %call14.i = tail call ptr @nvkm_enum_find(ptr noundef nonnull @nv50_disp_intr_error_code, i32 noundef %shr.i) #7
  %17 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i = icmp eq i32 %18, 0
  br i1 %cmp.not.i, label %while.body.if.end.i_crit_edge, label %do.end.i

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %while.body
  %19 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device1, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 8
  %tobool.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool.not.i, label %do.end.i.cond.end.i_crit_edge, label %cond.true.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name17.i = getelementptr inbounds %struct.nvkm_enum, ptr %call13.i, i32 0, i32 1
  %23 = ptrtoint ptr %name17.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name17.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %24, %cond.true.i ], [ @.str.67, %do.end.i.cond.end.i_crit_edge ]
  %tobool18.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool18.not.i, label %cond.end.i.cond.end22.i_crit_edge, label %cond.true19.i

cond.end.i.cond.end22.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end22.i

cond.true19.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name20.i = getelementptr inbounds %struct.nvkm_enum, ptr %call14.i, i32 0, i32 1
  %25 = ptrtoint ptr %name20.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name20.i, align 4
  br label %cond.end22.i

cond.end22.i:                                     ; preds = %cond.true19.i, %cond.end.i.cond.end22.i_crit_edge
  %cond23.i = phi ptr [ %26, %cond.true19.i ], [ @.str.67, %cond.end.i.cond.end22.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.65, ptr noundef %name.i, i32 noundef %shr11.i, ptr noundef %cond.i, i32 noundef %shr.i, ptr noundef %cond23.i, i32 noundef %sub, i32 noundef %and12.i, i32 noundef %13) #11
  br label %if.end.i

if.end.i:                                         ; preds = %cond.end22.i, %while.body.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 81, i32 %sub)
  %cmp26.i = icmp ult i32 %sub, 81
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and12.i)
  %cond41.i = icmp eq i32 %and12.i, 128
  %or.cond.i = select i1 %cmp26.i, i1 %cond41.i, i1 false
  br i1 %or.cond.i, label %sw.bb.i, label %if.end.i.nv50_disp_intr_error.exit_crit_edge

if.end.i.nv50_disp_intr_error.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_disp_intr_error.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.nv50_disp, ptr %disp, i32 0, i32 13, i32 %sub
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  tail call void @nv50_disp_chan_mthd(ptr noundef %28, i32 noundef 1) #7
  br label %nv50_disp_intr_error.exit

nv50_disp_intr_error.exit:                        ; preds = %sw.bb.i, %if.end.i.nv50_disp_intr_error.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  tail call void @arm_heavy_mb() #7
  %shl.i = shl i32 65536, %sub
  %29 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri.i, align 4
  %add.ptr33.i = getelementptr i8, ptr %30, i32 6357024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 %shl.i) #7, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri.i, align 4
  %add.ptr40.i = getelementptr i8, ptr %32, i32 %add6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 -1879048192) #7, !srcloc !156
  %neg = xor i32 %shl.i, -1
  %and9 = and i32 %intr0.072, %neg
  %and = and i32 %and9, 2031616
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %nv50_disp_intr_error.exit.while.cond10.preheader_crit_edge, label %nv50_disp_intr_error.exit.while.body_crit_edge

nv50_disp_intr_error.exit.while.body_crit_edge:   ; preds = %nv50_disp_intr_error.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

nv50_disp_intr_error.exit.while.cond10.preheader_crit_edge: ; preds = %nv50_disp_intr_error.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond10.preheader

while.body13:                                     ; preds = %while.body13.while.body13_crit_edge, %while.cond10.preheader.while.body13_crit_edge
  %and1177 = phi i32 [ %and11, %while.body13.while.body13_crit_edge ], [ %and1174, %while.cond10.preheader.while.body13_crit_edge ]
  %intr0.176 = phi i32 [ %and19, %while.body13.while.body13_crit_edge ], [ %intr0.0.lcssa, %while.cond10.preheader.while.body13_crit_edge ]
  %33 = tail call i32 @llvm.cttz.i32(i32 %and1177, i1 true) #7, !range !159
  tail call void @nv50_disp_chan_uevent_send(ptr noundef %disp, i32 noundef %33) #7
  %shl17 = shl nuw i32 1, %33
  %neg18 = xor i32 %shl17, -1
  %and19 = and i32 %intr0.176, %neg18
  %and11 = and i32 %and19, 31
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %while.body13.while.end20_crit_edge, label %while.body13.while.body13_crit_edge

while.body13.while.body13_crit_edge:              ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body13

while.body13.while.end20_crit_edge:               ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end20

while.end20:                                      ; preds = %while.body13.while.end20_crit_edge, %while.cond10.preheader.while.end20_crit_edge
  %and21 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %while.end20.if.end_crit_edge, label %if.then

while.end20.if.end_crit_edge:                     ; preds = %while.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %while.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nvkm_disp_vblank(ptr noundef %base, i32 noundef 0) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pri, align 4
  %add.ptr25 = getelementptr i8, ptr %35, i32 6357028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 4) #7, !srcloc !156
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end20.if.end_crit_edge
  %and26 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end.if.end35_crit_edge, label %if.then28

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nvkm_disp_vblank(ptr noundef %base, i32 noundef 1) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pri, align 4
  %add.ptr34 = getelementptr i8, ptr %37, i32 6357028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 8) #7, !srcloc !156
  br label %if.end35

if.end35:                                         ; preds = %if.then28, %if.end.if.end35_crit_edge
  %and36 = and i32 %7, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end47_crit_edge, label %if.then38

if.end35.if.end47_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %super = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 4
  %38 = ptrtoint ptr %super to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and36, ptr %super, align 4
  %wq = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 2
  %39 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wq, align 4
  %supervisor = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 3
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %40, ptr noundef %supervisor) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  tail call void @arm_heavy_mb() #7
  %41 = ptrtoint ptr %super to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %super, align 4
  %43 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pri, align 4
  %add.ptr46 = getelementptr i8, ptr %44, i32 6357028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %42) #7, !srcloc !156
  br label %if.end47

if.end47:                                         ; preds = %if.then38, %if.end35.if.end47_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_disp_chan_uevent_send(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_disp_vblank(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_disp_fini(ptr nocapture noundef readonly %disp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  tail call void @arm_heavy_mb() #7
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 6357028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 6357024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #7, !srcloc !156
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_disp_init(ptr noundef readonly %disp) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 6373380
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 6357380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %4) #7, !srcloc !156
  %head6 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %head6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn298 = load ptr, ptr %head6, align 4
  %cmp.not299 = icmp eq ptr %.pn298, %head6
  br i1 %cmp.not299, label %entry.for.cond78.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond78.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond78.preheader

for.cond78.preheader:                             ; preds = %for.body.for.cond78.preheader_crit_edge, %entry.for.cond78.preheader_crit_edge
  %nr = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp79301 = icmp sgt i32 %9, 0
  br i1 %cmp79301, label %for.cond78.preheader.for.body80_crit_edge, label %for.cond78.preheader.for.cond97.preheader_crit_edge

for.cond78.preheader.for.cond97.preheader_crit_edge: ; preds = %for.cond78.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond97.preheader

for.cond78.preheader.for.body80_crit_edge:        ; preds = %for.cond78.preheader
  br label %for.body80

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn300 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn298, %entry.for.body_crit_edge ]
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %id = getelementptr i8, ptr %.pn300, i32 -4
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %mul = shl i32 %13, 11
  %add = add i32 %mul, 6381824
  %add.ptr14 = getelementptr i8, ptr %11, i32 %add
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #7, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  %mul22 = shl i32 %18, 4
  %add23 = add i32 %mul22, 6357392
  %add.ptr24 = getelementptr i8, ptr %16, i32 %add23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %14) #7, !srcloc !156
  %19 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri, align 4
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  %mul28 = shl i32 %22, 11
  %add29 = add i32 %mul28, 6381828
  %add.ptr30 = getelementptr i8, ptr %20, i32 %add29
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #7, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri, align 4
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id, align 4
  %mul38 = shl i32 %27, 4
  %add39 = add i32 %mul38, 6357396
  %add.ptr40 = getelementptr i8, ptr %25, i32 %add39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %23) #7, !srcloc !156
  %28 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri, align 4
  %30 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id, align 4
  %mul44 = shl i32 %31, 11
  %add45 = add i32 %mul44, 6381832
  %add.ptr46 = getelementptr i8, ptr %29, i32 %add45
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #7, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  tail call void @arm_heavy_mb() #7
  %33 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pri, align 4
  %35 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id, align 4
  %mul54 = shl i32 %36, 4
  %add55 = add i32 %mul54, 6357400
  %add.ptr56 = getelementptr i8, ptr %34, i32 %add55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %32) #7, !srcloc !156
  %37 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri, align 4
  %39 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id, align 4
  %mul60 = shl i32 %40, 11
  %add61 = add i32 %mul60, 6381836
  %add.ptr62 = getelementptr i8, ptr %38, i32 %add61
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #7, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  tail call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri, align 4
  %44 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %id, align 4
  %mul70 = shl i32 %45, 4
  %add71 = add i32 %mul70, 6357404
  %add.ptr72 = getelementptr i8, ptr %43, i32 %add71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 %41) #7, !srcloc !156
  %46 = ptrtoint ptr %.pn300 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn = load ptr, ptr %.pn300, align 4
  %cmp.not = icmp eq ptr %.pn, %head6
  br i1 %cmp.not, label %for.body.for.cond78.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.cond78.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond78.preheader

for.cond97.preheader:                             ; preds = %for.body80.for.cond97.preheader_crit_edge, %for.cond78.preheader.for.cond97.preheader_crit_edge
  %nr98 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 9, i32 1
  %47 = ptrtoint ptr %nr98 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp99303 = icmp sgt i32 %48, 0
  br i1 %cmp99303, label %for.cond97.preheader.for.body100_crit_edge, label %for.cond97.preheader.for.cond118.preheader_crit_edge

for.cond97.preheader.for.cond118.preheader_crit_edge: ; preds = %for.cond97.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond118.preheader

for.cond97.preheader.for.body100_crit_edge:       ; preds = %for.cond97.preheader
  br label %for.body100

for.body80:                                       ; preds = %for.body80.for.body80_crit_edge, %for.cond78.preheader.for.body80_crit_edge
  %i.0302 = phi i32 [ %inc, %for.body80.for.body80_crit_edge ], [ 0, %for.cond78.preheader.for.body80_crit_edge ]
  %49 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pri, align 4
  %mul83 = shl i32 %i.0302, 11
  %add84 = add i32 %mul83, 6397952
  %add.ptr85 = getelementptr i8, ptr %50, i32 %add84
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #7, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  tail call void @arm_heavy_mb() #7
  %52 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pri, align 4
  %mul92 = shl i32 %i.0302, 2
  %add93 = add i32 %mul92, 6357456
  %add.ptr94 = getelementptr i8, ptr %53, i32 %add93
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %51) #7, !srcloc !156
  %inc = add nuw nsw i32 %i.0302, 1
  %54 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr, align 4
  %cmp79 = icmp slt i32 %inc, %55
  br i1 %cmp79, label %for.body80.for.body80_crit_edge, label %for.body80.for.cond97.preheader_crit_edge

for.body80.for.cond97.preheader_crit_edge:        ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond97.preheader

for.body80.for.body80_crit_edge:                  ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body80

for.cond118.preheader:                            ; preds = %for.body100.for.cond118.preheader_crit_edge, %for.cond97.preheader.for.cond118.preheader_crit_edge
  %nr119 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 10, i32 1
  %56 = ptrtoint ptr %nr119 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nr119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp120305 = icmp sgt i32 %57, 0
  br i1 %cmp120305, label %for.cond118.preheader.for.body121_crit_edge, label %for.cond118.preheader.for.end138_crit_edge

for.cond118.preheader.for.end138_crit_edge:       ; preds = %for.cond118.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end138

for.cond118.preheader.for.body121_crit_edge:      ; preds = %for.cond118.preheader
  br label %for.body121

for.body100:                                      ; preds = %for.body100.for.body100_crit_edge, %for.cond97.preheader.for.body100_crit_edge
  %i.1304 = phi i32 [ %inc116, %for.body100.for.body100_crit_edge ], [ 0, %for.cond97.preheader.for.body100_crit_edge ]
  %58 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pri, align 4
  %mul103 = shl i32 %i.1304, 11
  %add104 = add i32 %mul103, 6406144
  %add.ptr105 = getelementptr i8, ptr %59, i32 %add104
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #7, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !182
  tail call void @arm_heavy_mb() #7
  %61 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pri, align 4
  %mul112 = shl i32 %i.1304, 2
  %add113 = add i32 %mul112, 6357472
  %add.ptr114 = getelementptr i8, ptr %62, i32 %add113
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114, i32 %60) #7, !srcloc !156
  %inc116 = add nuw nsw i32 %i.1304, 1
  %63 = ptrtoint ptr %nr98 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nr98, align 4
  %cmp99 = icmp slt i32 %inc116, %64
  br i1 %cmp99, label %for.body100.for.body100_crit_edge, label %for.body100.for.cond118.preheader_crit_edge

for.body100.for.cond118.preheader_crit_edge:      ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond118.preheader

for.body100.for.body100_crit_edge:                ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body100

for.body121:                                      ; preds = %for.body121.for.body121_crit_edge, %for.cond118.preheader.for.body121_crit_edge
  %i.2306 = phi i32 [ %inc137, %for.body121.for.body121_crit_edge ], [ 0, %for.cond118.preheader.for.body121_crit_edge ]
  %65 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pri, align 4
  %mul124 = shl i32 %i.2306, 11
  %add125 = add i32 %mul124, 6414336
  %add.ptr126 = getelementptr i8, ptr %66, i32 %add125
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr126) #7, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  tail call void @arm_heavy_mb() #7
  %68 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pri, align 4
  %mul133 = shl i32 %i.2306, 2
  %add134 = add i32 %mul133, 6357488
  %add.ptr135 = getelementptr i8, ptr %69, i32 %add134
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135, i32 %67) #7, !srcloc !156
  %inc137 = add nuw nsw i32 %i.2306, 1
  %70 = ptrtoint ptr %nr119 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nr119, align 4
  %cmp120 = icmp slt i32 %inc137, %71
  br i1 %cmp120, label %for.body121.for.body121_crit_edge, label %for.body121.for.end138_crit_edge

for.body121.for.end138_crit_edge:                 ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end138

for.body121.for.body121_crit_edge:                ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body121

for.end138:                                       ; preds = %for.body121.for.end138_crit_edge, %for.cond118.preheader.for.end138_crit_edge
  %72 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pri, align 4
  %add.ptr141 = getelementptr i8, ptr %73, i32 6357028
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr141) #7, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !185
  %and = and i32 %74, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.end138.do.body213_crit_edge, label %do.body144

for.end138.do.body213_crit_edge:                  ; preds = %for.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body213

do.body144:                                       ; preds = %for.end138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %75 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pri, align 4
  %add.ptr148 = getelementptr i8, ptr %76, i32 6357028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 256) #7, !srcloc !156
  %77 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pri, align 4
  %add.ptr151 = getelementptr i8, ptr %78, i32 6395112
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr151) #7, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !188
  tail call void @arm_heavy_mb() #7
  %and157 = and i32 %79, -2
  %80 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pri, align 4
  %add.ptr159 = getelementptr i8, ptr %81, i32 6395112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr159, i32 %and157) #7, !srcloc !156
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #7
  %82 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #7
  br label %do.body161

do.body161:                                       ; preds = %do.cond170.do.body161_crit_edge, %do.body144
  %83 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pri, align 4
  %add.ptr164 = getelementptr i8, ptr %84, i32 6395112
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr164) #7, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %and167 = and i32 %85, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %if.end207.thread, label %do.cond170

if.end207.thread:                                 ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #7
  br label %do.body213

do.cond170:                                       ; preds = %do.body161
  %call171 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #7
  %cmp172 = icmp sgt i64 %call171, -1
  br i1 %cmp172, label %do.cond170.do.body161_crit_edge, label %do.end185

do.cond170.do.body161_crit_edge:                  ; preds = %do.cond170
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body161

do.end185:                                        ; preds = %do.cond170
  %86 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %_wait, align 8
  %device187 = getelementptr inbounds %struct.nvkm_timer, ptr %87, i32 0, i32 1, i32 1
  %88 = ptrtoint ptr %device187 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %device187, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev, align 8
  %call188 = call ptr @dev_driver_string(ptr noundef %91) #7
  %92 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %_wait, align 8
  %device191 = getelementptr inbounds %struct.nvkm_timer, ptr %93, i32 0, i32 1, i32 1
  %94 = ptrtoint ptr %device191 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %device191, align 4
  %dev192 = getelementptr inbounds %struct.nvkm_device, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %dev192 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev192, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %99, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end185.if.end207_crit_edge

do.end185.if.end207_crit_edge:                    ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end207

if.end.i:                                         ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #9
  %100 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %97, align 4
  br label %if.end207

if.end207:                                        ; preds = %if.end.i, %do.end185.if.end207_crit_edge
  %retval.0.i = phi ptr [ %101, %if.end.i ], [ %99, %do.end185.if.end207_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 744, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef %call188, ptr noundef %retval.0.i) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #7
  br label %cleanup

do.body213:                                       ; preds = %if.end207.thread, %for.end138.do.body213_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  call void @arm_heavy_mb() #7
  %inst = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 11
  %102 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %inst, align 4
  %addr = getelementptr inbounds %struct.nvkm_gpuobj, ptr %103, i32 0, i32 4
  %104 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %addr, align 8
  %shr = lshr i64 %105, 8
  %106 = trunc i64 %shr to i32
  %conv = or i32 %106, 9
  %107 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pri, align 4
  %add.ptr218 = getelementptr i8, ptr %108, i32 6357008
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr218, i32 %conv) #7, !srcloc !156
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !191
  call void @arm_heavy_mb() #7
  %109 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pri, align 4
  %add.ptr223 = getelementptr i8, ptr %110, i32 6357036
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr223, i32 880) #7, !srcloc !156
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  call void @arm_heavy_mb() #7
  %111 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pri, align 4
  %add.ptr228 = getelementptr i8, ptr %112, i32 6357032
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr228, i32 0) #7, !srcloc !156
  br label %cleanup

cleanup:                                          ; preds = %do.body213, %if.end207
  %retval.0 = phi i32 [ 0, %do.body213 ], [ -16, %if.end207 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_disp_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pdisp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv50_disp_new_(ptr noundef nonnull @nv50_disp, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pdisp)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nv50_disp_dtor_(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ramht = getelementptr i8, ptr %base, i32 724
  tail call void @nvkm_ramht_del(ptr noundef %ramht) #7
  %inst = getelementptr i8, ptr %base, i32 720
  tail call void @nvkm_gpuobj_del(ptr noundef %inst) #7
  %uevent = getelementptr i8, ptr %base, i32 560
  tail call void @nvkm_event_fini(ptr noundef %uevent) #7
  %wq = getelementptr i8, ptr %base, i32 508
  %0 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @destroy_workqueue(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_disp_oneinit_(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %device4 = getelementptr inbounds %struct.nvkm_disp, ptr %base, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device4, align 4
  %wndw = getelementptr inbounds %struct.nv50_disp_func, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %wndw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wndw, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then:                                          ; preds = %entry
  %wndw8 = getelementptr i8, ptr %base, i32 672
  %call = tail call i32 %5(ptr noundef %base, ptr noundef %wndw8) #7
  %nr = getelementptr i8, ptr %base, i32 676
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %nr, align 4
  %debug = getelementptr inbounds %struct.nvkm_disp, ptr %base, i32 0, i32 1, i32 1, i32 5
  %7 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp ugt i32 %8, 3
  br i1 %cmp, label %do.end, label %if.then.if.end19_crit_edge

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device4, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_disp, ptr %base, i32 0, i32 1, i32 1, i32 4
  %13 = ptrtoint ptr %wndw8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wndw8, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.26, ptr noundef %name, i32 noundef %call, i32 noundef %14) #11
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.then.if.end19_crit_edge, %entry.if.end19_crit_edge
  %head = getelementptr inbounds %struct.nv50_disp_func, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head, align 4
  %head22 = getelementptr i8, ptr %base, i32 680
  %call24 = tail call i32 %16(ptr noundef %base, ptr noundef %head22) #7
  %nr26 = getelementptr i8, ptr %base, i32 684
  %17 = ptrtoint ptr %nr26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call24, ptr %nr26, align 4
  %debug29 = getelementptr inbounds %struct.nvkm_disp, ptr %base, i32 0, i32 1, i32 1, i32 5
  %18 = ptrtoint ptr %debug29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp30 = icmp ugt i32 %19, 3
  br i1 %cmp30, label %do.end34, label %if.end19.if.end43_crit_edge

if.end19.if.end43_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

do.end34:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device4, align 4
  %dev36 = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev36, align 8
  %name37 = getelementptr inbounds %struct.nvkm_disp, ptr %base, i32 0, i32 1, i32 1, i32 4
  %24 = ptrtoint ptr %head22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %head22, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.29, ptr noundef %name37, i32 noundef %call24, i32 noundef %25) #11
  br label %if.end43

if.end43:                                         ; preds = %do.end34, %if.end19.if.end43_crit_edge
  %26 = ptrtoint ptr %nr26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr26, align 4
  %call50 = tail call i32 @_find_next_bit_be(ptr noundef %head22, i32 noundef %27, i32 noundef 0) #7
  %28 = ptrtoint ptr %nr26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call50, i32 %29)
  %cmp53349 = icmp slt i32 %call50, %29
  br i1 %cmp53349, label %for.body.lr.ph, label %if.end43.for.end_crit_edge

if.end43.for.end_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end43
  %new = getelementptr inbounds %struct.nv50_disp_func, ptr %1, i32 0, i32 8, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0350 = phi i32 [ %call50, %for.body.lr.ph ], [ %call64, %for.inc.for.body_crit_edge ]
  %30 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %new, align 4
  %call56 = tail call i32 %31(ptr noundef %base, i32 noundef %i.0350) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %32 = ptrtoint ptr %nr26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr26, align 4
  %add = add nsw i32 %i.0350, 1
  %call64 = tail call i32 @_find_next_bit_be(ptr noundef %head22, i32 noundef %33, i32 noundef %add) #7
  %34 = ptrtoint ptr %nr26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr26, align 4
  %cmp53 = icmp slt i32 %call64, %35
  br i1 %cmp53, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end43.for.end_crit_edge
  %dac = getelementptr inbounds %struct.nv50_disp_func, ptr %1, i32 0, i32 9
  %36 = ptrtoint ptr %dac to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dac, align 4
  %tobool66.not = icmp eq ptr %37, null
  br i1 %tobool66.not, label %for.end.if.end120_crit_edge, label %if.then67

for.end.if.end120_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

if.then67:                                        ; preds = %for.end
  %dac71 = getelementptr i8, ptr %base, i32 688
  %call73 = tail call i32 %37(ptr noundef %base, ptr noundef %dac71) #7
  %nr75 = getelementptr i8, ptr %base, i32 692
  %38 = ptrtoint ptr %nr75 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call73, ptr %nr75, align 4
  %39 = ptrtoint ptr %debug29 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %debug29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %cmp79 = icmp ugt i32 %40, 3
  br i1 %cmp79, label %do.end83, label %if.then67.if.end92_crit_edge

if.then67.if.end92_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

do.end83:                                         ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device4, align 4
  %dev85 = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev85, align 8
  %name86 = getelementptr inbounds %struct.nvkm_disp, ptr %base, i32 0, i32 1, i32 1, i32 4
  %45 = ptrtoint ptr %dac71 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dac71, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.32, ptr noundef %name86, i32 noundef %call73, i32 noundef %46) #11
  br label %if.end92

if.end92:                                         ; preds = %do.end83, %if.then67.if.end92_crit_edge
  %47 = ptrtoint ptr %nr75 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr75, align 4
  %call99 = tail call i32 @_find_next_bit_be(ptr noundef %dac71, i32 noundef %48, i32 noundef 0) #7
  %49 = ptrtoint ptr %nr75 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nr75, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call99, i32 %50)
  %cmp103351 = icmp slt i32 %call99, %50
  br i1 %cmp103351, label %for.body104.lr.ph, label %if.end92.if.end120_crit_edge

if.end92.if.end120_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

for.body104.lr.ph:                                ; preds = %if.end92
  %new106 = getelementptr inbounds %struct.nv50_disp_func, ptr %1, i32 0, i32 9, i32 1
  br label %for.body104

for.body104:                                      ; preds = %for.inc112.for.body104_crit_edge, %for.body104.lr.ph
  %i.1352 = phi i32 [ %call99, %for.body104.lr.ph ], [ %call118, %for.inc112.for.body104_crit_edge ]
  %51 = ptrtoint ptr %new106 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %new106, align 4
  %call108 = tail call i32 %52(ptr noundef %base, i32 noundef %i.1352) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %for.inc112, label %for.body104.cleanup_crit_edge

for.body104.cleanup_crit_edge:                    ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc112:                                       ; preds = %for.body104
  %53 = ptrtoint ptr %nr75 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nr75, align 4
  %add117 = add nsw i32 %i.1352, 1
  %call118 = tail call i32 @_find_next_bit_be(ptr noundef %dac71, i32 noundef %54, i32 noundef %add117) #7
  %55 = ptrtoint ptr %nr75 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nr75, align 4
  %cmp103 = icmp slt i32 %call118, %56
  br i1 %cmp103, label %for.inc112.for.body104_crit_edge, label %for.inc112.if.end120_crit_edge

for.inc112.if.end120_crit_edge:                   ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

for.inc112.for.body104_crit_edge:                 ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body104

if.end120:                                        ; preds = %for.inc112.if.end120_crit_edge, %if.end92.if.end120_crit_edge, %for.end.if.end120_crit_edge
  %pior = getelementptr inbounds %struct.nv50_disp_func, ptr %1, i32 0, i32 11
  %57 = ptrtoint ptr %pior to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pior, align 4
  %tobool122.not = icmp eq ptr %58, null
  br i1 %tobool122.not, label %if.end120.if.end176_crit_edge, label %if.then123

if.end120.if.end176_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end176

if.then123:                                       ; preds = %if.end120
  %pior127 = getelementptr i8, ptr %base, i32 708
  %call129 = tail call i32 %58(ptr noundef %base, ptr noundef %pior127) #7
  %nr131 = getelementptr i8, ptr %base, i32 712
  %59 = ptrtoint ptr %nr131 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call129, ptr %nr131, align 4
  %60 = ptrtoint ptr %debug29 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %debug29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %61)
  %cmp135 = icmp ugt i32 %61, 3
  br i1 %cmp135, label %do.end139, label %if.then123.if.end148_crit_edge

if.then123.if.end148_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148

do.end139:                                        ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %device4, align 4
  %dev141 = getelementptr inbounds %struct.nvkm_device, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %dev141 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev141, align 8
  %name142 = getelementptr inbounds %struct.nvkm_disp, ptr %base, i32 0, i32 1, i32 1, i32 4
  %66 = ptrtoint ptr %pior127 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pior127, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %65, ptr noundef nonnull @.str.35, ptr noundef %name142, i32 noundef %call129, i32 noundef %67) #11
  br label %if.end148

if.end148:                                        ; preds = %do.end139, %if.then123.if.end148_crit_edge
  %68 = ptrtoint ptr %nr131 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nr131, align 4
  %call155 = tail call i32 @_find_next_bit_be(ptr noundef %pior127, i32 noundef %69, i32 noundef 0) #7
  %70 = ptrtoint ptr %nr131 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nr131, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call155, i32 %71)
  %cmp159353 = icmp slt i32 %call155, %71
  br i1 %cmp159353, label %for.body160.lr.ph, label %if.end148.if.end176_crit_edge

if.end148.if.end176_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end176

for.body160.lr.ph:                                ; preds = %if.end148
  %new162 = getelementptr inbounds %struct.nv50_disp_func, ptr %1, i32 0, i32 11, i32 1
  br label %for.body160

for.body160:                                      ; preds = %for.inc168.for.body160_crit_edge, %for.body160.lr.ph
  %i.2354 = phi i32 [ %call155, %for.body160.lr.ph ], [ %call174, %for.inc168.for.body160_crit_edge ]
  %72 = ptrtoint ptr %new162 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %new162, align 4
  %call164 = tail call i32 %73(ptr noundef %base, i32 noundef %i.2354) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %for.inc168, label %for.body160.cleanup_crit_edge

for.body160.cleanup_crit_edge:                    ; preds = %for.body160
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc168:                                       ; preds = %for.body160
  %74 = ptrtoint ptr %nr131 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nr131, align 4
  %add173 = add nsw i32 %i.2354, 1
  %call174 = tail call i32 @_find_next_bit_be(ptr noundef %pior127, i32 noundef %75, i32 noundef %add173) #7
  %76 = ptrtoint ptr %nr131 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nr131, align 4
  %cmp159 = icmp slt i32 %call174, %77
  br i1 %cmp159, label %for.inc168.for.body160_crit_edge, label %for.inc168.if.end176_crit_edge

for.inc168.if.end176_crit_edge:                   ; preds = %for.inc168
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end176

for.inc168.for.body160_crit_edge:                 ; preds = %for.inc168
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body160

if.end176:                                        ; preds = %for.inc168.if.end176_crit_edge, %if.end148.if.end176_crit_edge, %if.end120.if.end176_crit_edge
  %sor = getelementptr inbounds %struct.nv50_disp_func, ptr %1, i32 0, i32 10
  %78 = ptrtoint ptr %sor to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sor, align 4
  %sor179 = getelementptr i8, ptr %base, i32 696
  %call181 = tail call i32 %79(ptr noundef %base, ptr noundef %sor179) #7
  %nr183 = getelementptr i8, ptr %base, i32 700
  %80 = ptrtoint ptr %nr183 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call181, ptr %nr183, align 4
  %81 = ptrtoint ptr %debug29 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %debug29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %82)
  %cmp187 = icmp ugt i32 %82, 3
  br i1 %cmp187, label %do.end191, label %if.end176.if.end200_crit_edge

if.end176.if.end200_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end200

do.end191:                                        ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %device4 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %device4, align 4
  %dev193 = getelementptr inbounds %struct.nvkm_device, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %dev193 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev193, align 8
  %name194 = getelementptr inbounds %struct.nvkm_disp, ptr %base, i32 0, i32 1, i32 1, i32 4
  %87 = ptrtoint ptr %sor179 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sor179, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %86, ptr noundef nonnull @.str.38, ptr noundef %name194, i32 noundef %call181, i32 noundef %88) #11
  br label %if.end200

if.end200:                                        ; preds = %do.end191, %if.end176.if.end200_crit_edge
  %89 = ptrtoint ptr %nr183 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %nr183, align 4
  %call207 = tail call i32 @_find_next_bit_be(ptr noundef %sor179, i32 noundef %90, i32 noundef 0) #7
  %91 = ptrtoint ptr %nr183 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %nr183, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call207, i32 %92)
  %cmp211355 = icmp slt i32 %call207, %92
  br i1 %cmp211355, label %for.body212.lr.ph, label %if.end200.for.end227_crit_edge

if.end200.for.end227_crit_edge:                   ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end227

for.body212.lr.ph:                                ; preds = %if.end200
  %new214 = getelementptr inbounds %struct.nv50_disp_func, ptr %1, i32 0, i32 10, i32 1
  br label %for.body212

for.body212:                                      ; preds = %for.inc220.for.body212_crit_edge, %for.body212.lr.ph
  %i.3356 = phi i32 [ %call207, %for.body212.lr.ph ], [ %call226, %for.inc220.for.body212_crit_edge ]
  %93 = ptrtoint ptr %new214 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %new214, align 4
  %call216 = tail call i32 %94(ptr noundef %base, i32 noundef %i.3356) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %for.inc220, label %for.body212.cleanup_crit_edge

for.body212.cleanup_crit_edge:                    ; preds = %for.body212
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc220:                                       ; preds = %for.body212
  %95 = ptrtoint ptr %nr183 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %nr183, align 4
  %add225 = add nsw i32 %i.3356, 1
  %call226 = tail call i32 @_find_next_bit_be(ptr noundef %sor179, i32 noundef %96, i32 noundef %add225) #7
  %97 = ptrtoint ptr %nr183 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %nr183, align 4
  %cmp211 = icmp slt i32 %call226, %98
  br i1 %cmp211, label %for.inc220.for.body212_crit_edge, label %for.inc220.for.end227_crit_edge

for.inc220.for.end227_crit_edge:                  ; preds = %for.inc220
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end227

for.inc220.for.body212_crit_edge:                 ; preds = %for.inc220
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body212

for.end227:                                       ; preds = %for.inc220.for.end227_crit_edge, %if.end200.for.end227_crit_edge
  %inst = getelementptr i8, ptr %base, i32 720
  %call228 = tail call i32 @nvkm_gpuobj_new(ptr noundef %3, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext false, ptr noundef null, ptr noundef %inst) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %tobool229.not = icmp eq i32 %call228, 0
  br i1 %tobool229.not, label %if.end231, label %for.end227.cleanup_crit_edge

for.end227.cleanup_crit_edge:                     ; preds = %for.end227
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end231:                                        ; preds = %for.end227
  call void @__sanitizer_cov_trace_pc() #9
  %ramht_size = getelementptr inbounds %struct.nv50_disp_func, ptr %1, i32 0, i32 12
  %99 = ptrtoint ptr %ramht_size to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %ramht_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool232.not = icmp eq i16 %100, 0
  %narrow = select i1 %tobool232.not, i16 4096, i16 %100
  %spec.select = zext i16 %narrow to i32
  %101 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %inst, align 4
  %ramht = getelementptr i8, ptr %base, i32 724
  %call236 = tail call i32 @nvkm_ramht_new(ptr noundef %3, i32 noundef %spec.select, i32 noundef 0, ptr noundef %102, ptr noundef %ramht) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end231, %for.end227.cleanup_crit_edge, %for.body212.cleanup_crit_edge, %for.body160.cleanup_crit_edge, %for.body104.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call236, %if.end231 ], [ %call228, %for.end227.cleanup_crit_edge ], [ %call216, %for.body212.cleanup_crit_edge ], [ %call164, %for.body160.cleanup_crit_edge ], [ %call108, %for.body104.cleanup_crit_edge ], [ %call56, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_disp_init_(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 %3(ptr noundef %add.ptr) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_disp_fini_(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %fini = getelementptr inbounds %struct.nv50_disp_func, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fini, align 4
  tail call void %3(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_disp_intr_(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %intr = getelementptr inbounds %struct.nv50_disp_func, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intr, align 4
  tail call void %3(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @nv50_disp_root_(ptr nocapture noundef readonly %base) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %root = getelementptr inbounds %struct.nv50_disp_func, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root, align 4
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_ramht_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_gpuobj_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ramht_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_ocfg_match(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_oclk_match(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_exec(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_outp_match(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_enum_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_head_cnt(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_head_new(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_dac_cnt(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_dac_new(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_sor_cnt(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_sor_new(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_pior_cnt(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_pior_new(ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !133, !135}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 171, i32 13}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @nv50_disp_new_.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 175, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 311, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @nv50_disp_super_3_0._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @nv50_disp_super_3_0._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 438, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nv50_disp_super_2_2._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @nv50_disp_super_2_2._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 482, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @nv50_disp_super_2_1._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @nv50_disp_super_2_1._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 494, i32 2}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @nv50_disp_super_2_0._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @nv50_disp_super_2_0._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 517, i32 2}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @nv50_disp_super_1_0._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @nv50_disp_super_1_0._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 553, i32 2}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @nv50_disp_super._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @nv50_disp_super._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 597, i32 7}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 598, i32 7}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 599, i32 7}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 600, i32 7}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 601, i32 7}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 602, i32 7}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 603, i32 7}
!53 = !{ptr @nv50_disp_intr_error_type, !54, !"nv50_disp_intr_error_type", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 596, i32 1}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 741, i32 7}
!57 = !{ptr @nv50_disp_, !58, !"nv50_disp_", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 146, i32 1}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 92, i32 3}
!61 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @nv50_disp_oneinit_._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @nv50_disp_oneinit_._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 97, i32 2}
!66 = !{ptr @nv50_disp_oneinit_._entry.28, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @nv50_disp_oneinit_._entry_ptr.30, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 107, i32 3}
!70 = !{ptr @nv50_disp_oneinit_._entry.31, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @nv50_disp_oneinit_._entry_ptr.33, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 118, i32 3}
!74 = !{ptr @nv50_disp_oneinit_._entry.34, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @nv50_disp_oneinit_._entry_ptr.36, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 128, i32 2}
!78 = !{ptr @nv50_disp_oneinit_._entry.37, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @nv50_disp_oneinit_._entry_ptr.39, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 283, i32 4}
!82 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @nv50_disp_super_ior_asy._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @nv50_disp_super_ior_asy._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 287, i32 2}
!87 = !{ptr @nv50_disp_super_ior_asy._entry.42, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @nv50_disp_super_ior_asy._entry_ptr.44, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 209, i32 3}
!91 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @nv50_disp_super_ied_on._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @nv50_disp_super_ied_on._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 231, i32 3}
!96 = !{ptr @nv50_disp_super_ied_on._entry.47, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @nv50_disp_super_ied_on._entry_ptr.49, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 239, i32 3}
!100 = !{ptr @nv50_disp_super_ied_on._entry.50, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @nv50_disp_super_ied_on._entry_ptr.52, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 192, i32 3}
!104 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @nv50_disp_super_iedt._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @nv50_disp_super_iedt._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 411, i32 4}
!109 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @nv50_disp_super_2_2_dp._entry, !108, !"_entry", i1 false, i1 false}
!112 = !{ptr @nv50_disp_super_2_2_dp._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 297, i32 4}
!115 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @nv50_disp_super_ior_arm._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @nv50_disp_super_ior_arm._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 301, i32 2}
!120 = !{ptr @nv50_disp_super_ior_arm._entry.60, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @nv50_disp_super_ior_arm._entry_ptr.62, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 261, i32 3}
!124 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @nv50_disp_super_ied_off._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @nv50_disp_super_ied_off._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 628, i32 2}
!129 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @nv50_disp_intr_error._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @nv50_disp_intr_error._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.67, !128, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @nv50_disp_intr_error_code, !134, !"nv50_disp_intr_error_code", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 608, i32 1}
!135 = !{ptr @nv50_disp, !136, !"nv50_disp", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/nv50.c", i32 758, i32 1}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{!"auto-init"}
!147 = !{i8 0, i8 9}
!148 = !{!"branch_weights", i32 2000, i32 1}
!149 = !{i64 2148466161, i64 2148466441, i64 2148466775, i64 2148467109}
!150 = !{i8 0, i8 2}
!151 = !{i64 980617, i64 980644, i64 980666, i64 980694}
!152 = !{i64 981025, i64 981052, i64 981085, i64 981106, i64 981133, i64 981159}
!153 = !{i64 5408329}
!154 = !{i64 2156407262}
!155 = !{i64 2156426391}
!156 = !{i64 5407911}
!157 = !{i64 2156431921}
!158 = !{i64 2156432306}
!159 = !{i32 0, i32 33}
!160 = !{i64 2156426895}
!161 = !{i64 2156427328}
!162 = !{i64 2156431012}
!163 = !{i64 2156431465}
!164 = !{i64 2156432648}
!165 = !{i64 2156433061}
!166 = !{i64 2156433476}
!167 = !{i64 2156433890}
!168 = !{i64 2156434303}
!169 = !{i64 2156434759}
!170 = !{i64 2156435087}
!171 = !{i64 2156438893}
!172 = !{i64 2156439261}
!173 = !{i64 2156439773}
!174 = !{i64 2156440141}
!175 = !{i64 2156440653}
!176 = !{i64 2156441021}
!177 = !{i64 2156441533}
!178 = !{i64 2156441901}
!179 = !{i64 2156442392}
!180 = !{i64 2156442746}
!181 = !{i64 2156443237}
!182 = !{i64 2156443591}
!183 = !{i64 2156444082}
!184 = !{i64 2156444436}
!185 = !{i64 2156444885}
!186 = !{i64 2156445227}
!187 = !{i64 2156446068}
!188 = !{i64 2156446470}
!189 = !{i64 2156448387}
!190 = !{i64 2156449660}
!191 = !{i64 2156450090}
!192 = !{i64 2156450503}
