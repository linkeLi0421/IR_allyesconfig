; ModuleID = '/llk/IR_all_yes/drivers/input/mouse/alps.c_pt.bc'
source_filename = "../drivers/input/mouse/alps.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.alps_protocol_info = type { i16, i8, i8, i32 }
%struct.alps_model_info = type { [3 x i8], %struct.alps_protocol_info }
%struct.alps_nibble_commands = type { i32, i8 }
%struct.psmouse = type { ptr, ptr, %struct.ps2dev, %struct.delayed_work, ptr, ptr, ptr, [8 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [64 x i8], [32 x i8], i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ps2dev = type { ptr, %struct.mutex, %struct.wait_queue_head, i32, [8 x i8], i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.alps_data = type { ptr, ptr, ptr, [32 x i8], [32 x i8], %struct.delayed_work, ptr, i32, i16, i8, i8, [3 x i8], [3 x i8], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, [6 x i8], %struct.alps_fields, i8, %struct.timer_list }
%struct.alps_fields = type { i32, i32, i32, i32, %struct.input_mt_pos, [4 x %struct.input_mt_pos], i8 }
%struct.input_mt_pos = type { i16, i16 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
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
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.alps_bitmap_point = type { i32, i32 }

@alps_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 3097, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"alps: failed to allocate trackstick device\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"alps_init\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/input/mouse/alps.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@alps_init._entry_ptr = internal global ptr @alps_init._entry, section ".printk_index", align 4
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input1\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AlpsPS/2 ALPS DualPoint Stick\00", [34 x i8] zeroinitializer }, align 32
@alps_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 3135, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"alps: failed to register trackstick device: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@alps_init._entry_ptr.9 = internal global ptr @alps_init._entry.7, section ".printk_index", align 4
@alps_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&(&priv->dev3_register_work)->work)\00", [42 x i8] zeroinitializer }, align 32
@alps_init.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&(&priv->dev3_register_work)->timer\00", [60 x i8] zeroinitializer }, align 32
@alps_detect.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 3, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"psmouse\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"alps_detect\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"alps: ALPS CS19 trackpoint-only device detected, ignoring\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ALPS\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DualPoint TouchPad\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"GlidePoint\00", [21 x i8] zeroinitializer }, align 32
@alps_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @alps_mutex, i64 52), ptr getelementptr (i8, ptr @alps_mutex, i64 52) }, ptr @alps_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@alps_register_bare_ps2_mouse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 1414, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"alps: failed to allocate secondary device\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"alps_register_bare_ps2_mouse\00", [35 x i8] zeroinitializer }, align 32
@alps_register_bare_ps2_mouse._entry_ptr = internal global ptr @alps_register_bare_ps2_mouse._entry, section ".printk_index", align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s/%s\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"input2\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"input1\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PS/2 ALPS Mouse\00", [16 x i8] zeroinitializer }, align 32
@alps_register_bare_ps2_mouse._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.20, ptr @.str.2, i32 1448, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"alps: failed to register secondary device: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@alps_register_bare_ps2_mouse._entry_ptr.27 = internal global ptr @alps_register_bare_ps2_mouse._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"alps_mutex.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"alps_mutex\00", [21 x i8] zeroinitializer }, align 32
@alps_process_byte.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 1, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"alps_process_byte\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"alps: refusing packet[0] = %x (mask0 = %x, byte0 = %x)\0A\00", [40 x i8] zeroinitializer }, align 32
@alps_process_byte.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.30, ptr @.str.2, ptr @.str.32, i8 1, i8 -100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"alps: refusing packet[%i] = %x\0A\00", [32 x i8] zeroinitializer }, align 32
@alps_process_byte.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.30, ptr @.str.2, ptr @.str.32, i8 1, i8 -94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@alps_handle_interleaved_ps2.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 1, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"alps_handle_interleaved_ps2\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"alps: refusing packet %4ph (suspected interleaved ps/2)\0A\00", [39 x i8] zeroinitializer }, align 32
@alps_v4_protocol_data = internal constant { %struct.alps_protocol_info, [24 x i8] } { %struct.alps_protocol_info { i16 1024, i8 -113, i8 -113, i32 0 }, [24 x i8] zeroinitializer }, align 32
@alps_v5_protocol_data = internal constant { %struct.alps_protocol_info, [24 x i8] } { %struct.alps_protocol_info { i16 1280, i8 -56, i8 -40, i32 0 }, [24 x i8] zeroinitializer }, align 32
@alps_v7_protocol_data = internal constant { %struct.alps_protocol_info, [24 x i8] } { %struct.alps_protocol_info { i16 1792, i8 72, i8 72, i32 1026 }, [24 x i8] zeroinitializer }, align 32
@alps_v3_rushmore_data = internal constant { %struct.alps_protocol_info, [24 x i8] } { %struct.alps_protocol_info { i16 784, i8 -113, i8 -113, i32 1026 }, [24 x i8] zeroinitializer }, align 32
@alps_v3_protocol_data = internal constant { %struct.alps_protocol_info, [24 x i8] } { %struct.alps_protocol_info { i16 768, i8 -113, i8 -113, i32 1026 }, [24 x i8] zeroinitializer }, align 32
@alps_v8_protocol_data = internal constant { %struct.alps_protocol_info, [24 x i8] } { %struct.alps_protocol_info { i16 2048, i8 24, i8 24, i32 0 }, [24 x i8] zeroinitializer }, align 32
@alps_identify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 2935, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"alps: Unsupported ALPS V9 touchpad: E7=%3ph, EC=%3ph\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"alps_identify\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@alps_identify._entry_ptr = internal global ptr @alps_identify._entry, section ".printk_index", align 4
@alps_identify.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.36, ptr @.str.2, ptr @.str.38, i8 2, i8 -34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"alps: Likely not an ALPS touchpad: E7=%3ph, EC=%3ph\0A\00", [43 x i8] zeroinitializer }, align 32
@alps_rpt_cmd.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 1, i8 -66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"alps_rpt_cmd\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"alps: %2.2X report: %3ph\0A\00", [38 x i8] zeroinitializer }, align 32
@alps_model_data = internal constant { [22 x %struct.alps_model_info], [88 x i8] } { [22 x %struct.alps_model_info] [%struct.alps_model_info { [3 x i8] c" \02\0E", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 6 } }, %struct.alps_model_info { [3 x i8] c"\22\02\0A", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 6 } }, %struct.alps_model_info { [3 x i8] c"\22\02\14", %struct.alps_protocol_info { i16 512, i8 -1, i8 -1, i32 6 } }, %struct.alps_model_info { [3 x i8] c"2\02\14", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 6 } }, %struct.alps_model_info { [3 x i8] c"3\02\0A", %struct.alps_protocol_info { i16 256, i8 -120, i8 -8, i32 0 } }, %struct.alps_model_info { [3 x i8] c"R\01\14", %struct.alps_protocol_info { i16 512, i8 -1, i8 -1, i32 134 } }, %struct.alps_model_info { [3 x i8] c"S\02\0A", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 0 } }, %struct.alps_model_info { [3 x i8] c"S\02\14", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 0 } }, %struct.alps_model_info { [3 x i8] c"`\03\C8", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 0 } }, %struct.alps_model_info { [3 x i8] c"b\02\14", %struct.alps_protocol_info { i16 512, i8 -49, i8 -49, i32 134 } }, %struct.alps_model_info { [3 x i8] c"c\02\0A", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 0 } }, %struct.alps_model_info { [3 x i8] c"c\02\14", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 0 } }, %struct.alps_model_info { [3 x i8] c"c\02(", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 32 } }, %struct.alps_model_info { [3 x i8] c"c\02<", %struct.alps_protocol_info { i16 512, i8 -113, i8 -113, i32 8 } }, %struct.alps_model_info { [3 x i8] c"c\02P", %struct.alps_protocol_info { i16 512, i8 -17, i8 -17, i32 16 } }, %struct.alps_model_info { [3 x i8] c"c\02d", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 0 } }, %struct.alps_model_info { [3 x i8] c"c\03\C8", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 6 } }, %struct.alps_model_info { [3 x i8] c"s\00\0A", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 2 } }, %struct.alps_model_info { [3 x i8] c"s\00\14", %struct.alps_protocol_info { i16 1536, i8 -1, i8 -1, i32 2 } }, %struct.alps_model_info { [3 x i8] c"s\02\0A", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 0 } }, %struct.alps_model_info { [3 x i8] c"s\02\14", %struct.alps_protocol_info { i16 512, i8 -8, i8 -8, i32 32 } }, %struct.alps_model_info { [3 x i8] c"s\02P", %struct.alps_protocol_info { i16 512, i8 -49, i8 -49, i32 64 } }], [88 x i8] zeroinitializer }, align 32
@alps_set_protocol.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&priv->timer)\00", [17 x i8] zeroinitializer }, align 32
@alps_v3_nibble_commands = internal constant { [16 x %struct.alps_nibble_commands], [32 x i8] } { [16 x %struct.alps_nibble_commands] [%struct.alps_nibble_commands { i32 240, i8 0 }, %struct.alps_nibble_commands { i32 246, i8 0 }, %struct.alps_nibble_commands { i32 231, i8 0 }, %struct.alps_nibble_commands { i32 4339, i8 10 }, %struct.alps_nibble_commands { i32 4339, i8 20 }, %struct.alps_nibble_commands { i32 4339, i8 40 }, %struct.alps_nibble_commands { i32 4339, i8 60 }, %struct.alps_nibble_commands { i32 4339, i8 80 }, %struct.alps_nibble_commands { i32 4339, i8 100 }, %struct.alps_nibble_commands { i32 4339, i8 -56 }, %struct.alps_nibble_commands { i32 498, i8 0 }, %struct.alps_nibble_commands { i32 4328, i8 0 }, %struct.alps_nibble_commands { i32 4328, i8 1 }, %struct.alps_nibble_commands { i32 4328, i8 2 }, %struct.alps_nibble_commands { i32 4328, i8 3 }, %struct.alps_nibble_commands { i32 230, i8 0 }], [32 x i8] zeroinitializer }, align 32
@alps_v4_nibble_commands = internal constant { [16 x %struct.alps_nibble_commands], [32 x i8] } { [16 x %struct.alps_nibble_commands] [%struct.alps_nibble_commands { i32 244, i8 0 }, %struct.alps_nibble_commands { i32 246, i8 0 }, %struct.alps_nibble_commands { i32 231, i8 0 }, %struct.alps_nibble_commands { i32 4339, i8 10 }, %struct.alps_nibble_commands { i32 4339, i8 20 }, %struct.alps_nibble_commands { i32 4339, i8 40 }, %struct.alps_nibble_commands { i32 4339, i8 60 }, %struct.alps_nibble_commands { i32 4339, i8 80 }, %struct.alps_nibble_commands { i32 4339, i8 100 }, %struct.alps_nibble_commands { i32 4339, i8 -56 }, %struct.alps_nibble_commands { i32 498, i8 0 }, %struct.alps_nibble_commands { i32 4328, i8 0 }, %struct.alps_nibble_commands { i32 4328, i8 1 }, %struct.alps_nibble_commands { i32 4328, i8 2 }, %struct.alps_nibble_commands { i32 4328, i8 3 }, %struct.alps_nibble_commands { i32 230, i8 0 }], [32 x i8] zeroinitializer }, align 32
@alps_v6_nibble_commands = internal constant { [16 x %struct.alps_nibble_commands], [32 x i8] } { [16 x %struct.alps_nibble_commands] [%struct.alps_nibble_commands { i32 244, i8 0 }, %struct.alps_nibble_commands { i32 4339, i8 10 }, %struct.alps_nibble_commands { i32 4339, i8 20 }, %struct.alps_nibble_commands { i32 4339, i8 40 }, %struct.alps_nibble_commands { i32 4339, i8 60 }, %struct.alps_nibble_commands { i32 4339, i8 80 }, %struct.alps_nibble_commands { i32 4339, i8 100 }, %struct.alps_nibble_commands { i32 4339, i8 -56 }, %struct.alps_nibble_commands { i32 754, i8 0 }, %struct.alps_nibble_commands { i32 1001, i8 0 }, %struct.alps_nibble_commands { i32 4328, i8 0 }, %struct.alps_nibble_commands { i32 4328, i8 1 }, %struct.alps_nibble_commands { i32 4328, i8 2 }, %struct.alps_nibble_commands { i32 4328, i8 3 }, %struct.alps_nibble_commands { i32 231, i8 0 }, %struct.alps_nibble_commands { i32 230, i8 0 }], [32 x i8] zeroinitializer }, align 32
@alps_flush_packet.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 1, i8 -113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"alps_flush_packet\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"alps: refusing packet %3ph (suspected interleaved ps/2)\0A\00", [39 x i8] zeroinitializer }, align 32
@alps_hw_init_v1_v2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 2027, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"alps: Failed to enable hardware tapping\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"alps_hw_init_v1_v2\00", [45 x i8] zeroinitializer }, align 32
@alps_hw_init_v1_v2._entry_ptr = internal global ptr @alps_hw_init_v1_v2._entry, section ".printk_index", align 4
@alps_hw_init_v1_v2._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 2032, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"alps: Failed to enable absolute mode\0A\00", [58 x i8] zeroinitializer }, align 32
@alps_hw_init_v1_v2._entry_ptr.48 = internal global ptr @alps_hw_init_v1_v2._entry.46, section ".printk_index", align 4
@alps_hw_init_v1_v2._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.2, i32 2043, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"alps: Failed to enable stream mode\0A\00", [60 x i8] zeroinitializer }, align 32
@alps_hw_init_v1_v2._entry_ptr.51 = internal global ptr @alps_hw_init_v1_v2._entry.49, section ".printk_index", align 4
@alps_hw_init_v3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 2230, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"alps: Failed to enter absolute mode\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"alps_hw_init_v3\00", [16 x i8] zeroinitializer }, align 32
@alps_hw_init_v3._entry_ptr = internal global ptr @alps_hw_init_v3._entry, section ".printk_index", align 4
@alps_hw_init_v3._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 2272, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"alps: Failed to enable data reporting\0A\00", [57 x i8] zeroinitializer }, align 32
@alps_hw_init_v3._entry_ptr.56 = internal global ptr @alps_hw_init_v3._entry.54, section ".printk_index", align 4
@alps_setup_trackstick_v3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 2179, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"alps: Failed to initialize trackstick (E7 report failed)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"alps_setup_trackstick_v3\00", [39 x i8] zeroinitializer }, align 32
@alps_setup_trackstick_v3._entry_ptr = internal global ptr @alps_setup_trackstick_v3._entry, section ".printk_index", align 4
@alps_setup_trackstick_v3.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 2, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"alps: trackstick E7 report: %3ph\0A\00", [62 x i8] zeroinitializer }, align 32
@alps_setup_trackstick_v3._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.58, ptr @.str.2, i32 2184, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"alps: Failed to enter into trackstick extended mode\0A\00", [43 x i8] zeroinitializer }, align 32
@alps_setup_trackstick_v3._entry_ptr.62 = internal global ptr @alps_setup_trackstick_v3._entry.60, section ".printk_index", align 4
@alps_enter_command_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 1811, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"alps: failed to enter command mode\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"alps_enter_command_mode\00", [40 x i8] zeroinitializer }, align 32
@alps_enter_command_mode._entry_ptr = internal global ptr @alps_enter_command_mode._entry, section ".printk_index", align 4
@alps_enter_command_mode.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 1, i8 -58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"alps: unknown response while entering command mode\0A\00", [44 x i8] zeroinitializer }, align 32
@alps_process_trackstick_packet_v3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 565, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"alps: Rejected trackstick packet from non DualPoint device\00", [37 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"alps_process_trackstick_packet_v3\00", [62 x i8] zeroinitializer }, align 32
@alps_process_trackstick_packet_v3._entry_ptr = internal global ptr @alps_process_trackstick_packet_v3._entry, section ".printk_index", align 4
@alps_process_trackstick_packet_v3.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 0, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"alps: Bad trackstick packet, discarding\0A\00", [55 x i8] zeroinitializer }, align 32
@alps_get_v3_v7_resolution.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.69, ptr @.str.2, ptr @.str.70, i8 2, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"alps_get_v3_v7_resolution\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"alps: pitch %dx%d num-electrodes %dx%d physical size %dx%d mm res %dx%d\0A\00", [55 x i8] zeroinitializer }, align 32
@alps_hw_init_v4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.71, ptr @.str.2, i32 2397, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"alps_hw_init_v4\00", [16 x i8] zeroinitializer }, align 32
@alps_hw_init_v4._entry_ptr = internal global ptr @alps_hw_init_v4._entry, section ".printk_index", align 4
@alps_hw_init_v4._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.71, ptr @.str.2, i32 2445, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@alps_hw_init_v4._entry_ptr.73 = internal global ptr @alps_hw_init_v4._entry.72, section ".printk_index", align 4
@alps_process_packet_v4.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@alps_hw_init_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.74, ptr @.str.2, i32 2082, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"alps_hw_init_v6\00", [16 x i8] zeroinitializer }, align 32
@alps_hw_init_v6._entry_ptr = internal global ptr @alps_hw_init_v6._entry, section ".printk_index", align 4
@alps_process_packet_v6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.75, ptr @.str.2, i32 841, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"alps_process_packet_v6\00", [41 x i8] zeroinitializer }, align 32
@alps_process_packet_v6._entry_ptr = internal global ptr @alps_process_packet_v6._entry, section ".printk_index", align 4
@alps_process_trackstick_packet_v7._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.76, ptr @.str.2, i32 1098, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"alps_process_trackstick_packet_v7\00", [62 x i8] zeroinitializer }, align 32
@alps_process_trackstick_packet_v7._entry_ptr = internal global ptr @alps_process_trackstick_packet_v7._entry, section ".printk_index", align 4
@alps_process_packet_ss4_v2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.77, ptr @.str.2, i32 1359, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"alps_process_packet_ss4_v2\00", [37 x i8] zeroinitializer }, align 32
@alps_process_packet_ss4_v2._entry_ptr = internal global ptr @alps_process_packet_ss4_v2._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 6]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 100]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 8, i64 176, i64 192]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 8, i64 20, i64 40]
@__sancov_gen_cov_switch_values.82 = internal global [11 x i64] [i64 9, i64 16, i64 256, i64 512, i64 768, i64 784, i64 1024, i64 1280, i64 1536, i64 1792, i64 2048]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 8, i64 115, i64 136]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 8, i64 115, i64 136]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 8, i64 115, i64 136]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 8, i64 115, i64 136]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 8, i64 115, i64 136]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 8, i64 115, i64 136]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@__sancov_gen_cov_switch_values.90 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 8, i64 115, i64 136]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 8, i64 115, i64 136]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 8, i64 115, i64 136]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 16, i64 768, i64 1024, i64 1280]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 8, i64 115, i64 136]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 29]
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 3096, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 3102, i32 46 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 3110, i32 16 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 3133, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 3145, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 3191, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 3215, i32 21 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 3217, i32 5 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 3217, i32 28 }
@___asan_gen_.157 = private unnamed_addr constant [11 x i8] c"alps_mutex\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1414, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1419, i32 45 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1421, i32 18 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1421, i32 29 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1428, i32 15 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1446, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1397, i32 8 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1637, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1647, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1530, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant [22 x i8] c"alps_v4_protocol_data\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 147, i32 40 }
@___asan_gen_.211 = private unnamed_addr constant [22 x i8] c"alps_v5_protocol_data\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 151, i32 40 }
@___asan_gen_.214 = private unnamed_addr constant [22 x i8] c"alps_v7_protocol_data\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 155, i32 40 }
@___asan_gen_.217 = private unnamed_addr constant [22 x i8] c"alps_v3_rushmore_data\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 143, i32 40 }
@___asan_gen_.220 = private unnamed_addr constant [22 x i8] c"alps_v3_protocol_data\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 139, i32 40 }
@___asan_gen_.223 = private unnamed_addr constant [22 x i8] c"alps_v8_protocol_data\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 159, i32 40 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2933, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2938, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1785, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant [16 x i8] c"alps_model_data\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 106, i32 37 }
@___asan_gen_.250 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2728, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant [24 x i8] c"alps_v3_nibble_commands\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 35, i32 42 }
@___asan_gen_.259 = private unnamed_addr constant [24 x i8] c"alps_v4_nibble_commands\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 54, i32 42 }
@___asan_gen_.262 = private unnamed_addr constant [24 x i8] c"alps_v6_nibble_commands\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 73, i32 42 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1594, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2027, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2032, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2043, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2230, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2272, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2179, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2182, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2184, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1811, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1816, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 564, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 571, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2319, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2397, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2445, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 2082, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 840, i32 4 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1097, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.385 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.386 = private constant [30 x i8] c"../drivers/input/mouse/alps.c\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1358, i32 4 }
@llvm.compiler.used = appending global [117 x ptr] [ptr @alps_enter_command_mode._entry, ptr @alps_enter_command_mode._entry_ptr, ptr @alps_hw_init_v1_v2._entry, ptr @alps_hw_init_v1_v2._entry.46, ptr @alps_hw_init_v1_v2._entry.49, ptr @alps_hw_init_v1_v2._entry_ptr, ptr @alps_hw_init_v1_v2._entry_ptr.48, ptr @alps_hw_init_v1_v2._entry_ptr.51, ptr @alps_hw_init_v3._entry, ptr @alps_hw_init_v3._entry.54, ptr @alps_hw_init_v3._entry_ptr, ptr @alps_hw_init_v3._entry_ptr.56, ptr @alps_hw_init_v4._entry, ptr @alps_hw_init_v4._entry.72, ptr @alps_hw_init_v4._entry_ptr, ptr @alps_hw_init_v4._entry_ptr.73, ptr @alps_hw_init_v6._entry, ptr @alps_hw_init_v6._entry_ptr, ptr @alps_identify._entry, ptr @alps_identify._entry_ptr, ptr @alps_init._entry, ptr @alps_init._entry.7, ptr @alps_init._entry_ptr, ptr @alps_init._entry_ptr.9, ptr @alps_process_packet_ss4_v2._entry, ptr @alps_process_packet_ss4_v2._entry_ptr, ptr @alps_process_packet_v6._entry, ptr @alps_process_packet_v6._entry_ptr, ptr @alps_process_trackstick_packet_v3._entry, ptr @alps_process_trackstick_packet_v3._entry_ptr, ptr @alps_process_trackstick_packet_v7._entry, ptr @alps_process_trackstick_packet_v7._entry_ptr, ptr @alps_register_bare_ps2_mouse._entry, ptr @alps_register_bare_ps2_mouse._entry.25, ptr @alps_register_bare_ps2_mouse._entry_ptr, ptr @alps_register_bare_ps2_mouse._entry_ptr.27, ptr @alps_setup_trackstick_v3._entry, ptr @alps_setup_trackstick_v3._entry.60, ptr @alps_setup_trackstick_v3._entry_ptr, ptr @alps_setup_trackstick_v3._entry_ptr.62, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @alps_init.__key, ptr @.str.10, ptr @alps_init.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @alps_mutex, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @alps_v4_protocol_data, ptr @alps_v5_protocol_data, ptr @alps_v7_protocol_data, ptr @alps_v3_rushmore_data, ptr @alps_v3_protocol_data, ptr @alps_v8_protocol_data, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @alps_model_data, ptr @alps_set_protocol.__key, ptr @.str.41, ptr @alps_v3_nibble_commands, ptr @alps_v4_nibble_commands, ptr @alps_v6_nibble_commands, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_init.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_register_bare_ps2_mouse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_register_bare_ps2_mouse._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_v4_protocol_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_v5_protocol_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_v7_protocol_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_v3_rushmore_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_v3_protocol_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_v8_protocol_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_identify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_model_data to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_set_protocol.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_v3_nibble_commands to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_v4_nibble_commands to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_v6_nibble_commands to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_hw_init_v1_v2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_hw_init_v1_v2._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_hw_init_v1_v2._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_hw_init_v3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_hw_init_v3._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_setup_trackstick_v3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_setup_trackstick_v3._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_enter_command_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_process_trackstick_packet_v3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_hw_init_v4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_hw_init_v4._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_hw_init_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_process_packet_v6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_process_trackstick_packet_v7._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_process_packet_ss4_v2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @alps_init(ptr noundef %psmouse) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %hw_init = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %hw_init to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_init, align 4
  %call = tail call i32 %5(ptr noundef %psmouse) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.init_fail_crit_edge

entry.init_fail_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %init_fail

if.end:                                           ; preds = %entry
  %evbit = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %evbit, align 4
  %and.i = and i32 %7, -15
  %relbit = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %relbit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %relbit, align 4
  %and.i222 = and i32 %9, -4
  store i32 %and.i222, ptr %relbit, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 6
  %arrayidx5 = getelementptr %struct.input_dev, ptr %3, i32 0, i32 6, i32 10
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5, align 4
  %or9 = or i32 %11, 1056
  store i32 %or9, ptr %arrayidx5, align 4
  %arrayidx11 = getelementptr %struct.input_dev, ptr %3, i32 0, i32 6, i32 8
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx11, align 4
  %or12 = or i32 %13, 196608
  store i32 %or12, ptr %arrayidx11, align 4
  %or15 = or i32 %and.i, 10
  store i32 %or15, ptr %evbit, align 8
  %set_abs_params = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 23
  %14 = ptrtoint ptr %set_abs_params to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_abs_params, align 4
  tail call void %15(ptr noundef %1, ptr noundef %3) #13
  %flags = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end.if.end24_crit_edge, label %if.then17

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %evbit, align 8
  %or20 = or i32 %19, 4
  store i32 %or20, ptr %evbit, align 8
  %20 = ptrtoint ptr %relbit to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %relbit, align 4
  %or23 = or i32 %21, 256
  store i32 %or23, ptr %relbit, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then17, %if.end.if.end24_crit_edge
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and26 = and i32 %23, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end24.if.end35_crit_edge, label %if.then28

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx11, align 4
  %or34 = or i32 %25, 6291456
  store i32 %or34, ptr %arrayidx11, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then28, %if.end24.if.end35_crit_edge
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %and37 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx11, align 4
  %or51 = or i32 %29, 15
  store i32 %or51, ptr %arrayidx11, align 4
  br label %if.end64

if.else:                                          ; preds = %if.end35
  %and53 = and i32 %27, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.else59, label %if.then55

if.then55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %propbit = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %propbit) #13
  tail call void @_clear_bit(i32 noundef 273, ptr noundef %keybit) #13
  br label %if.end64

if.else59:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx11, align 4
  %or62 = or i32 %31, 262144
  store i32 %or62, ptr %arrayidx11, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.else59, %if.then55, %if.then39
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  %and66 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end64.if.end109_crit_edge, label %if.then68

if.end64.if.end109_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109

if.then68:                                        ; preds = %if.end64
  %call69 = tail call ptr @input_allocate_device() #13
  %tobool70.not = icmp eq ptr %call69, null
  br i1 %tobool70.not, label %do.end, label %if.end73

do.end:                                           ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #15
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %34 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ps2dev, align 4
  %dev72 = getelementptr inbounds %struct.serio, ptr %35, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev72, ptr noundef nonnull @.str) #16
  br label %init_fail

if.end73:                                         ; preds = %if.then68
  %phys2 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 3
  %ps2dev75 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %36 = ptrtoint ptr %ps2dev75 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ps2dev75, align 4
  %phys = getelementptr inbounds %struct.serio, ptr %37, i32 0, i32 2
  %call78 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys2, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %phys)
  %phys81 = getelementptr inbounds %struct.input_dev, ptr %call69, i32 0, i32 1
  %38 = ptrtoint ptr %phys81 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %phys2, ptr %phys81, align 4
  %39 = ptrtoint ptr %call69 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.6, ptr %call69, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call69, i32 0, i32 3
  %40 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 17, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call69, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 2, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call69, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 8, ptr %product, align 4
  %proto_version = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 8
  %43 = ptrtoint ptr %proto_version to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %proto_version, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call69, i32 0, i32 3, i32 3
  %45 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %version, align 2
  %46 = ptrtoint ptr %ps2dev75 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ps2dev75, align 4
  %dev87 = getelementptr inbounds %struct.serio, ptr %47, i32 0, i32 18
  %parent = getelementptr inbounds %struct.input_dev, ptr %call69, i32 0, i32 40, i32 1
  %48 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %dev87, ptr %parent, align 8
  tail call void @input_set_capability(ptr noundef nonnull %call69, i32 noundef 2, i32 noundef 0) #13
  tail call void @input_set_capability(ptr noundef nonnull %call69, i32 noundef 2, i32 noundef 1) #13
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags, align 4
  %and90 = and i32 %50, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end73.if.end93_crit_edge, label %if.then92

if.end73.if.end93_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93

if.then92:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @input_set_capability(ptr noundef nonnull %call69, i32 noundef 3, i32 noundef 24) #13
  tail call void @input_set_abs_params(ptr noundef nonnull %call69, i32 noundef 24, i32 noundef 0, i32 noundef 127, i32 noundef 0, i32 noundef 0) #13
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %if.end73.if.end93_crit_edge
  tail call void @input_set_capability(ptr noundef nonnull %call69, i32 noundef 1, i32 noundef 272) #13
  tail call void @input_set_capability(ptr noundef nonnull %call69, i32 noundef 1, i32 noundef 273) #13
  tail call void @input_set_capability(ptr noundef nonnull %call69, i32 noundef 1, i32 noundef 274) #13
  %propbit94 = getelementptr inbounds %struct.input_dev, ptr %call69, i32 0, i32 4
  %51 = ptrtoint ptr %propbit94 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %propbit94, align 4
  %or.i223 = or i32 %52, 33
  store i32 %or.i223, ptr %propbit94, align 4
  %call98 = tail call i32 @input_register_device(ptr noundef nonnull %call69) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %cleanup, label %do.end103

do.end103:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %ps2dev75 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ps2dev75, align 4
  %dev106 = getelementptr inbounds %struct.serio, ptr %54, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev106, ptr noundef nonnull @.str.8, i32 noundef %call98) #16
  tail call void @input_free_device(ptr noundef nonnull %call69) #13
  br label %init_fail

cleanup:                                          ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  %dev2108 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 1
  %55 = ptrtoint ptr %dev2108 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call69, ptr %dev2108, align 4
  br label %if.end109

if.end109:                                        ; preds = %cleanup, %if.end64.if.end109_crit_edge
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %psmouse, ptr %1, align 4
  %dev3_register_work = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 5
  tail call void @__init_work(ptr noundef %dev3_register_work, i32 noundef 0) #13
  %57 = ptrtoint ptr %dev3_register_work to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -64, ptr %dev3_register_work, align 4
  %lockdep_map = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 5, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @alps_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry119 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 5, i32 0, i32 1
  %58 = ptrtoint ptr %entry119 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %entry119, ptr %entry119, align 4
  %prev.i = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 5, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %entry119, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 5, i32 0, i32 2
  %60 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @alps_register_bare_ps2_mouse, ptr %func, align 4
  %timer = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.12, ptr noundef nonnull @alps_init.__key.11) #13
  %protocol_handler = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 26
  %61 = ptrtoint ptr %protocol_handler to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @alps_process_byte, ptr %protocol_handler, align 4
  %poll = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 34
  %62 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @alps_poll, ptr %poll, align 4
  %disconnect = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 32
  %63 = ptrtoint ptr %disconnect to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @alps_disconnect, ptr %disconnect, align 4
  %reconnect = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 30
  %64 = ptrtoint ptr %reconnect to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @alps_reconnect, ptr %reconnect, align 4
  %proto_version130 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 8
  %65 = ptrtoint ptr %proto_version130 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %proto_version130, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %66)
  %cmp = icmp eq i16 %66, 1024
  %conv132 = select i1 %cmp, i8 8, i8 6
  %pktsize = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %67 = ptrtoint ptr %pktsize to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv132, ptr %pktsize, align 2
  %resync_time = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 24
  %68 = ptrtoint ptr %resync_time to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %resync_time, align 4
  %69 = shl nuw nsw i8 %conv132, 1
  %mul = zext i8 %69 to i32
  %resetafter = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 23
  %70 = ptrtoint ptr %resetafter to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %mul, ptr %resetafter, align 4
  br label %cleanup138

init_fail:                                        ; preds = %do.end103, %do.end, %entry.init_fail_crit_edge
  %error.1 = phi i32 [ %call, %entry.init_fail_crit_edge ], [ -12, %do.end ], [ %call98, %do.end103 ]
  %call135 = tail call i32 @psmouse_reset(ptr noundef %psmouse) #13
  %71 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %psmouse, align 4
  tail call void @kfree(ptr noundef %72) #13
  %73 = ptrtoint ptr %psmouse to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %psmouse, align 4
  br label %cleanup138

cleanup138:                                       ; preds = %init_fail, %if.end109
  %retval.0 = phi i32 [ %error.1, %init_fail ], [ 0, %if.end109 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alps_register_bare_ps2_mouse(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -76
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @alps_mutex, i32 noundef 0) #13
  %dev32 = getelementptr i8, ptr %work, i32 -68
  %2 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev32, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.if.end37_crit_edge

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.end:                                           ; preds = %entry
  %call = tail call ptr @input_allocate_device() #13
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #16
  br label %if.end37.sink.split

if.end5:                                          ; preds = %if.end
  %phys3 = getelementptr i8, ptr %work, i32 -32
  %ps2dev6 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %ps2dev6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ps2dev6, align 4
  %phys = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 2
  %dev2 = getelementptr i8, ptr %work, i32 -72
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  %tobool9.not = icmp eq ptr %9, null
  %cond = select i1 %tobool9.not, ptr @.str.23, ptr @.str.22
  %call10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys3, i32 noundef 32, ptr noundef nonnull @.str.21, ptr noundef %phys, ptr noundef nonnull %cond)
  %phys13 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %phys13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %phys3, ptr %phys13, align 4
  %11 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.24, ptr %call, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 17, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %version, align 2
  %16 = ptrtoint ptr %ps2dev6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ps2dev6, align 4
  %dev19 = getelementptr inbounds %struct.serio, ptr %17, i32 0, i32 18
  %parent = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 1
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev19, ptr %parent, align 8
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 2, i32 noundef 0) #13
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 2, i32 noundef 1) #13
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 272) #13
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 273) #13
  tail call void @input_set_capability(ptr noundef nonnull %call, i32 noundef 1, i32 noundef 274) #13
  %propbit = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 4
  %19 = ptrtoint ptr %propbit to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %propbit, align 4
  %or.i = or i32 %20, 1
  store i32 %or.i, ptr %propbit, align 4
  %call22 = tail call i32 @input_register_device(ptr noundef nonnull %call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end5.if.end37.sink.split_crit_edge, label %do.end27

if.end5.if.end37.sink.split_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.sink.split

do.end27:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %ps2dev6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ps2dev6, align 4
  %dev30 = getelementptr inbounds %struct.serio, ptr %22, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.26, i32 noundef %call22) #16
  tail call void @input_free_device(ptr noundef nonnull %call) #13
  %phi.cast = inttoptr i32 %call22 to ptr
  br label %if.end37.sink.split

if.end37.sink.split:                              ; preds = %do.end27, %if.end5.if.end37.sink.split_crit_edge, %do.end
  %call.sink = phi ptr [ %call, %if.end5.if.end37.sink.split_crit_edge ], [ %phi.cast, %do.end27 ], [ inttoptr (i32 -12 to ptr), %do.end ]
  %23 = ptrtoint ptr %dev32 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.sink, ptr %dev32, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %entry.if.end37_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @alps_mutex) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_process_byte(ptr noundef %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %proto_version = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %proto_version to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %proto_version, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %3)
  %cmp.not = icmp eq i16 %3, 2048
  br i1 %cmp.not, label %entry.if.end11_crit_edge, label %land.lhs.true

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %out_of_sync_cnt = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 16
  %4 = ptrtoint ptr %out_of_sync_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out_of_sync_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %land.lhs.true2, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

land.lhs.true2:                                   ; preds = %land.lhs.true
  %packet = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %6 = ptrtoint ptr %packet to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %packet, align 4
  %8 = and i8 %7, -56
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp4 = icmp eq i8 %8, 8
  br i1 %cmp4, label %if.then, label %land.lhs.true2.if.end11_crit_edge

land.lhs.true2.if.end11_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then:                                          ; preds = %land.lhs.true2
  %pktcnt = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 9
  %9 = ptrtoint ptr %pktcnt to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pktcnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp7 = icmp eq i8 %10, 3
  br i1 %cmp7, label %if.then9, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %3)
  %cmp.i = icmp eq i16 %3, 512
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then9.if.else.i_crit_edge

if.then9.if.else.i_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then9
  %flags.i = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev22.i = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 1
  %dev3.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %13 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev3.i, align 4
  br label %if.end14.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then9.if.else.i_crit_edge
  %dev34.i = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %dev34.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev34.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  %cmp.i.i = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then7.i, label %if.else.i.if.end14.i_crit_edge, !prof !198

if.else.i.if.end14.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

if.then7.i:                                       ; preds = %if.else.i
  br i1 %cmp.i.i, label %if.then7.i.cleanup_crit_edge, label %if.then10.i

if.then7.i.cleanup_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev3_register_work.i = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 5
  tail call void @psmouse_queue_work(ptr noundef %psmouse, ptr noundef %dev3_register_work.i, i32 noundef 0) #13
  br label %cleanup

if.end14.i:                                       ; preds = %if.else.i.if.end14.i_crit_edge, %if.then.i
  %dev.0.in.i = phi ptr [ %dev22.i, %if.then.i ], [ %dev34.i, %if.else.i.if.end14.i_crit_edge ]
  %dev2.0.i = phi ptr [ %14, %if.then.i ], [ null, %if.else.i.if.end14.i_crit_edge ]
  %17 = ptrtoint ptr %dev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %dev.0.i = load ptr, ptr %dev.0.in.i, align 4
  %conv17.i = zext i8 %7 to i32
  %and18.i = and i32 %conv17.i, 1
  %and21.i = and i32 %conv17.i, 2
  %and24.i = and i32 %conv17.i, 4
  tail call fastcc void @alps_report_buttons(ptr noundef %dev.0.i, ptr noundef %dev2.0.i, i32 noundef %and18.i, i32 noundef %and21.i, i32 noundef %and24.i) #13
  tail call void @psmouse_report_standard_motion(ptr noundef %dev.0.i, ptr noundef %packet) #13
  tail call void @input_event(ptr noundef %dev.0.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true2.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %entry.if.end11_crit_edge
  %flags = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and12 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end27_crit_edge, label %land.lhs.true14

if.end11.if.end27_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

land.lhs.true14:                                  ; preds = %if.end11
  %pktcnt15 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 9
  %20 = ptrtoint ptr %pktcnt15 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pktcnt15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %21)
  %cmp17 = icmp ugt i8 %21, 3
  br i1 %cmp17, label %land.lhs.true19, label %land.lhs.true14.if.end27_crit_edge

land.lhs.true14.if.end27_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

land.lhs.true19:                                  ; preds = %land.lhs.true14
  %arrayidx21 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx21, align 1
  %24 = and i8 %23, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %24)
  %cmp24 = icmp eq i8 %24, 15
  br i1 %cmp24, label %if.then26, label %land.lhs.true19.if.end27_crit_edge

land.lhs.true19.if.end27_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then26:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call fastcc i32 @alps_handle_interleaved_ps2(ptr noundef %psmouse)
  br label %cleanup

if.end27:                                         ; preds = %land.lhs.true19.if.end27_crit_edge, %land.lhs.true14.if.end27_crit_edge, %if.end11.if.end27_crit_edge
  %packet28 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %25 = ptrtoint ptr %packet28 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %packet28, align 4
  %mask0.i = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 10
  %27 = ptrtoint ptr %mask0.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %mask0.i, align 1
  %and5.i = and i8 %28, %26
  %byte0.i = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 9
  %29 = ptrtoint ptr %byte0.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %byte0.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %and5.i, i8 %30)
  %cmp.i206 = icmp eq i8 %and5.i, %30
  br i1 %cmp.i206, label %if.end43, label %do.body

do.body:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alps_process_byte.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alps_process_byte, %if.then36)) #13
          to label %cleanup [label %if.then36], !srcloc !199

if.then36:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %31 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %32, i32 0, i32 18
  %33 = ptrtoint ptr %packet28 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %packet28, align 4
  %conv39 = zext i8 %34 to i32
  %35 = ptrtoint ptr %mask0.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %mask0.i, align 1
  %conv40 = zext i8 %36 to i32
  %37 = ptrtoint ptr %byte0.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %byte0.i, align 2
  %conv41 = zext i8 %38 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alps_process_byte.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %conv39, i32 noundef %conv40, i32 noundef %conv41) #13
  br label %cleanup

if.end43:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp2(i16 1280, i16 %3)
  %cmp46 = icmp ult i16 %3, 1280
  br i1 %cmp46, label %land.lhs.true48, label %if.end109

land.lhs.true48:                                  ; preds = %if.end43
  %pktcnt49 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 9
  %39 = ptrtoint ptr %pktcnt49 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pktcnt49, align 1
  %conv50 = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %40)
  %cmp51 = icmp ugt i8 %40, 1
  br i1 %cmp51, label %land.lhs.true53, label %land.lhs.true48.lor.lhs.false_crit_edge

land.lhs.true48.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

land.lhs.true53:                                  ; preds = %land.lhs.true48
  %pktsize = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %41 = ptrtoint ptr %pktsize to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %pktsize, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %42)
  %cmp57.not = icmp ugt i8 %40, %42
  br i1 %cmp57.not, label %land.lhs.true53.lor.lhs.false_crit_edge, label %land.lhs.true59

land.lhs.true53.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

land.lhs.true59:                                  ; preds = %land.lhs.true53
  %sub = add nsw i32 %conv50, -1
  %arrayidx63 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 %sub
  %43 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx63, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %44)
  %tobool66.not = icmp sgt i8 %44, -1
  br i1 %tobool66.not, label %land.lhs.true59.lor.lhs.false_crit_edge, label %do.body68

land.lhs.true59.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

do.body68:                                        ; preds = %land.lhs.true59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alps_process_byte.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alps_process_byte, %if.then80)) #13
          to label %do.end95 [label %if.then80], !srcloc !199

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #15
  %ps2dev81 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %45 = ptrtoint ptr %ps2dev81 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ps2dev81, align 4
  %dev83 = getelementptr inbounds %struct.serio, ptr %46, i32 0, i32 18
  %47 = ptrtoint ptr %pktcnt49 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pktcnt49, align 1
  %conv85 = zext i8 %48 to i32
  %sub86 = add nsw i32 %conv85, -1
  %arrayidx91 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 %sub86
  %49 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx91, align 1
  %conv92 = zext i8 %50 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alps_process_byte.__UNIQUE_ID_ddebug239, ptr noundef %dev83, ptr noundef nonnull @.str.32, i32 noundef %sub86, i32 noundef %conv92) #13
  br label %do.end95

do.end95:                                         ; preds = %if.then80, %do.body68
  %51 = ptrtoint ptr %proto_version to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %proto_version, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 784, i16 %52)
  %cmp98 = icmp eq i16 %52, 784
  br i1 %cmp98, label %land.lhs.true100, label %do.end95.if.end108_crit_edge

do.end95.if.end108_crit_edge:                     ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end108

land.lhs.true100:                                 ; preds = %do.end95
  %53 = ptrtoint ptr %pktcnt49 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %pktcnt49, align 1
  %55 = ptrtoint ptr %pktsize to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %pktsize, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %54, i8 %56)
  %cmp105 = icmp eq i8 %54, %56
  br i1 %cmp105, label %land.lhs.true100.cleanup_crit_edge, label %land.lhs.true100.if.end108_crit_edge

land.lhs.true100.if.end108_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end108

land.lhs.true100.cleanup_crit_edge:               ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end108:                                        ; preds = %land.lhs.true100.if.end108_crit_edge, %do.end95.if.end108_crit_edge
  br label %cleanup

if.end109:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp2(i16 1792, i16 %3)
  %cmp112 = icmp eq i16 %3, 1792
  br i1 %cmp112, label %land.lhs.true114, label %if.end109.lor.lhs.false_crit_edge

if.end109.lor.lhs.false_crit_edge:                ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

land.lhs.true114:                                 ; preds = %if.end109
  %pktcnt.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 9
  %57 = ptrtoint ptr %pktcnt.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %pktcnt.i, align 1
  %59 = zext i8 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values)
  switch i8 %58, label %land.lhs.true114.lor.lhs.false_crit_edge [
    i8 3, label %alps_is_valid_package_v7.exit
    i8 4, label %sw.bb3.i
    i8 6, label %sw.bb10.i
  ]

land.lhs.true114.lor.lhs.false_crit_edge:         ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

sw.bb3.i:                                         ; preds = %land.lhs.true114
  %arrayidx5.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %60 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx5.i, align 1
  %62 = and i8 %61, 72
  call void @__sanitizer_cov_trace_const_cmp1(i8 72, i8 %62)
  %cmp8.i = icmp eq i8 %62, 72
  br i1 %cmp8.i, label %sw.bb3.i.lor.lhs.false_crit_edge, label %sw.bb3.i.do.body123_crit_edge

sw.bb3.i.do.body123_crit_edge:                    ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body123

sw.bb3.i.lor.lhs.false_crit_edge:                 ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

sw.bb10.i:                                        ; preds = %land.lhs.true114
  %arrayidx12.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 5
  %63 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx12.i, align 1
  %65 = and i8 %64, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp15.i = icmp eq i8 %65, 0
  br i1 %cmp15.i, label %sw.bb10.i.lor.lhs.false_crit_edge, label %sw.bb10.i.do.body123_crit_edge

sw.bb10.i.do.body123_crit_edge:                   ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body123

sw.bb10.i.lor.lhs.false_crit_edge:                ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

alps_is_valid_package_v7.exit:                    ; preds = %land.lhs.true114
  %arrayidx.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.i, align 2
  %68 = and i8 %67, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp.i207.not = icmp eq i8 %68, 0
  br i1 %cmp.i207.not, label %alps_is_valid_package_v7.exit.do.body123_crit_edge, label %alps_is_valid_package_v7.exit.lor.lhs.false_crit_edge

alps_is_valid_package_v7.exit.lor.lhs.false_crit_edge: ; preds = %alps_is_valid_package_v7.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

alps_is_valid_package_v7.exit.do.body123_crit_edge: ; preds = %alps_is_valid_package_v7.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body123

lor.lhs.false:                                    ; preds = %alps_is_valid_package_v7.exit.lor.lhs.false_crit_edge, %sw.bb10.i.lor.lhs.false_crit_edge, %sw.bb3.i.lor.lhs.false_crit_edge, %land.lhs.true114.lor.lhs.false_crit_edge, %if.end109.lor.lhs.false_crit_edge, %land.lhs.true59.lor.lhs.false_crit_edge, %land.lhs.true53.lor.lhs.false_crit_edge, %land.lhs.true48.lor.lhs.false_crit_edge
  br i1 %cmp.not, label %land.lhs.true120, label %lor.lhs.false.if.end151_crit_edge

lor.lhs.false.if.end151_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end151

land.lhs.true120:                                 ; preds = %lor.lhs.false
  %pktcnt.i209 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 9
  %69 = ptrtoint ptr %pktcnt.i209 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %pktcnt.i209, align 1
  %71 = zext i8 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.78)
  switch i8 %70, label %land.lhs.true120.if.end151_crit_edge [
    i8 4, label %land.lhs.true.i211
    i8 6, label %land.lhs.true9.i
  ]

land.lhs.true120.if.end151_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end151

land.lhs.true.i211:                               ; preds = %land.lhs.true120
  %arrayidx.i210 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %72 = ptrtoint ptr %arrayidx.i210 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i210, align 1
  %74 = and i8 %73, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp3.not.not.i = icmp eq i8 %74, 0
  br i1 %cmp3.not.not.i, label %land.lhs.true.i211.do.body123_crit_edge, label %land.lhs.true.i211.if.end151_crit_edge

land.lhs.true.i211.if.end151_crit_edge:           ; preds = %land.lhs.true.i211
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end151

land.lhs.true.i211.do.body123_crit_edge:          ; preds = %land.lhs.true.i211
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body123

land.lhs.true9.i:                                 ; preds = %land.lhs.true120
  %arrayidx11.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 5
  %75 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx11.i, align 1
  %77 = and i8 %76, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp14.not.i = icmp eq i8 %77, 0
  br i1 %cmp14.not.i, label %land.lhs.true9.i.if.end151_crit_edge, label %land.lhs.true9.i.do.body123_crit_edge

land.lhs.true9.i.do.body123_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body123

land.lhs.true9.i.if.end151_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end151

do.body123:                                       ; preds = %land.lhs.true9.i.do.body123_crit_edge, %land.lhs.true.i211.do.body123_crit_edge, %alps_is_valid_package_v7.exit.do.body123_crit_edge, %sw.bb10.i.do.body123_crit_edge, %sw.bb3.i.do.body123_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alps_process_byte.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alps_process_byte, %if.then135)) #13
          to label %cleanup [label %if.then135], !srcloc !199

if.then135:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #15
  %ps2dev136 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %78 = ptrtoint ptr %ps2dev136 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ps2dev136, align 4
  %dev138 = getelementptr inbounds %struct.serio, ptr %79, i32 0, i32 18
  %pktcnt139 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 9
  %80 = ptrtoint ptr %pktcnt139 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %pktcnt139, align 1
  %conv140 = zext i8 %81 to i32
  %sub141 = add nsw i32 %conv140, -1
  %arrayidx146 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 %sub141
  %82 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx146, align 1
  %conv147 = zext i8 %83 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alps_process_byte.__UNIQUE_ID_ddebug240, ptr noundef %dev138, ptr noundef nonnull @.str.32, i32 noundef %sub141, i32 noundef %conv147) #13
  br label %cleanup

if.end151:                                        ; preds = %land.lhs.true9.i.if.end151_crit_edge, %land.lhs.true.i211.if.end151_crit_edge, %land.lhs.true120.if.end151_crit_edge, %lor.lhs.false.if.end151_crit_edge
  %pktcnt152 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 9
  %84 = ptrtoint ptr %pktcnt152 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %pktcnt152, align 1
  %pktsize154 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %86 = ptrtoint ptr %pktsize154 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %pktsize154, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %85, i8 %87)
  %cmp156 = icmp eq i8 %85, %87
  br i1 %cmp156, label %if.then158, label %if.end151.cleanup_crit_edge

if.end151.cleanup_crit_edge:                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then158:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #15
  %process_packet = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 21
  %88 = ptrtoint ptr %process_packet to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %process_packet, align 4
  tail call void %89(ptr noundef %psmouse) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then158, %if.end151.cleanup_crit_edge, %if.then135, %do.body123, %if.end108, %land.lhs.true100.cleanup_crit_edge, %if.then36, %do.body, %if.then26, %if.end14.i, %if.then10.i, %if.then7.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then26 ], [ 0, %if.end108 ], [ 2, %if.then158 ], [ 1, %if.then.cleanup_crit_edge ], [ 0, %if.then36 ], [ 2, %land.lhs.true100.cleanup_crit_edge ], [ 0, %if.then135 ], [ 1, %if.end151.cleanup_crit_edge ], [ 2, %if.then7.i.cleanup_crit_edge ], [ 2, %if.then10.i ], [ 2, %if.end14.i ], [ 0, %do.body ], [ 0, %do.body123 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_poll(ptr noundef %psmouse) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #13
  %flags = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %buf, align 8
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call fastcc i32 @alps_passthrough_mode_v2(ptr noundef %psmouse, i1 noundef zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %pktsize = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %5 = ptrtoint ptr %pktsize to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pktsize, align 2
  %conv = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %shl, 235
  %call1 = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %buf, i32 noundef %or) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and4 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = call fastcc i32 @alps_passthrough_mode_v2(ptr noundef %psmouse, i1 noundef zeroext false)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %lor.lhs.false

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end8
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buf, align 8
  %mask0 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %mask0 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mask0, align 1
  %and1345 = and i8 %12, %10
  %byte0 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %byte0 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %byte0, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %and1345, i8 %14)
  %cmp15.not = icmp eq i8 %and1345, %14
  br i1 %cmp15.not, label %if.end18, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  %badbyte = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 8
  %15 = ptrtoint ptr %badbyte to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %badbyte, align 4
  %17 = and i8 %16, -56
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %17)
  %cmp21 = icmp eq i8 %17, 8
  br i1 %cmp21, label %if.then23, label %if.end18.if.end30_crit_edge

if.end18.if.end30_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then23:                                        ; preds = %if.end18
  %call26 = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %buf, i32 noundef 1003) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then23.if.end30_crit_edge, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then23.if.end30_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.end30:                                         ; preds = %if.then23.if.end30_crit_edge, %if.end18.if.end30_crit_edge
  %packet = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %buf, align 8
  %20 = ptrtoint ptr %packet to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %packet, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then23.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %if.end8.cleanup_crit_edge ], [ -1, %if.then23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alps_disconnect(ptr noundef %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %call = tail call i32 @psmouse_reset(ptr noundef %psmouse) #13
  %timer = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 30
  %call1 = tail call i32 @del_timer_sync(ptr noundef %timer) #13
  %dev2 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @input_unregister_device(ptr noundef nonnull %3) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev3 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @input_unregister_device(ptr noundef nonnull %5) #13
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  tail call void @kfree(ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_reconnect(ptr noundef %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %call = tail call i32 @psmouse_reset(ptr noundef %psmouse) #13
  %call1 = tail call fastcc i32 @alps_identify(ptr noundef %psmouse, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %hw_init = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %hw_init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_init, align 4
  %call2 = tail call i32 %3(ptr noundef %psmouse) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @alps_detect(ptr noundef %psmouse, i1 noundef zeroext %set_properties) local_unnamed_addr #0 align 64 {
entry:
  %param.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @alps_identify(ptr noundef %psmouse, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param.i) #13
  %0 = ptrtoint ptr %param.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %param.i, align 2
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call.i = call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef nonnull %param.i, i32 noundef 737) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.alps_is_cs19_trackpoint.exit.thread_crit_edge

if.end.alps_is_cs19_trackpoint.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_is_cs19_trackpoint.exit.thread

if.end.i:                                         ; preds = %if.end
  %1 = ptrtoint ptr %param.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %param.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp.i = icmp eq i8 %2, 2
  br i1 %cmp.i, label %alps_is_cs19_trackpoint.exit, label %if.end.i.alps_is_cs19_trackpoint.exit.thread_crit_edge

if.end.i.alps_is_cs19_trackpoint.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_is_cs19_trackpoint.exit.thread

alps_is_cs19_trackpoint.exit.thread:              ; preds = %if.end.i.alps_is_cs19_trackpoint.exit.thread_crit_edge, %if.end.alps_is_cs19_trackpoint.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param.i) #13
  br label %if.end10

alps_is_cs19_trackpoint.exit:                     ; preds = %if.end.i
  %arrayidx2.i = getelementptr inbounds [2 x i8], ptr %param.i, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2.i, align 1
  %5 = and i8 %4, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %5)
  %cmp4.i = icmp eq i8 %5, 32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param.i) #13
  br i1 %cmp4.i, label %do.body, label %alps_is_cs19_trackpoint.exit.if.end10_crit_edge

alps_is_cs19_trackpoint.exit.if.end10_crit_edge:  ; preds = %alps_is_cs19_trackpoint.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

do.body:                                          ; preds = %alps_is_cs19_trackpoint.exit
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alps_detect.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alps_detect, %if.then8)) #13
          to label %cleanup [label %if.then8], !srcloc !199

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ps2dev.i, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alps_detect.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.15) #13
  br label %cleanup

if.end10:                                         ; preds = %alps_is_cs19_trackpoint.exit.if.end10_crit_edge, %alps_is_cs19_trackpoint.exit.thread
  %call11 = call i32 @psmouse_reset(ptr noundef %psmouse) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 352) #17
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %call16 = call fastcc i32 @alps_identify(ptr noundef %psmouse, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  br i1 %set_properties, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %vendor = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 4
  %9 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.16, ptr %vendor, align 4
  %flags = getelementptr inbounds %struct.alps_data, ptr %call7.i.i, i32 0, i32 13
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool22.not, ptr @.str.18, ptr @.str.17
  %name = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 5
  %12 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cond, ptr %name, align 4
  %proto_version = getelementptr inbounds %struct.alps_data, ptr %call7.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %proto_version to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %proto_version, align 8
  %conv = zext i16 %14 to i32
  %model = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 14
  %15 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv, ptr %model, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  %16 = ptrtoint ptr %psmouse to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %psmouse, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then21, %if.then18, %if.end10.cleanup_crit_edge, %if.then8, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.then18 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.then8 ], [ -12, %if.end10.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then21 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alps_identify(ptr noundef %psmouse, ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %e6 = alloca [4 x i8], align 4
  %e7 = alloca [4 x i8], align 4
  %ec = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e6) #13
  %0 = getelementptr inbounds [4 x i8], ptr %e6, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %e6, i32 0, i32 2
  %2 = ptrtoint ptr %e6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %e6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e7) #13
  %3 = getelementptr inbounds [4 x i8], ptr %e7, i32 0, i32 1
  %4 = getelementptr inbounds [4 x i8], ptr %e7, i32 0, i32 2
  %5 = ptrtoint ptr %e7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %e7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ec) #13
  %6 = getelementptr inbounds [4 x i8], ptr %ec, i32 0, i32 1
  %7 = getelementptr inbounds [4 x i8], ptr %ec, i32 0, i32 2
  %8 = ptrtoint ptr %ec to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %ec, align 4
  %call = call fastcc i32 @alps_rpt_cmd(ptr noundef %psmouse, i32 noundef 4328, i32 noundef 230, ptr noundef nonnull %e6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %e6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %e6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %10)
  %cmp.not = icmp ult i8 %10, 8
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp4.not = icmp eq i8 %12, 0
  br i1 %cmp4.not, label %lor.lhs.false6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 2
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %14, label %lor.lhs.false6.cleanup_crit_edge [
    i8 10, label %lor.lhs.false6.if.end16_crit_edge
    i8 100, label %lor.lhs.false6.if.end16_crit_edge225
  ]

lor.lhs.false6.if.end16_crit_edge225:             ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

lor.lhs.false6.if.end16_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false6.if.end16_crit_edge, %lor.lhs.false6.if.end16_crit_edge225
  %call18 = call fastcc i32 @alps_rpt_cmd(ptr noundef %psmouse, i32 noundef 4328, i32 noundef 231, ptr noundef nonnull %e7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %lor.lhs.false20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false20:                                  ; preds = %if.end16
  %call22 = call fastcc i32 @alps_rpt_cmd(ptr noundef %psmouse, i32 noundef 4328, i32 noundef 236, ptr noundef nonnull %ec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %lor.lhs.false24, label %lor.lhs.false20.cleanup_crit_edge

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %ps2dev1.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call.i = call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef null, i32 noundef 234) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i.not, label %if.end28, label %lor.lhs.false24.cleanup_crit_edge

lor.lhs.false24.cleanup_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false24
  %call31 = call fastcc ptr @alps_match_table(ptr noundef nonnull %e7)
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.then33, label %if.end28.if.end194_crit_edge

if.end28.if.end194_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end194

if.then33:                                        ; preds = %if.end28
  %16 = ptrtoint ptr %e7 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %e7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %17)
  %cmp36 = icmp eq i8 %17, 115
  br i1 %cmp36, label %land.lhs.true38, label %if.then33.if.else84thread-pre-split_crit_edge

if.then33.if.else84thread-pre-split_crit_edge:    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else84thread-pre-split

land.lhs.true38:                                  ; preds = %if.then33
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp41 = icmp eq i8 %19, 2
  br i1 %cmp41, label %land.lhs.true43, label %land.lhs.true38.land.lhs.true58_crit_edge

land.lhs.true38.land.lhs.true58_crit_edge:        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true58

land.lhs.true43:                                  ; preds = %land.lhs.true38
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %4, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %21)
  %cmp46 = icmp eq i8 %21, 100
  br i1 %cmp46, label %land.lhs.true48, label %land.lhs.true43.if.else84thread-pre-split_crit_edge

land.lhs.true43.if.else84thread-pre-split_crit_edge: ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else84thread-pre-split

land.lhs.true48:                                  ; preds = %land.lhs.true43
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %7, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -118, i8 %23)
  %cmp51 = icmp eq i8 %23, -118
  br i1 %cmp51, label %land.lhs.true48.if.end194_crit_edge, label %land.lhs.true58thread-pre-split

land.lhs.true48.if.end194_crit_edge:              ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end194

land.lhs.true58thread-pre-split:                  ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %.pr = load i8, ptr %3, align 1
  br label %land.lhs.true58

land.lhs.true58:                                  ; preds = %land.lhs.true58thread-pre-split, %land.lhs.true38.land.lhs.true58_crit_edge
  %25 = phi i8 [ %.pr, %land.lhs.true58thread-pre-split ], [ %19, %land.lhs.true38.land.lhs.true58_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %25)
  %cmp61 = icmp eq i8 %25, 3
  br i1 %cmp61, label %land.lhs.true63, label %land.lhs.true58.if.else84thread-pre-split_crit_edge

land.lhs.true58.if.else84thread-pre-split_crit_edge: ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else84thread-pre-split

land.lhs.true63:                                  ; preds = %land.lhs.true58
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %4, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %27)
  %cmp66 = icmp eq i8 %27, 80
  br i1 %cmp66, label %land.lhs.true68, label %land.lhs.true63.if.else84thread-pre-split_crit_edge

land.lhs.true63.if.else84thread-pre-split_crit_edge: ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else84thread-pre-split

land.lhs.true68:                                  ; preds = %land.lhs.true63
  %28 = ptrtoint ptr %ec to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ec, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %29)
  %cmp71 = icmp eq i8 %29, 115
  br i1 %cmp71, label %land.lhs.true73, label %land.lhs.true68.if.else84_crit_edge

land.lhs.true68.if.else84_crit_edge:              ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else84

land.lhs.true73:                                  ; preds = %land.lhs.true68
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %6, align 1
  %.off = add i8 %31, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %land.lhs.true73.if.end194_crit_edge, label %land.lhs.true73.if.else84thread-pre-split_crit_edge

land.lhs.true73.if.else84thread-pre-split_crit_edge: ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else84thread-pre-split

land.lhs.true73.if.end194_crit_edge:              ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end194

if.else84thread-pre-split:                        ; preds = %land.lhs.true73.if.else84thread-pre-split_crit_edge, %land.lhs.true63.if.else84thread-pre-split_crit_edge, %land.lhs.true58.if.else84thread-pre-split_crit_edge, %land.lhs.true43.if.else84thread-pre-split_crit_edge, %if.then33.if.else84thread-pre-split_crit_edge
  %32 = ptrtoint ptr %ec to i32
  call void @__asan_load1_noabort(i32 %32)
  %.pr222 = load i8, ptr %ec, align 4
  br label %if.else84

if.else84:                                        ; preds = %if.else84thread-pre-split, %land.lhs.true68.if.else84_crit_edge
  %33 = phi i8 [ %.pr222, %if.else84thread-pre-split ], [ %29, %land.lhs.true68.if.else84_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %33)
  %cmp87 = icmp eq i8 %33, -120
  br i1 %cmp87, label %land.lhs.true89, label %if.else84.if.else134_crit_edge

if.else84.if.else134_crit_edge:                   ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else134

land.lhs.true89:                                  ; preds = %if.else84
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %6, align 1
  %36 = and i8 %35, -16
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %36, label %land.lhs.true107 [
    i8 -80, label %land.lhs.true89.if.end194_crit_edge
    i8 -64, label %land.lhs.true89.if.end194_crit_edge226
  ]

land.lhs.true89.if.end194_crit_edge226:           ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end194

land.lhs.true89.if.end194_crit_edge:              ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end194

land.lhs.true107:                                 ; preds = %land.lhs.true89
  %38 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %39)
  %cmp110 = icmp eq i8 %39, 8
  br i1 %cmp110, label %land.lhs.true107.if.end194_crit_edge, label %land.lhs.true118

land.lhs.true107.if.end194_crit_edge:             ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end194

land.lhs.true118:                                 ; preds = %land.lhs.true107
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %41)
  %cmp121 = icmp eq i8 %41, 7
  br i1 %cmp121, label %land.lhs.true123, label %land.lhs.true118.if.else134_crit_edge

land.lhs.true118.if.else134_crit_edge:            ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else134

land.lhs.true123:                                 ; preds = %land.lhs.true118
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %7, align 2
  %44 = add i8 %43, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %44)
  %45 = icmp ult i8 %44, 14
  br i1 %45, label %land.lhs.true123.if.end194_crit_edge, label %land.lhs.true123.if.else134_crit_edge

land.lhs.true123.if.else134_crit_edge:            ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else134

land.lhs.true123.if.end194_crit_edge:             ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end194

if.else134:                                       ; preds = %land.lhs.true123.if.else134_crit_edge, %land.lhs.true118.if.else134_crit_edge, %if.else84.if.else134_crit_edge
  br i1 %cmp36, label %land.lhs.true139, label %if.else134.do.body174_crit_edge

if.else134.do.body174_crit_edge:                  ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body174

land.lhs.true139:                                 ; preds = %if.else134
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %47)
  %cmp142 = icmp eq i8 %47, 3
  br i1 %cmp142, label %land.lhs.true144, label %land.lhs.true139.do.body174_crit_edge

land.lhs.true139.do.body174_crit_edge:            ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body174

land.lhs.true144:                                 ; preds = %land.lhs.true139
  %48 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %4, align 2
  %50 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %49, label %land.lhs.true165 [
    i8 20, label %land.lhs.true144.if.end194_crit_edge
    i8 40, label %land.lhs.true144.if.end194_crit_edge227
  ]

land.lhs.true144.if.end194_crit_edge227:          ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end194

land.lhs.true144.if.end194_crit_edge:             ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end194

land.lhs.true165:                                 ; preds = %land.lhs.true144
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %4, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -56, i8 %52)
  %cmp168 = icmp eq i8 %52, -56
  br i1 %cmp168, label %if.then170, label %land.lhs.true165.do.body174_crit_edge

land.lhs.true165.do.body174_crit_edge:            ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body174

if.then170:                                       ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %ps2dev1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ps2dev1.i, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %54, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull %e7, ptr noundef nonnull %ec) #16
  br label %cleanup

do.body174:                                       ; preds = %land.lhs.true165.do.body174_crit_edge, %land.lhs.true139.do.body174_crit_edge, %if.else134.do.body174_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alps_identify.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alps_identify, %if.then179)) #13
          to label %cleanup [label %if.then179], !srcloc !199

if.then179:                                       ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %ps2dev1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ps2dev1.i, align 4
  %dev182 = getelementptr inbounds %struct.serio, ptr %56, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alps_identify.__UNIQUE_ID_ddebug245, ptr noundef %dev182, ptr noundef nonnull @.str.38, ptr noundef nonnull %e7, ptr noundef nonnull %ec) #13
  br label %cleanup

if.end194:                                        ; preds = %land.lhs.true144.if.end194_crit_edge, %land.lhs.true144.if.end194_crit_edge227, %land.lhs.true123.if.end194_crit_edge, %land.lhs.true107.if.end194_crit_edge, %land.lhs.true89.if.end194_crit_edge, %land.lhs.true89.if.end194_crit_edge226, %land.lhs.true73.if.end194_crit_edge, %land.lhs.true48.if.end194_crit_edge, %if.end28.if.end194_crit_edge
  %protocol.0 = phi ptr [ %call31, %if.end28.if.end194_crit_edge ], [ @alps_v4_protocol_data, %land.lhs.true48.if.end194_crit_edge ], [ @alps_v5_protocol_data, %land.lhs.true73.if.end194_crit_edge ], [ @alps_v7_protocol_data, %land.lhs.true89.if.end194_crit_edge ], [ @alps_v7_protocol_data, %land.lhs.true89.if.end194_crit_edge226 ], [ @alps_v3_rushmore_data, %land.lhs.true107.if.end194_crit_edge ], [ @alps_v3_protocol_data, %land.lhs.true123.if.end194_crit_edge ], [ @alps_v8_protocol_data, %land.lhs.true144.if.end194_crit_edge ], [ @alps_v8_protocol_data, %land.lhs.true144.if.end194_crit_edge227 ]
  %tobool195.not = icmp eq ptr %priv, null
  br i1 %tobool195.not, label %if.end194.if.end205_crit_edge, label %if.then196

if.end194.if.end205_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end205

if.then196:                                       ; preds = %if.end194
  %dev_id = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 11
  %57 = call ptr @memcpy(ptr %dev_id, ptr %e7, i32 3)
  %fw_ver = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 12
  %58 = call ptr @memcpy(ptr %fw_ver, ptr %ec, i32 3)
  %call201 = call fastcc i32 @alps_set_protocol(ptr noundef %psmouse, ptr noundef nonnull %priv, ptr noundef %protocol.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %if.then196.if.end205_crit_edge, label %if.then196.cleanup_crit_edge

if.then196.cleanup_crit_edge:                     ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then196.if.end205_crit_edge:                   ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end205

if.end205:                                        ; preds = %if.then196.if.end205_crit_edge, %if.end194.if.end205_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end205, %if.then196.cleanup_crit_edge, %if.then179, %do.body174, %if.then170, %lor.lhs.false24.cleanup_crit_edge, %lor.lhs.false20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end205 ], [ -22, %if.then170 ], [ -5, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -5, %lor.lhs.false24.cleanup_crit_edge ], [ -5, %lor.lhs.false20.cleanup_crit_edge ], [ -5, %if.end16.cleanup_crit_edge ], [ -22, %if.then179 ], [ %call201, %if.then196.cleanup_crit_edge ], [ -22, %do.body174 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ec) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e6) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alps_handle_interleaved_ps2(ptr noundef %psmouse) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %pktcnt = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 9
  %2 = ptrtoint ptr %pktcnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pktcnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %3)
  %cmp = icmp ult i8 %3, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %3)
  %cmp4 = icmp eq i8 %3, 6
  %timer = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 30
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 2
  %call7 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = tail call i32 @del_timer(ptr noundef %timer) #13
  %packet = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %arrayidx = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 6
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %tobool.not = icmp sgt i8 %6, -1
  %arrayidx43 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  br i1 %tobool.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end8
  %7 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx43, align 1
  %arrayidx17 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %9 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx17, align 4
  %or74 = or i8 %10, %8
  %arrayidx20 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 5
  %11 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx20, align 1
  %or2275 = or i8 %or74, %12
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %or2275)
  %tobool24.not = icmp sgt i8 %or2275, -1
  br i1 %tobool24.not, label %lor.lhs.false, label %if.then12.do.body_crit_edge

if.then12.do.body_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

lor.lhs.false:                                    ; preds = %if.then12
  %mask0.i = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %mask0.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mask0.i, align 1
  %and5.i = and i8 %14, %6
  %byte0.i = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %byte0.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %byte0.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %and5.i, i8 %16)
  %cmp.i = icmp eq i8 %and5.i, %16
  br i1 %cmp.i, label %if.end36, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.then12.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alps_handle_interleaved_ps2.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alps_handle_interleaved_ps2, %if.then33)) #13
          to label %cleanup [label %if.then33], !srcloc !199

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %17 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %18, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alps_handle_interleaved_ps2.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef %arrayidx43) #13
  br label %cleanup

if.end36:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %process_packet = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 21
  %19 = ptrtoint ptr %process_packet to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %process_packet, align 4
  tail call void %20(ptr noundef %psmouse) #13
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 2
  %23 = ptrtoint ptr %packet to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %packet, align 4
  br label %if.end52

if.else:                                          ; preds = %if.end8
  %24 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %psmouse, align 4
  %proto_version.i = getelementptr inbounds %struct.alps_data, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %proto_version.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %proto_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %27)
  %cmp.i76 = icmp eq i16 %27, 512
  br i1 %cmp.i76, label %land.lhs.true.i, label %if.else.if.else.i_crit_edge

if.else.if.else.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.else
  %flags.i = getelementptr inbounds %struct.alps_data, ptr %25, i32 0, i32 13
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev22.i = getelementptr inbounds %struct.alps_data, ptr %25, i32 0, i32 1
  br label %if.end14.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.else.if.else.i_crit_edge
  %dev34.i = getelementptr inbounds %struct.alps_data, ptr %25, i32 0, i32 2
  %30 = ptrtoint ptr %dev34.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev34.i, align 4
  %tobool.not.i.i = icmp eq ptr %31, null
  %cmp.i.i = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then7.i, label %if.else.i.if.end14.i_crit_edge, !prof !198

if.else.i.if.end14.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

if.then7.i:                                       ; preds = %if.else.i
  br i1 %cmp.i.i, label %if.then7.i.alps_report_bare_ps2_packet.exit_crit_edge, label %if.then10.i

if.then7.i.alps_report_bare_ps2_packet.exit_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_report_bare_ps2_packet.exit

if.then10.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev3_register_work.i = getelementptr inbounds %struct.alps_data, ptr %25, i32 0, i32 5
  tail call void @psmouse_queue_work(ptr noundef %psmouse, ptr noundef %dev3_register_work.i, i32 noundef 0) #13
  br label %alps_report_bare_ps2_packet.exit

if.end14.i:                                       ; preds = %if.else.i.if.end14.i_crit_edge, %if.then.i
  %dev.0.in.i = phi ptr [ %dev22.i, %if.then.i ], [ %dev34.i, %if.else.i.if.end14.i_crit_edge ]
  %32 = ptrtoint ptr %dev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %dev.0.i = load ptr, ptr %dev.0.in.i, align 4
  tail call void @psmouse_report_standard_motion(ptr noundef %dev.0.i, ptr noundef %arrayidx43) #13
  tail call void @input_event(ptr noundef %dev.0.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %alps_report_bare_ps2_packet.exit

alps_report_bare_ps2_packet.exit:                 ; preds = %if.end14.i, %if.then10.i, %if.then7.i.alps_report_bare_ps2_packet.exit_crit_edge
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx, align 2
  %35 = and i8 %34, -9
  %36 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx43, align 1
  br label %if.end52

if.end52:                                         ; preds = %alps_report_bare_ps2_packet.exit, %if.end36
  %storemerge = phi i8 [ 4, %alps_report_bare_ps2_packet.exit ], [ 1, %if.end36 ]
  %37 = ptrtoint ptr %pktcnt to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %storemerge, ptr %pktcnt, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.then33, %do.body, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then6 ], [ 1, %if.end52 ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.then33 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @psmouse_queue_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alps_report_buttons(ptr noundef %dev1, ptr noundef %dev2, i32 noundef %left, i32 noundef %right, i32 noundef %middle) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev2, null
  br i1 %tobool.not, label %cond.false9.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %arrayidx.i = getelementptr %struct.input_dev, ptr %dev2, i32 0, i32 27, i32 8
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %2 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %left)
  %tobool.i45 = icmp ne i32 %left, 0
  %lnot.ext.i46 = zext i1 %tobool.i45 to i32
  br i1 %tobool1.not, label %land.lhs.true3.critedge37, label %land.lhs.true3.critedge

land.lhs.true3.critedge:                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @input_event(ptr noundef nonnull %dev2, i32 noundef 1, i32 noundef 272, i32 noundef %lnot.ext.i46) #13
  br label %land.lhs.true3

land.lhs.true3.critedge37:                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @input_event(ptr noundef %dev1, i32 noundef 1, i32 noundef 272, i32 noundef %lnot.ext.i46) #13
  br label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true3.critedge37, %land.lhs.true3.critedge
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i, align 4
  %5 = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %right)
  %tobool.i55 = icmp ne i32 %right, 0
  %lnot.ext.i56 = zext i1 %tobool.i55 to i32
  br i1 %tobool7.not, label %land.lhs.true13.critedge38, label %land.lhs.true13.critedge

cond.false9.critedge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %left)
  %tobool.i47 = icmp ne i32 %left, 0
  %lnot.ext.i48 = zext i1 %tobool.i47 to i32
  tail call void @input_event(ptr noundef %dev1, i32 noundef 1, i32 noundef 272, i32 noundef %lnot.ext.i48) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %right)
  %tobool.i49 = icmp ne i32 %right, 0
  %lnot.ext.i50 = zext i1 %tobool.i49 to i32
  tail call void @input_event(ptr noundef %dev1, i32 noundef 1, i32 noundef 273, i32 noundef %lnot.ext.i50) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %middle)
  %tobool.i51 = icmp ne i32 %middle, 0
  %lnot.ext.i52 = zext i1 %tobool.i51 to i32
  tail call void @input_event(ptr noundef %dev1, i32 noundef 1, i32 noundef 274, i32 noundef %lnot.ext.i52) #13
  br label %if.end

land.lhs.true13.critedge:                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @input_event(ptr noundef nonnull %dev2, i32 noundef 1, i32 noundef 273, i32 noundef %lnot.ext.i56) #13
  br label %land.lhs.true13

land.lhs.true13.critedge38:                       ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @input_event(ptr noundef %dev1, i32 noundef 1, i32 noundef 273, i32 noundef %lnot.ext.i56) #13
  br label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true13.critedge38, %land.lhs.true13.critedge
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %8 = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool17.not = icmp eq i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %middle)
  %tobool.i57 = icmp ne i32 %middle, 0
  %lnot.ext.i58 = zext i1 %tobool.i57 to i32
  br i1 %tobool17.not, label %cond.false19, label %if.then.critedge

cond.false19:                                     ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @input_event(ptr noundef %dev1, i32 noundef 1, i32 noundef 274, i32 noundef %lnot.ext.i58) #13
  br label %if.then

if.then.critedge:                                 ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @input_event(ptr noundef nonnull %dev2, i32 noundef 1, i32 noundef 274, i32 noundef %lnot.ext.i58) #13
  br label %if.then

if.then:                                          ; preds = %if.then.critedge, %cond.false19
  tail call void @input_event(ptr noundef nonnull %dev2, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.false9.critedge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @psmouse_report_standard_motion(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alps_passthrough_mode_v2(ptr noundef %psmouse, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %cond = select i1 %enable, i32 231, i32 230
  %call = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef %cond) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef %cond) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef %cond) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %call9 = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 245) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ps2_drain(ptr noundef %ps2dev1, i32 noundef 3, i32 noundef 100) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %lor.lhs.false8.cleanup_crit_edge ], [ -1, %lor.lhs.false5.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ps2_drain(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alps_rpt_cmd(ptr noundef %psmouse, i32 noundef %init_command, i32 noundef %repeated_command, ptr noundef %param) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %param, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %init_command)
  %tobool.not = icmp eq i32 %init_command, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %param, i32 noundef %init_command) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef %repeated_command) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %call5 = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef %repeated_command) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef %repeated_command) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false7
  %arrayidx12 = getelementptr i8, ptr %param, i32 2
  %1 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %arrayidx12, align 1
  %arrayidx13 = getelementptr i8, ptr %param, i32 1
  %2 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %arrayidx13, align 1
  %3 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %param, align 1
  %call15 = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %param, i32 noundef 1001) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.body, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alps_rpt_cmd.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alps_rpt_cmd, %if.then23)) #13
          to label %cleanup [label %if.then23], !srcloc !199

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ps2dev1, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alps_rpt_cmd.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %repeated_command, ptr noundef %param) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %do.body, %if.end11.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %land.lhs.true.cleanup_crit_edge ], [ -5, %lor.lhs.false7.cleanup_crit_edge ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %if.end11.cleanup_crit_edge ], [ 0, %if.then23 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alps_match_table(ptr nocapture noundef readonly %e7) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.02 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [22 x %struct.alps_model_info], ptr @alps_model_data, i32 0, i32 %i.02
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(3) %e7, ptr noundef dereferenceable(3) %arrayidx, i32 3) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %protocol_info = getelementptr [22 x %struct.alps_model_info], ptr @alps_model_data, i32 0, i32 %i.02, i32 1
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.02, 1
  %exitcond.not = icmp eq i32 %inc, 22
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %protocol_info, %if.then ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alps_set_protocol(ptr noundef %psmouse, ptr noundef %priv, ptr nocapture noundef readonly %protocol) unnamed_addr #0 align 64 {
entry:
  %otp.i = alloca [2 x [4 x i8]], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %priv, ptr %psmouse, align 4
  %timer = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 30
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @alps_flush_packet, i32 noundef 0, ptr noundef nonnull @.str.41, ptr noundef nonnull @alps_set_protocol.__key) #13
  %1 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %protocol, align 4
  %proto_version = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 8
  %3 = ptrtoint ptr %proto_version to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %proto_version, align 4
  %byte0 = getelementptr inbounds %struct.alps_protocol_info, ptr %protocol, i32 0, i32 1
  %4 = ptrtoint ptr %byte0 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %byte0, align 2
  %byte01 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 9
  %6 = ptrtoint ptr %byte01 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %byte01, align 2
  %mask0 = getelementptr inbounds %struct.alps_protocol_info, ptr %protocol, i32 0, i32 2
  %7 = ptrtoint ptr %mask0 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mask0, align 1
  %mask02 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 10
  %9 = ptrtoint ptr %mask02 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %mask02, align 1
  %flags = getelementptr inbounds %struct.alps_protocol_info, ptr %protocol, i32 0, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %flags3 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 13
  %12 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %flags3, align 4
  %x_max = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 14
  %13 = ptrtoint ptr %x_max to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2000, ptr %x_max, align 4
  %y_max = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 15
  %14 = ptrtoint ptr %y_max to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1400, ptr %y_max, align 4
  %x_bits = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 16
  %15 = ptrtoint ptr %x_bits to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 15, ptr %x_bits, align 4
  %y_bits = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 17
  %16 = ptrtoint ptr %y_bits to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 11, ptr %y_bits, align 4
  %17 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.82)
  switch i16 %2, label %entry.sw.epilog_crit_edge [
    i16 256, label %entry.sw.bb_crit_edge
    i16 512, label %entry.sw.bb_crit_edge173
    i16 768, label %sw.bb8
    i16 784, label %sw.bb17
    i16 1024, label %sw.bb33
    i16 1280, label %sw.bb39
    i16 1536, label %sw.bb52
    i16 1792, label %sw.bb59
    i16 2048, label %sw.bb82
  ]

entry.sw.bb_crit_edge173:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge173
  %hw_init = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 20
  %18 = ptrtoint ptr %hw_init to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @alps_hw_init_v1_v2, ptr %hw_init, align 4
  %process_packet = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 21
  %19 = ptrtoint ptr %process_packet to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @alps_process_packet_v1_v2, ptr %process_packet, align 4
  %set_abs_params = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 23
  %20 = ptrtoint ptr %set_abs_params to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @alps_set_abs_params_st, ptr %set_abs_params, align 4
  %21 = ptrtoint ptr %x_max to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1023, ptr %x_max, align 4
  %22 = ptrtoint ptr %y_max to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 767, ptr %y_max, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %hw_init9 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 20
  %23 = ptrtoint ptr %hw_init9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @alps_hw_init_v3, ptr %hw_init9, align 4
  %process_packet10 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 21
  %24 = ptrtoint ptr %process_packet10 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @alps_process_packet_v3, ptr %process_packet10, align 4
  %set_abs_params11 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 23
  %25 = ptrtoint ptr %set_abs_params11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @alps_set_abs_params_semi_mt, ptr %set_abs_params11, align 4
  %decode_fields = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 22
  %26 = ptrtoint ptr %decode_fields to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @alps_decode_pinnacle, ptr %decode_fields, align 4
  %nibble_commands = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 6
  %27 = ptrtoint ptr %nibble_commands to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @alps_v3_nibble_commands, ptr %nibble_commands, align 4
  %addr_command = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 7
  %28 = ptrtoint ptr %addr_command to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 236, ptr %addr_command, align 4
  %call12 = tail call fastcc i32 @alps_probe_trackstick_v3_v7(ptr noundef %psmouse, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.then14, label %sw.bb8.sw.epilog_crit_edge

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then14:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags3, align 4
  %and = and i32 %30, -3
  store i32 %and, ptr %flags3, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %hw_init18 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 20
  %31 = ptrtoint ptr %hw_init18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @alps_hw_init_rushmore_v3, ptr %hw_init18, align 4
  %process_packet19 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 21
  %32 = ptrtoint ptr %process_packet19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @alps_process_packet_v3, ptr %process_packet19, align 4
  %set_abs_params20 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 23
  %33 = ptrtoint ptr %set_abs_params20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @alps_set_abs_params_semi_mt, ptr %set_abs_params20, align 4
  %decode_fields21 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 22
  %34 = ptrtoint ptr %decode_fields21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @alps_decode_rushmore, ptr %decode_fields21, align 4
  %nibble_commands22 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 6
  %35 = ptrtoint ptr %nibble_commands22 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @alps_v3_nibble_commands, ptr %nibble_commands22, align 4
  %addr_command23 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 7
  %36 = ptrtoint ptr %addr_command23 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 236, ptr %addr_command23, align 4
  %37 = ptrtoint ptr %x_bits to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 16, ptr %x_bits, align 4
  %38 = ptrtoint ptr %y_bits to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 12, ptr %y_bits, align 4
  %call26 = tail call fastcc i32 @alps_probe_trackstick_v3_v7(ptr noundef %psmouse, i32 noundef 49856)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %sw.bb17.sw.epilog_crit_edge

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then29:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags3, align 4
  %and31 = and i32 %40, -3
  store i32 %and31, ptr %flags3, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %hw_init34 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 20
  %41 = ptrtoint ptr %hw_init34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @alps_hw_init_v4, ptr %hw_init34, align 4
  %process_packet35 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 21
  %42 = ptrtoint ptr %process_packet35 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @alps_process_packet_v4, ptr %process_packet35, align 4
  %set_abs_params36 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 23
  %43 = ptrtoint ptr %set_abs_params36 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @alps_set_abs_params_semi_mt, ptr %set_abs_params36, align 4
  %nibble_commands37 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 6
  %44 = ptrtoint ptr %nibble_commands37 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @alps_v4_nibble_commands, ptr %nibble_commands37, align 4
  %addr_command38 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 7
  %45 = ptrtoint ptr %addr_command38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 245, ptr %addr_command38, align 4
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  %hw_init40 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 20
  %46 = ptrtoint ptr %hw_init40 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @alps_hw_init_dolphin_v1, ptr %hw_init40, align 4
  %process_packet41 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 21
  %47 = ptrtoint ptr %process_packet41 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @alps_process_touchpad_packet_v3_v5, ptr %process_packet41, align 4
  %decode_fields42 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 22
  %48 = ptrtoint ptr %decode_fields42 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @alps_decode_dolphin, ptr %decode_fields42, align 4
  %set_abs_params43 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 23
  %49 = ptrtoint ptr %set_abs_params43 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @alps_set_abs_params_semi_mt, ptr %set_abs_params43, align 4
  %nibble_commands44 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 6
  %50 = ptrtoint ptr %nibble_commands44 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @alps_v3_nibble_commands, ptr %nibble_commands44, align 4
  %addr_command45 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 7
  %51 = ptrtoint ptr %addr_command45 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 236, ptr %addr_command45, align 4
  %52 = ptrtoint ptr %x_bits to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 23, ptr %x_bits, align 4
  %53 = ptrtoint ptr %y_bits to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 12, ptr %y_bits, align 4
  %call48 = tail call fastcc i32 @alps_dolphin_get_device_area(ptr noundef %psmouse, ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %sw.bb39.sw.epilog_crit_edge, label %sw.bb39.return_crit_edge

sw.bb39.return_crit_edge:                         ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb39.sw.epilog_crit_edge:                      ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb52:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %hw_init53 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 20
  %54 = ptrtoint ptr %hw_init53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @alps_hw_init_v6, ptr %hw_init53, align 4
  %process_packet54 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 21
  %55 = ptrtoint ptr %process_packet54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @alps_process_packet_v6, ptr %process_packet54, align 4
  %set_abs_params55 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 23
  %56 = ptrtoint ptr %set_abs_params55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @alps_set_abs_params_st, ptr %set_abs_params55, align 4
  %nibble_commands56 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 6
  %57 = ptrtoint ptr %nibble_commands56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @alps_v6_nibble_commands, ptr %nibble_commands56, align 4
  %58 = ptrtoint ptr %x_max to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2047, ptr %x_max, align 4
  %59 = ptrtoint ptr %y_max to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1535, ptr %y_max, align 4
  br label %sw.epilog

sw.bb59:                                          ; preds = %entry
  %hw_init60 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 20
  %60 = ptrtoint ptr %hw_init60 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @alps_hw_init_v7, ptr %hw_init60, align 4
  %process_packet61 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 21
  %61 = ptrtoint ptr %process_packet61 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @alps_process_packet_v7, ptr %process_packet61, align 4
  %decode_fields62 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 22
  %62 = ptrtoint ptr %decode_fields62 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @alps_decode_packet_v7, ptr %decode_fields62, align 4
  %set_abs_params63 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 23
  %63 = ptrtoint ptr %set_abs_params63 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @alps_set_abs_params_v7, ptr %set_abs_params63, align 4
  %nibble_commands64 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 6
  %64 = ptrtoint ptr %nibble_commands64 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @alps_v3_nibble_commands, ptr %nibble_commands64, align 4
  %addr_command65 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 7
  %65 = ptrtoint ptr %addr_command65 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 236, ptr %addr_command65, align 4
  %66 = ptrtoint ptr %x_max to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 4095, ptr %x_max, align 4
  %67 = ptrtoint ptr %y_max to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2047, ptr %y_max, align 4
  %arrayidx = getelementptr %struct.alps_data, ptr %priv, i32 0, i32 12, i32 1
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -70, i8 %69)
  %cmp69.not = icmp eq i8 %69, -70
  br i1 %cmp69.not, label %sw.bb59.if.end74_crit_edge, label %if.then71

sw.bb59.if.end74_crit_edge:                       ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.then71:                                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #15
  %or73 = or i32 %11, 512
  %70 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or73, ptr %flags3, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %sw.bb59.if.end74_crit_edge
  %call75 = tail call fastcc i32 @alps_probe_trackstick_v3_v7(ptr noundef %psmouse, i32 noundef 49856)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.then78, label %if.end74.sw.epilog_crit_edge

if.end74.sw.epilog_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  %71 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags3, align 4
  %and80 = and i32 %72, -3
  store i32 %and80, ptr %flags3, align 4
  br label %sw.epilog

sw.bb82:                                          ; preds = %entry
  %hw_init83 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 20
  %73 = ptrtoint ptr %hw_init83 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @alps_hw_init_ss4_v2, ptr %hw_init83, align 4
  %process_packet84 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 21
  %74 = ptrtoint ptr %process_packet84 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @alps_process_packet_ss4_v2, ptr %process_packet84, align 4
  %decode_fields85 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 22
  %75 = ptrtoint ptr %decode_fields85 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @alps_decode_ss4_v2, ptr %decode_fields85, align 4
  %set_abs_params86 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 23
  %76 = ptrtoint ptr %set_abs_params86 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @alps_set_abs_params_ss4_v2, ptr %set_abs_params86, align 4
  %nibble_commands87 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 6
  %77 = ptrtoint ptr %nibble_commands87 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @alps_v3_nibble_commands, ptr %nibble_commands87, align 4
  %addr_command88 = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 7
  %78 = ptrtoint ptr %addr_command88 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 236, ptr %addr_command88, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %otp.i) #13
  %79 = getelementptr inbounds [4 x i8], ptr %otp.i, i32 0, i32 1
  %80 = getelementptr inbounds [4 x i8], ptr %otp.i, i32 0, i32 2
  %81 = getelementptr inbounds [2 x [4 x i8]], ptr %otp.i, i32 0, i32 1
  %82 = getelementptr inbounds [2 x [4 x i8]], ptr %otp.i, i32 0, i32 1, i32 1
  %83 = getelementptr inbounds [2 x [4 x i8]], ptr %otp.i, i32 0, i32 1, i32 2
  %84 = ptrtoint ptr %otp.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 0, ptr %otp.i, align 8
  %ps2dev1.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call8.i.i = tail call i32 @ps2_command(ptr noundef %ps2dev1.i.i, ptr noundef null, i32 noundef 240) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %lor.lhs.false10.i.i, label %sw.bb82.alps_set_defaults_ss4_v2.exit.thread_crit_edge

sw.bb82.alps_set_defaults_ss4_v2.exit.thread_crit_edge: ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_set_defaults_ss4_v2.exit.thread

lor.lhs.false10.i.i:                              ; preds = %sw.bb82
  %call11.i.i = tail call i32 @ps2_command(ptr noundef %ps2dev1.i.i, ptr noundef null, i32 noundef 240) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %lor.lhs.false13.i.i, label %lor.lhs.false10.i.i.alps_set_defaults_ss4_v2.exit.thread_crit_edge

lor.lhs.false10.i.i.alps_set_defaults_ss4_v2.exit.thread_crit_edge: ; preds = %lor.lhs.false10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_set_defaults_ss4_v2.exit.thread

lor.lhs.false13.i.i:                              ; preds = %lor.lhs.false10.i.i
  %call14.i.i = call i32 @ps2_command(ptr noundef %ps2dev1.i.i, ptr noundef %81, i32 noundef 1001) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %lor.lhs.false.i, label %lor.lhs.false13.i.i.alps_set_defaults_ss4_v2.exit.thread_crit_edge

lor.lhs.false13.i.i.alps_set_defaults_ss4_v2.exit.thread_crit_edge: ; preds = %lor.lhs.false13.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_set_defaults_ss4_v2.exit.thread

lor.lhs.false.i:                                  ; preds = %lor.lhs.false13.i.i
  %call.i.i = call i32 @ps2_command(ptr noundef %ps2dev1.i.i, ptr noundef null, i32 noundef 234) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %lor.lhs.false.i.alps_set_defaults_ss4_v2.exit.thread_crit_edge

lor.lhs.false.i.alps_set_defaults_ss4_v2.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_set_defaults_ss4_v2.exit.thread

lor.lhs.false.i.i:                                ; preds = %lor.lhs.false.i
  %call2.i.i = call i32 @ps2_command(ptr noundef %ps2dev1.i.i, ptr noundef null, i32 noundef 234) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.alps_set_defaults_ss4_v2.exit.thread_crit_edge

lor.lhs.false.i.i.alps_set_defaults_ss4_v2.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_set_defaults_ss4_v2.exit.thread

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %call5.i.i = call i32 @ps2_command(ptr noundef %ps2dev1.i.i, ptr noundef nonnull %otp.i, i32 noundef 1001) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end.i, label %lor.lhs.false4.i.i.alps_set_defaults_ss4_v2.exit.thread_crit_edge

lor.lhs.false4.i.i.alps_set_defaults_ss4_v2.exit.thread_crit_edge: ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_set_defaults_ss4_v2.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false4.i.i
  %dev_id.i.i = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 11
  %85 = ptrtoint ptr %dev_id.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %dev_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %86)
  %cmp.i.i = icmp eq i8 %86, 115
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i.if.else.i.i_crit_edge

if.end.i.if.else.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %arrayidx3.i.i = getelementptr %struct.alps_data, ptr %priv, i32 0, i32 11, i32 1
  %87 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %88)
  %cmp5.i.i = icmp eq i8 %88, 3
  br i1 %cmp5.i.i, label %land.lhs.true7.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %arrayidx9.i.i = getelementptr %struct.alps_data, ptr %priv, i32 0, i32 11, i32 2
  %89 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx9.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %90)
  %cmp11.i.i = icmp eq i8 %90, 40
  br i1 %cmp11.i.i, label %if.then.i.i, label %land.lhs.true7.i.i.if.else.i.i_crit_edge

land.lhs.true7.i.i.if.else.i.i_crit_edge:         ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %91 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %80, align 2
  %conv15.i.i = zext i8 %92 to i32
  %and.i.i = and i32 %conv15.i.i, 15
  %add.i.i = or i32 %and.i.i, 16
  %93 = lshr i32 %conv15.i.i, 4
  %add20.i.i = add nuw nsw i32 %93, 5
  %sub.i.i = shl nuw nsw i32 %and.i.i, 7
  %mul.i.i = add nuw nsw i32 %sub.i.i, 1920
  %94 = ptrtoint ptr %x_max to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %mul.i.i, ptr %x_max, align 4
  %sub21.i.i = shl nuw nsw i32 %93, 7
  %mul22.i.i = add nuw nsw i32 %sub21.i.i, 512
  %95 = ptrtoint ptr %y_max to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %mul22.i.i, ptr %y_max, align 4
  %96 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %79, align 1
  %conv25.i.i = zext i8 %97 to i32
  %and26.i.i = and i32 %conv25.i.i, 15
  %add27.i.i = add nuw nsw i32 %and26.i.i, 37
  %98 = lshr i32 %conv25.i.i, 4
  %add33.i.i = add nuw nsw i32 %98, 37
  br label %alps_update_device_area_ss4_v2.exit.i

if.else.i.i:                                      ; preds = %land.lhs.true7.i.i.if.else.i.i_crit_edge, %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.end.i.if.else.i.i_crit_edge
  %99 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %81, align 4
  %conv36.i.i = zext i8 %100 to i32
  %and37.i.i = and i32 %conv36.i.i, 15
  %add38.i.i = add nuw nsw i32 %and37.i.i, 7
  %101 = lshr i32 %conv36.i.i, 4
  %add44.i.i = add nuw nsw i32 %101, 7
  %sub45.i.i = shl nuw nsw i32 %and37.i.i, 8
  %mul46.i.i = add nuw nsw i32 %sub45.i.i, 1536
  %102 = ptrtoint ptr %x_max to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %mul46.i.i, ptr %x_max, align 4
  %sub48.i.i = shl nuw nsw i32 %101, 8
  %mul49.i.i = add nuw nsw i32 %sub48.i.i, 1536
  %103 = ptrtoint ptr %y_max to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %mul49.i.i, ptr %y_max, align 4
  %104 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %83, align 2
  %conv53.i.i = zext i8 %105 to i32
  %106 = lshr i32 %conv53.i.i, 2
  %and55.i.i = and i32 %106, 7
  %add56.i.i = add nuw nsw i32 %and55.i.i, 50
  %107 = lshr i32 %conv53.i.i, 5
  %add62.i.i = add nuw nsw i32 %107, 50
  br label %alps_update_device_area_ss4_v2.exit.i

alps_update_device_area_ss4_v2.exit.i:            ; preds = %if.else.i.i, %if.then.i.i
  %num_x_electrode.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %add38.i.i, %if.else.i.i ]
  %num_y_electrode.0.i.i = phi i32 [ %add20.i.i, %if.then.i.i ], [ %add44.i.i, %if.else.i.i ]
  %x_pitch.0.i.i = phi i32 [ %add27.i.i, %if.then.i.i ], [ %add56.i.i, %if.else.i.i ]
  %y_pitch.0.i.i = phi i32 [ %add33.i.i, %if.then.i.i ], [ %add62.i.i, %if.else.i.i ]
  %sub63.i.i = add nsw i32 %num_x_electrode.0.i.i, -1
  %mul64.i.i = mul nsw i32 %x_pitch.0.i.i, %sub63.i.i
  %sub65.i.i = add nsw i32 %num_y_electrode.0.i.i, -1
  %mul66.i.i = mul nuw nsw i32 %y_pitch.0.i.i, %sub65.i.i
  %108 = ptrtoint ptr %x_max to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %x_max, align 4
  %mul68.i.i = mul i32 %109, 10
  %div.i.i = sdiv i32 %mul68.i.i, %mul64.i.i
  %x_res.i.i = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 18
  %110 = ptrtoint ptr %x_res.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %div.i.i, ptr %x_res.i.i, align 4
  %111 = ptrtoint ptr %y_max to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %y_max, align 4
  %mul70.i.i = mul i32 %112, 10
  %div71.i.i = sdiv i32 %mul70.i.i, %mul66.i.i
  %y_res.i.i = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 19
  %113 = ptrtoint ptr %y_res.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %div71.i.i, ptr %y_res.i.i, align 4
  br i1 %cmp.i.i, label %land.lhs.true.i24.i, label %alps_update_device_area_ss4_v2.exit.i.if.else.i29.i_crit_edge

alps_update_device_area_ss4_v2.exit.i.if.else.i29.i_crit_edge: ; preds = %alps_update_device_area_ss4_v2.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i29.i

land.lhs.true.i24.i:                              ; preds = %alps_update_device_area_ss4_v2.exit.i
  %arrayidx3.i22.i = getelementptr %struct.alps_data, ptr %priv, i32 0, i32 11, i32 1
  %114 = ptrtoint ptr %arrayidx3.i22.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx3.i22.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %115)
  %cmp5.i23.i = icmp eq i8 %115, 3
  br i1 %cmp5.i23.i, label %land.lhs.true7.i27.i, label %land.lhs.true.i24.i.if.else.i29.i_crit_edge

land.lhs.true.i24.i.if.else.i29.i_crit_edge:      ; preds = %land.lhs.true.i24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i29.i

land.lhs.true7.i27.i:                             ; preds = %land.lhs.true.i24.i
  %arrayidx9.i25.i = getelementptr %struct.alps_data, ptr %priv, i32 0, i32 11, i32 2
  %116 = ptrtoint ptr %arrayidx9.i25.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx9.i25.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %117)
  %cmp11.i26.i = icmp eq i8 %117, 40
  br i1 %cmp11.i26.i, label %land.lhs.true7.i27.i.if.end.i.i_crit_edge, label %land.lhs.true7.i27.i.if.else.i29.i_crit_edge

land.lhs.true7.i27.i.if.else.i29.i_crit_edge:     ; preds = %land.lhs.true7.i27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i29.i

land.lhs.true7.i27.i.if.end.i.i_crit_edge:        ; preds = %land.lhs.true7.i27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.else.i29.i:                                    ; preds = %land.lhs.true7.i27.i.if.else.i29.i_crit_edge, %land.lhs.true.i24.i.if.else.i29.i_crit_edge, %alps_update_device_area_ss4_v2.exit.i.if.else.i29.i_crit_edge
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i29.i, %land.lhs.true7.i27.i.if.end.i.i_crit_edge
  %arrayidx18.sink.i.i = phi ptr [ %82, %if.else.i29.i ], [ %81, %land.lhs.true7.i27.i.if.end.i.i_crit_edge ]
  %.sink1.i.i = phi i8 [ 3, %if.else.i29.i ], [ 1, %land.lhs.true7.i27.i.if.end.i.i_crit_edge ]
  %118 = ptrtoint ptr %arrayidx18.sink.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx18.sink.i.i, align 1
  %120 = shl nuw nsw i8 1, %.sink1.i.i
  %121 = and i8 %119, %120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool.not.i30.i = icmp eq i8 %121, 0
  br i1 %tobool.not.i30.i, label %if.end.i.i.alps_set_defaults_ss4_v2.exit_crit_edge, label %if.then23.i.i

if.end.i.i.alps_set_defaults_ss4_v2.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_set_defaults_ss4_v2.exit

if.then23.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %122 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %flags3, align 4
  %or.i.i = or i32 %123, 512
  store i32 %or.i.i, ptr %flags3, align 4
  br label %alps_set_defaults_ss4_v2.exit

alps_set_defaults_ss4_v2.exit.thread:             ; preds = %lor.lhs.false4.i.i.alps_set_defaults_ss4_v2.exit.thread_crit_edge, %lor.lhs.false.i.i.alps_set_defaults_ss4_v2.exit.thread_crit_edge, %lor.lhs.false.i.alps_set_defaults_ss4_v2.exit.thread_crit_edge, %lor.lhs.false13.i.i.alps_set_defaults_ss4_v2.exit.thread_crit_edge, %lor.lhs.false10.i.i.alps_set_defaults_ss4_v2.exit.thread_crit_edge, %sw.bb82.alps_set_defaults_ss4_v2.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %otp.i) #13
  br label %return

alps_set_defaults_ss4_v2.exit:                    ; preds = %if.then23.i.i, %if.end.i.i.alps_set_defaults_ss4_v2.exit_crit_edge
  call fastcc void @alps_update_dual_info_ss4_v2(ptr noundef nonnull %otp.i, ptr noundef %priv, ptr noundef %psmouse) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %otp.i) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %alps_set_defaults_ss4_v2.exit, %if.then78, %if.end74.sw.epilog_crit_edge, %sw.bb52, %sw.bb39.sw.epilog_crit_edge, %sw.bb33, %if.then29, %sw.bb17.sw.epilog_crit_edge, %if.then14, %sw.bb8.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  br label %return

return:                                           ; preds = %sw.epilog, %alps_set_defaults_ss4_v2.exit.thread, %sw.bb39.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -5, %sw.bb39.return_crit_edge ], [ -5, %alps_set_defaults_ss4_v2.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alps_flush_packet(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -304
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps2dev, align 4
  %lock.i = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #13
  %pktcnt = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %pktcnt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pktcnt, align 1
  %pktsize = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %pktsize to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pktsize, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp = icmp eq i8 %5, %7
  br i1 %cmp, label %if.then, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.psmouse, ptr %1, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %arrayidx6 = getelementptr %struct.psmouse, ptr %1, i32 0, i32 7, i32 4
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx6, align 4
  %or38 = or i8 %11, %9
  %arrayidx9 = getelementptr %struct.psmouse, ptr %1, i32 0, i32 7, i32 5
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx9, align 1
  %or1139 = or i8 %or38, %13
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %or1139)
  %tobool.not = icmp sgt i8 %or1139, -1
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alps_flush_packet.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alps_flush_packet, %if.then17)) #13
          to label %if.end22 [label %if.then17], !srcloc !199

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alps_flush_packet.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.43, ptr noundef %arrayidx) #13
  br label %if.end22

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %process_packet = getelementptr i8, ptr %t, i32 -76
  %16 = ptrtoint ptr %process_packet to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %process_packet, align 4
  tail call void %17(ptr noundef %1) #13
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then17, %do.body
  %18 = ptrtoint ptr %pktcnt to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %pktcnt, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.end22, %entry.if.end24_crit_edge
  %19 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ps2dev, align 4
  %lock.i40 = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i40) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_hw_init_v1_v2(ptr noundef %psmouse) #0 align 64 {
entry:
  %tap_arg.i = alloca i8, align 1
  %param.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %flags = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @alps_passthrough_mode_v2(ptr noundef %psmouse, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ps2dev1.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tap_arg.i) #13
  %4 = ptrtoint ptr %tap_arg.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %tap_arg.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i) #13
  %5 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %param.i, align 4
  %call.i = call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef nonnull %param.i, i32 noundef 1001) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i, label %if.end.alps_tap_mode.exit.thread_crit_edge

if.end.alps_tap_mode.exit.thread_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_tap_mode.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end
  %call5.i = call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef null, i32 noundef 245) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %lor.lhs.false7.i, label %lor.lhs.false.i.alps_tap_mode.exit.thread_crit_edge

lor.lhs.false.i.alps_tap_mode.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_tap_mode.exit.thread

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false.i
  %call8.i = call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef null, i32 noundef 245) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %lor.lhs.false10.i, label %lor.lhs.false7.i.alps_tap_mode.exit.thread_crit_edge

lor.lhs.false7.i.alps_tap_mode.exit.thread_crit_edge: ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_tap_mode.exit.thread

lor.lhs.false10.i:                                ; preds = %lor.lhs.false7.i
  %call11.i = call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef nonnull %tap_arg.i, i32 noundef 4339) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %alps_tap_mode.exit, label %lor.lhs.false10.i.alps_tap_mode.exit.thread_crit_edge

lor.lhs.false10.i.alps_tap_mode.exit.thread_crit_edge: ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_tap_mode.exit.thread

alps_tap_mode.exit.thread:                        ; preds = %lor.lhs.false10.i.alps_tap_mode.exit.thread_crit_edge, %lor.lhs.false7.i.alps_tap_mode.exit.thread_crit_edge, %lor.lhs.false.i.alps_tap_mode.exit.thread_crit_edge, %if.end.alps_tap_mode.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tap_arg.i) #13
  br label %do.end

alps_tap_mode.exit:                               ; preds = %lor.lhs.false10.i
  %call.i.i = call fastcc i32 @alps_rpt_cmd(ptr noundef %psmouse, i32 noundef 0, i32 noundef 245, ptr noundef nonnull %param.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.not.i.not = icmp eq i32 %call.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tap_arg.i) #13
  br i1 %tobool.not.i.not.i.not, label %if.end5, label %alps_tap_mode.exit.do.end_crit_edge

alps_tap_mode.exit.do.end_crit_edge:              ; preds = %alps_tap_mode.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %alps_tap_mode.exit.do.end_crit_edge, %alps_tap_mode.exit.thread
  %6 = ptrtoint ptr %ps2dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ps2dev1.i, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.44) #16
  br label %cleanup

if.end5:                                          ; preds = %alps_tap_mode.exit
  %call.i45 = call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef null, i32 noundef 245) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool.not.i = icmp eq i32 %call.i45, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i46, label %if.end5.do.end11_crit_edge

if.end5.do.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11

lor.lhs.false.i46:                                ; preds = %if.end5
  %call2.i = call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef null, i32 noundef 245) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i46.do.end11_crit_edge

lor.lhs.false.i46.do.end11_crit_edge:             ; preds = %lor.lhs.false.i46
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i46
  %call5.i47 = call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef null, i32 noundef 245) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i47)
  %tobool6.not.i48 = icmp eq i32 %call5.i47, 0
  br i1 %tobool6.not.i48, label %lor.lhs.false7.i51, label %lor.lhs.false4.i.do.end11_crit_edge

lor.lhs.false4.i.do.end11_crit_edge:              ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11

lor.lhs.false7.i51:                               ; preds = %lor.lhs.false4.i
  %call8.i49 = call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef null, i32 noundef 245) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i49)
  %tobool9.not.i50 = icmp eq i32 %call8.i49, 0
  br i1 %tobool9.not.i50, label %lor.lhs.false10.i54, label %lor.lhs.false7.i51.do.end11_crit_edge

lor.lhs.false7.i51.do.end11_crit_edge:            ; preds = %lor.lhs.false7.i51
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11

lor.lhs.false10.i54:                              ; preds = %lor.lhs.false7.i51
  %call11.i52 = call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef null, i32 noundef 244) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i52)
  %tobool12.not.i53 = icmp eq i32 %call11.i52, 0
  br i1 %tobool12.not.i53, label %alps_absolute_mode_v1_v2.exit, label %lor.lhs.false10.i54.do.end11_crit_edge

lor.lhs.false10.i54.do.end11_crit_edge:           ; preds = %lor.lhs.false10.i54
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11

alps_absolute_mode_v1_v2.exit:                    ; preds = %lor.lhs.false10.i54
  %call13.i = call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef null, i32 noundef 240) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool7.not = icmp eq i32 %call13.i, 0
  br i1 %tobool7.not, label %if.end15, label %alps_absolute_mode_v1_v2.exit.do.end11_crit_edge

alps_absolute_mode_v1_v2.exit.do.end11_crit_edge: ; preds = %alps_absolute_mode_v1_v2.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11

do.end11:                                         ; preds = %alps_absolute_mode_v1_v2.exit.do.end11_crit_edge, %lor.lhs.false10.i54.do.end11_crit_edge, %lor.lhs.false7.i51.do.end11_crit_edge, %lor.lhs.false4.i.do.end11_crit_edge, %lor.lhs.false.i46.do.end11_crit_edge, %if.end5.do.end11_crit_edge
  %8 = ptrtoint ptr %ps2dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ps2dev1.i, align 4
  %dev14 = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.47) #16
  br label %cleanup

if.end15:                                         ; preds = %alps_absolute_mode_v1_v2.exit
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and17 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.if.end23_crit_edge, label %land.lhs.true19

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

land.lhs.true19:                                  ; preds = %if.end15
  %call20 = call fastcc i32 @alps_passthrough_mode_v2(ptr noundef %psmouse, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true19.if.end23_crit_edge, label %land.lhs.true19.cleanup_crit_edge

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true19.if.end23_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true19.if.end23_crit_edge, %if.end15.if.end23_crit_edge
  %call25 = call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef null, i32 noundef 234) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %do.end30

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %ps2dev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ps2dev1.i, align 4
  %dev33 = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.50) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %if.end23.cleanup_crit_edge, %land.lhs.true19.cleanup_crit_edge, %do.end11, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.end11 ], [ -1, %do.end30 ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -1, %land.lhs.true19.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alps_process_packet_v1_v2(ptr nocapture noundef readonly %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %packet1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %dev2 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %dev24 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev24, align 4
  %proto_version = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %proto_version to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %proto_version, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %7)
  %cmp = icmp eq i16 %7, 256
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %9 to i32
  %and = and i32 %conv6, 16
  %and9 = and i32 %conv6, 8
  %arrayidx10 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %11 to i32
  %12 = ptrtoint ptr %packet1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %packet1, align 1
  %14 = and i8 %13, 7
  %and14 = zext i8 %14 to i32
  %shl = shl nuw nsw i32 %and14, 7
  %or = or i32 %shl, %conv11
  %arrayidx15 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %16 to i32
  %arrayidx17 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %17 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx17, align 1
  %19 = and i8 %18, 7
  %and19 = zext i8 %19 to i32
  %shl20 = shl nuw nsw i32 %and19, 7
  %or21 = or i32 %shl20, %conv16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx24 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %21 to i32
  %and26 = and i32 %conv25, 1
  %and29 = and i32 %conv25, 2
  %and32 = and i32 %conv25, 4
  %arrayidx33 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %23 to i32
  %arrayidx35 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %24 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx35, align 1
  %26 = and i8 %25, 120
  %and37 = zext i8 %26 to i32
  %shl38 = shl nuw nsw i32 %and37, 4
  %or39 = or i32 %shl38, %conv34
  %arrayidx40 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %27 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %28 to i32
  %and44 = shl nuw nsw i32 %conv25, 3
  %shl45 = and i32 %and44, 896
  %or46 = or i32 %shl45, %conv41
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %x.0 = phi i32 [ %or, %if.then ], [ %or39, %if.else ]
  %y.0 = phi i32 [ %or21, %if.then ], [ %or46, %if.else ]
  %left.0 = phi i32 [ %and, %if.then ], [ %and26, %if.else ]
  %right.0 = phi i32 [ %and9, %if.then ], [ %and29, %if.else ]
  %middle.0 = phi i32 [ 0, %if.then ], [ %and32, %if.else ]
  %z.0.in.in = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 5
  %29 = ptrtoint ptr %z.0.in.in to i32
  call void @__asan_load1_noabort(i32 %29)
  %z.0.in = load i8, ptr %z.0.in.in, align 1
  %flags = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 13
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %and49 = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool.not = icmp eq i32 %and49, 0
  br i1 %tobool.not, label %if.end.if.end57_crit_edge, label %if.then50

if.end.if.end57_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.then50:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %packet1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %packet1, align 1
  %34 = and i8 %33, 16
  %and53 = zext i8 %34 to i32
  %arrayidx54 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %35 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx54, align 1
  %37 = and i8 %36, 4
  %and56 = zext i8 %37 to i32
  br label %if.end57

if.end57:                                         ; preds = %if.then50, %if.end.if.end57_crit_edge
  %back.0 = phi i32 [ %and53, %if.then50 ], [ 0, %if.end.if.end57_crit_edge ]
  %forward.0 = phi i32 [ %and56, %if.then50 ], [ 0, %if.end.if.end57_crit_edge ]
  %and59 = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end57.if.end72_crit_edge, label %if.then61

if.end57.if.end72_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

if.then61:                                        ; preds = %if.end57
  %arrayidx62 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %38 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx62, align 1
  %40 = and i8 %39, 4
  %arrayidx65 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %41 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx65, align 1
  %43 = and i8 %42, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool68.not = icmp eq i8 %43, 0
  br i1 %tobool68.not, label %if.end71.critedge, label %land.rhs

land.rhs:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool69.not = icmp eq i8 %40, 0
  %.lobit = lshr exact i8 %40, 2
  %44 = zext i8 %.lobit to i32
  %narrow = select i1 %tobool69.not, i8 %43, i8 0
  %spec.select = zext i8 %narrow to i32
  br label %if.end72

if.end71.critedge:                                ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #15
  %and64 = zext i8 %40 to i32
  br label %if.end72

if.end72:                                         ; preds = %if.end71.critedge, %land.rhs, %if.end57.if.end72_crit_edge
  %middle.1 = phi i32 [ 0, %if.end71.critedge ], [ %middle.0, %if.end57.if.end72_crit_edge ], [ %44, %land.rhs ]
  %back.1 = phi i32 [ %and64, %if.end71.critedge ], [ %back.0, %if.end57.if.end72_crit_edge ], [ 0, %land.rhs ]
  %forward.1 = phi i32 [ 0, %if.end71.critedge ], [ %forward.0, %if.end57.if.end72_crit_edge ], [ %spec.select, %land.rhs ]
  %arrayidx73 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %45 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %46 to i32
  %and78 = and i32 %conv74, 2
  %and80 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp ne i32 %and80, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %z.0.in)
  %cmp82 = icmp eq i8 %z.0.in, 127
  %or.cond = select i1 %tobool81.not, i1 %cmp82, i1 false
  br i1 %or.cond, label %if.then84, label %if.end95

if.then84:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 383, i32 %x.0)
  %cmp85 = icmp sgt i32 %x.0, 383
  %sub = add nsw i32 %x.0, -768
  %cond = select i1 %cmp85, i32 %sub, i32 %x.0
  tail call void @input_event(ptr noundef %5, i32 noundef 2, i32 noundef 0, i32 noundef %cond) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %y.0)
  %cmp87 = icmp sgt i32 %y.0, 255
  %sub90 = add nsw i32 %y.0, -512
  %cond93 = select i1 %cmp87, i32 %sub90, i32 %y.0
  %sub94 = sub nsw i32 0, %cond93
  tail call void @input_event(ptr noundef %5, i32 noundef 2, i32 noundef 1, i32 noundef %sub94) #13
  tail call fastcc void @alps_report_buttons(ptr noundef %5, ptr noundef %3, i32 noundef %left.0, i32 noundef %right.0, i32 noundef %middle.1)
  br label %cleanup

if.end95:                                         ; preds = %if.end72
  %and97 = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end95.if.end112_crit_edge, label %if.then99

if.end95.if.end112_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end112

if.then99:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %packet1 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %packet1, align 1
  %conv101 = zext i8 %48 to i32
  %and102 = and i32 %conv101, 1
  %or103 = or i32 %and102, %left.0
  %and106 = and i32 %conv101, 2
  %or107 = or i32 %and106, %right.0
  %and110 = and i32 %conv101, 4
  %or111 = or i32 %and110, %middle.1
  br label %if.end112

if.end112:                                        ; preds = %if.then99, %if.end95.if.end112_crit_edge
  %left.1 = phi i32 [ %or103, %if.then99 ], [ %left.0, %if.end95.if.end112_crit_edge ]
  %right.1 = phi i32 [ %or107, %if.then99 ], [ %right.0, %if.end95.if.end112_crit_edge ]
  %middle.2 = phi i32 [ %or111, %if.then99 ], [ %middle.1, %if.end95.if.end112_crit_edge ]
  tail call fastcc void @alps_report_buttons(ptr noundef %3, ptr noundef %5, i32 noundef %left.1, i32 noundef %right.1, i32 noundef %middle.2)
  %49 = and i32 %conv74, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %50 = icmp eq i32 %49, 1
  %z.1.shrunk = select i1 %50, i8 40, i8 %z.0.in
  %z.1 = zext i8 %z.1.shrunk to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %49)
  %.not = icmp eq i32 %49, 3
  br i1 %.not, label %land.lhs.true121, label %if.end112.if.end124_crit_edge

if.end112.if.end124_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end124

land.lhs.true121:                                 ; preds = %if.end112
  %prev_fin = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 24
  %51 = ptrtoint ptr %prev_fin to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %prev_fin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool122.not = icmp eq i32 %52, 0
  br i1 %tobool122.not, label %if.then123, label %land.lhs.true121.if.end124_crit_edge

land.lhs.true121.if.end124_crit_edge:             ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end124

if.then123:                                       ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 0, i32 noundef %x.0) #13
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 1, i32 noundef %y.0) #13
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 24, i32 noundef 0) #13
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 325, i32 noundef 0) #13
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %land.lhs.true121.if.end124_crit_edge, %if.end112.if.end124_crit_edge
  %prev_fin125 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 24
  %53 = ptrtoint ptr %prev_fin125 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and78, ptr %prev_fin125, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %z.1.shrunk)
  %cmp126 = icmp ugt i8 %z.1.shrunk, 30
  br i1 %cmp126, label %if.end129.thread, label %if.end129

if.end129.thread:                                 ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 330, i32 noundef 1) #13
  br label %if.then136

if.end129:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %z.1.shrunk)
  %cmp130 = icmp ult i8 %z.1.shrunk, 25
  br i1 %cmp130, label %if.end133, label %if.end129.if.then136_crit_edge

if.end129.if.then136_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then136

if.end133:                                        ; preds = %if.end129
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 330, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %z.1.shrunk)
  %cmp134.not = icmp eq i8 %z.1.shrunk, 0
  br i1 %cmp134.not, label %if.end133.if.end137_crit_edge, label %if.end133.if.then136_crit_edge

if.end133.if.then136_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then136

if.end133.if.end137_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end137

if.then136:                                       ; preds = %if.end133.if.then136_crit_edge, %if.end129.if.then136_crit_edge, %if.end129.thread
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 0, i32 noundef %x.0) #13
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 1, i32 noundef %y.0) #13
  br label %if.end137

if.end137:                                        ; preds = %if.then136, %if.end133.if.end137_crit_edge
  %cmp134292 = phi i32 [ 1, %if.then136 ], [ 0, %if.end133.if.end137_crit_edge ]
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 24, i32 noundef %z.1) #13
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 325, i32 noundef %cmp134292) #13
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags, align 4
  %and141 = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %if.end137.if.end152_crit_edge, label %if.then143

if.end137.if.end152_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

if.then143:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx73, align 1
  %conv145 = zext i8 %57 to i32
  %shl146 = shl nuw nsw i32 %conv145, 1
  %and147 = and i32 %shl146, 8
  %58 = ptrtoint ptr %packet1 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %packet1, align 1
  %60 = lshr i8 %59, 4
  %61 = and i8 %60, 7
  %and150 = zext i8 %61 to i32
  %sub151 = sub nsw i32 %and147, %and150
  tail call void @input_event(ptr noundef %3, i32 noundef 2, i32 noundef 8, i32 noundef %sub151) #13
  br label %if.end152

if.end152:                                        ; preds = %if.then143, %if.end137.if.end152_crit_edge
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags, align 4
  %and154 = and i32 %63, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.end152.if.end157_crit_edge, label %if.then156

if.end152.if.end157_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end157

if.then156:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %forward.1)
  %tobool.i = icmp ne i32 %forward.1, 0
  %lnot.ext.i279 = zext i1 %tobool.i to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 277, i32 noundef %lnot.ext.i279) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %back.1)
  %tobool.i280 = icmp ne i32 %back.1, 0
  %lnot.ext.i281 = zext i1 %tobool.i280 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 278, i32 noundef %lnot.ext.i281) #13
  br label %if.end157

if.end157:                                        ; preds = %if.then156, %if.end152.if.end157_crit_edge
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags, align 4
  %and159 = and i32 %65, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %if.end157.cleanup_crit_edge, label %if.then161

if.end157.cleanup_crit_edge:                      ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then161:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #15
  %66 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx73, align 1
  %68 = lshr i8 %67, 2
  %.lobit294 = and i8 %68, 1
  %69 = zext i8 %.lobit294 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 256, i32 noundef %69) #13
  %70 = ptrtoint ptr %packet1 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %packet1, align 1
  %72 = lshr i8 %71, 4
  %.lobit295 = and i8 %72, 1
  %73 = zext i8 %.lobit295 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 257, i32 noundef %73) #13
  %arrayidx168 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %74 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx168, align 1
  %76 = lshr i8 %75, 2
  %.lobit296 = and i8 %76, 1
  %77 = zext i8 %.lobit296 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 258, i32 noundef %77) #13
  %78 = ptrtoint ptr %packet1 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %packet1, align 1
  %80 = lshr i8 %79, 5
  %.lobit297 = and i8 %80, 1
  %81 = zext i8 %.lobit297 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 259, i32 noundef %81) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then161, %if.end157.cleanup_crit_edge, %if.then84
  %.sink = phi ptr [ %5, %if.then84 ], [ %3, %if.then161 ], [ %3, %if.end157.cleanup_crit_edge ]
  tail call void @input_event(ptr noundef %.sink, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alps_set_abs_params_st(ptr nocapture noundef readonly %priv, ptr noundef %dev1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %x_max = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 14
  %0 = ptrtoint ptr %x_max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %x_max, align 4
  tail call void @input_set_abs_params(ptr noundef %dev1, i32 noundef 0, i32 noundef 0, i32 noundef %1, i32 noundef 0, i32 noundef 0) #13
  %y_max = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 15
  %2 = ptrtoint ptr %y_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %y_max, align 4
  tail call void @input_set_abs_params(ptr noundef %dev1, i32 noundef 1, i32 noundef 0, i32 noundef %3, i32 noundef 0, i32 noundef 0) #13
  tail call void @input_set_abs_params(ptr noundef %dev1, i32 noundef 24, i32 noundef 0, i32 noundef 127, i32 noundef 0, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_hw_init_v3(ptr noundef %psmouse) #0 align 64 {
entry:
  %dummy.i9.i183 = alloca [4 x i8], align 4
  %dummy.i.i184 = alloca [4 x i8], align 4
  %param.i.i164 = alloca [4 x i8], align 4
  %dummy.i9.i139 = alloca [4 x i8], align 4
  %dummy.i.i140 = alloca [4 x i8], align 4
  %param.i.i120 = alloca [4 x i8], align 4
  %dummy.i9.i = alloca [4 x i8], align 4
  %dummy.i.i = alloca [4 x i8], align 4
  %param.i.i = alloca [4 x i8], align 4
  %dummy.i9.i.i = alloca [4 x i8], align 4
  %dummy.i.i.i = alloca [4 x i8], align 4
  %param.i.i.i = alloca [4 x i8], align 4
  %param.i = alloca [4 x i8], align 4
  %param = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #13
  %flags = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %param, align 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @alps_setup_trackstick_v3(ptr noundef %psmouse, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call)
  %cmp = icmp eq i32 %call, -5
  br i1 %cmp, label %land.lhs.true.error_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.error_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i) #13
  %5 = getelementptr inbounds [4 x i8], ptr %param.i, i32 0, i32 1
  %6 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %param.i, align 4
  %call.i = call fastcc i32 @alps_rpt_cmd(ptr noundef %psmouse, i32 noundef 0, i32 noundef 236, ptr noundef nonnull %param.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ps2dev1, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %8, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.63) #16
  br label %alps_enter_command_mode.exit

if.end.i:                                         ; preds = %if.end
  %9 = ptrtoint ptr %param.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %param.i, align 4
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %10, label %if.end.i.do.body4.i_crit_edge [
    i8 115, label %if.end.i.lor.lhs.false_crit_edge
    i8 -120, label %land.lhs.true.i.i
  ]

if.end.i.lor.lhs.false_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

if.end.i.do.body4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %5, align 1
  %.off.i.i = add i8 %13, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i.i)
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  %14 = add i8 %13, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %14)
  %switch.selectcmp.i.i = icmp ult i8 %14, 32
  %or.cond.i = or i1 %switch.i.i, %switch.selectcmp.i.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.lor.lhs.false_crit_edge, label %land.lhs.true.i.i.do.body4.i_crit_edge

land.lhs.true.i.i.do.body4.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4.i

land.lhs.true.i.i.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

do.body4.i:                                       ; preds = %land.lhs.true.i.i.do.body4.i_crit_edge, %if.end.i.do.body4.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alps_enter_command_mode.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alps_hw_init_v3, %if.then9.i)) #13
          to label %alps_enter_command_mode.exit [label %if.then9.i], !srcloc !199

if.then9.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ps2dev1, align 4
  %dev12.i = getelementptr inbounds %struct.serio, ptr %16, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alps_enter_command_mode.__UNIQUE_ID_ddebug242, ptr noundef %dev12.i, ptr noundef nonnull @.str.65) #13
  br label %alps_enter_command_mode.exit

alps_enter_command_mode.exit:                     ; preds = %if.then9.i, %do.body4.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #13
  br label %do.end

lor.lhs.false:                                    ; preds = %land.lhs.true.i.i.lor.lhs.false_crit_edge, %if.end.i.lor.lhs.false_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #13
  %call.i.i = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %psmouse, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end.i.i:                                       ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i.i.i) #13
  %17 = getelementptr inbounds [4 x i8], ptr %param.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %param.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %param.i.i.i, align 4
  %call.i.i.i = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param.i.i.i, i32 noundef 1001) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i.i.alps_command_mode_read_reg.exit.thread13.i_crit_edge

if.end.i.i.alps_command_mode_read_reg.exit.thread13.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit.thread13.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %19 = getelementptr inbounds [4 x i8], ptr %param.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %param.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %param.i.i.i, align 4
  %conv.i.i.i = zext i8 %21 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 8
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %19, align 1
  %conv3.i.i.i = zext i8 %23 to i32
  %or.i.i.i = or i32 %shl.i.i.i, %conv3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %or.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %or.i.i.i, 4
  br i1 %cmp.not.i.i.i, label %alps_command_mode_read_reg.exit.i, label %if.end.i.i.i.alps_command_mode_read_reg.exit.thread13.i_crit_edge

if.end.i.i.i.alps_command_mode_read_reg.exit.thread13.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit.thread13.i

alps_command_mode_read_reg.exit.thread13.i:       ; preds = %if.end.i.i.i.alps_command_mode_read_reg.exit.thread13.i_crit_edge, %if.end.i.i.alps_command_mode_read_reg.exit.thread13.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i.i) #13
  br label %do.end

alps_command_mode_read_reg.exit.i:                ; preds = %if.end.i.i.i
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %17, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i.i) #13
  %conv.i = or i8 %25, 6
  %conv.i.i = zext i8 %conv.i to i32
  %26 = lshr i32 %conv.i.i, 4
  %27 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i.i) #13
  %nibble_commands.i.i.i = getelementptr inbounds %struct.alps_data, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %dummy.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %dummy.i.i.i, align 4
  %30 = ptrtoint ptr %nibble_commands.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nibble_commands.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.alps_nibble_commands, ptr %31, i32 %26
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %33, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %data.i.i.i = getelementptr %struct.alps_nibble_commands, ptr %31, i32 %26, i32 1
  %cond.i.i.i = select i1 %tobool10.not.i.i.i, ptr %data.i.i.i, ptr %dummy.i.i.i
  %call.i.i8.i = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %cond.i.i.i, i32 noundef %33) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i8.i)
  %tobool13.not.i.not.i.i = icmp eq i32 %call.i.i8.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i.i) #13
  br i1 %tobool13.not.i.not.i.i, label %alps_absolute_mode_v3.exit, label %alps_command_mode_read_reg.exit.i.do.end_crit_edge

alps_command_mode_read_reg.exit.i.do.end_crit_edge: ; preds = %alps_command_mode_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

alps_absolute_mode_v3.exit:                       ; preds = %alps_command_mode_read_reg.exit.i
  %and2.i.i = and i32 %conv.i.i, 15
  %34 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i9.i.i) #13
  %nibble_commands.i11.i.i = getelementptr inbounds %struct.alps_data, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %dummy.i9.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %dummy.i9.i.i, align 4
  %37 = ptrtoint ptr %nibble_commands.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nibble_commands.i11.i.i, align 4
  %arrayidx.i12.i.i = getelementptr %struct.alps_nibble_commands, ptr %38, i32 %and2.i.i
  %39 = ptrtoint ptr %arrayidx.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i12.i.i, align 4
  %and.i13.i.i = and i32 %40, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i)
  %tobool10.not.i14.i.i = icmp eq i32 %and.i13.i.i, 0
  %data.i15.i.i = getelementptr %struct.alps_nibble_commands, ptr %38, i32 %and2.i.i, i32 1
  %cond.i16.i.i = select i1 %tobool10.not.i14.i.i, ptr %data.i15.i.i, ptr %dummy.i9.i.i
  %call.i17.i.i = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %cond.i16.i.i, i32 noundef %40) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i.i)
  %tobool13.not.i18.not.i.not.i.not = icmp eq i32 %call.i17.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i9.i.i) #13
  br i1 %tobool13.not.i18.not.i.not.i.not, label %if.end8, label %alps_absolute_mode_v3.exit.do.end_crit_edge

alps_absolute_mode_v3.exit.do.end_crit_edge:      ; preds = %alps_absolute_mode_v3.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %alps_absolute_mode_v3.exit.do.end_crit_edge, %alps_command_mode_read_reg.exit.i.do.end_crit_edge, %alps_command_mode_read_reg.exit.thread13.i, %lor.lhs.false.do.end_crit_edge, %alps_enter_command_mode.exit
  %41 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ps2dev1, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %42, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52) #16
  br label %error

if.end8:                                          ; preds = %alps_absolute_mode_v3.exit
  %call.i107 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %psmouse, i32 noundef 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool.not.i108 = icmp eq i32 %call.i107, 0
  br i1 %tobool.not.i108, label %if.end.i111, label %if.end8.error_crit_edge

if.end8.error_crit_edge:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end.i111:                                      ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i.i) #13
  %43 = getelementptr inbounds [4 x i8], ptr %param.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %param.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %param.i.i, align 4
  %call.i.i109 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param.i.i, i32 noundef 1001) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i109)
  %tobool.not.i.i110 = icmp eq i32 %call.i.i109, 0
  br i1 %tobool.not.i.i110, label %if.end.i.i113, label %if.end.i111.alps_command_mode_read_reg.exit.thread218_crit_edge

if.end.i111.alps_command_mode_read_reg.exit.thread218_crit_edge: ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit.thread218

if.end.i.i113:                                    ; preds = %if.end.i111
  %45 = getelementptr inbounds [4 x i8], ptr %param.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %param.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %param.i.i, align 4
  %conv.i.i112 = zext i8 %47 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i112, 8
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %45, align 1
  %conv3.i.i = zext i8 %49 to i32
  %or.i.i = or i32 %shl.i.i, %conv3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %or.i.i)
  %cmp.not.i.i = icmp eq i32 %or.i.i, 6
  br i1 %cmp.not.i.i, label %alps_command_mode_read_reg.exit, label %if.end.i.i113.alps_command_mode_read_reg.exit.thread218_crit_edge

if.end.i.i113.alps_command_mode_read_reg.exit.thread218_crit_edge: ; preds = %if.end.i.i113
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit.thread218

alps_command_mode_read_reg.exit.thread218:        ; preds = %if.end.i.i113.alps_command_mode_read_reg.exit.thread218_crit_edge, %if.end.i111.alps_command_mode_read_reg.exit.thread218_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i) #13
  br label %error

alps_command_mode_read_reg.exit:                  ; preds = %if.end.i.i113
  %50 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %43, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i) #13
  %conv = or i8 %51, 1
  %conv.i115 = zext i8 %conv to i32
  %52 = lshr i32 %conv.i115, 4
  %53 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #13
  %nibble_commands.i.i = getelementptr inbounds %struct.alps_data, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %dummy.i.i, align 4
  %56 = ptrtoint ptr %nibble_commands.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %nibble_commands.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.alps_nibble_commands, ptr %57, i32 %52
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %59, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool10.not.i.i = icmp eq i32 %and.i.i, 0
  %data.i.i = getelementptr %struct.alps_nibble_commands, ptr %57, i32 %52, i32 1
  %cond.i.i = select i1 %tobool10.not.i.i, ptr %data.i.i, ptr %dummy.i.i
  %call.i.i117 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %cond.i.i, i32 noundef %59) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i117)
  %tobool13.not.i.not.i = icmp eq i32 %call.i.i117, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #13
  br i1 %tobool13.not.i.not.i, label %__alps_command_mode_write_reg.exit, label %alps_command_mode_read_reg.exit.error_crit_edge

alps_command_mode_read_reg.exit.error_crit_edge:  ; preds = %alps_command_mode_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

__alps_command_mode_write_reg.exit:               ; preds = %alps_command_mode_read_reg.exit
  %and2.i = and i32 %conv.i115, 15
  %60 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i9.i) #13
  %nibble_commands.i11.i = getelementptr inbounds %struct.alps_data, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %dummy.i9.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %dummy.i9.i, align 4
  %63 = ptrtoint ptr %nibble_commands.i11.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %nibble_commands.i11.i, align 4
  %arrayidx.i12.i = getelementptr %struct.alps_nibble_commands, ptr %64, i32 %and2.i
  %65 = ptrtoint ptr %arrayidx.i12.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i12.i, align 4
  %and.i13.i = and i32 %66, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool10.not.i14.i = icmp eq i32 %and.i13.i, 0
  %data.i15.i = getelementptr %struct.alps_nibble_commands, ptr %64, i32 %and2.i, i32 1
  %cond.i16.i = select i1 %tobool10.not.i14.i, ptr %data.i15.i, ptr %dummy.i9.i
  %call.i17.i = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %cond.i16.i, i32 noundef %66) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %tobool13.not.i18.not.i.not = icmp eq i32 %call.i17.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i9.i) #13
  br i1 %tobool13.not.i18.not.i.not, label %if.end16, label %__alps_command_mode_write_reg.exit.error_crit_edge

__alps_command_mode_write_reg.exit.error_crit_edge: ; preds = %__alps_command_mode_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end16:                                         ; preds = %__alps_command_mode_write_reg.exit
  %call.i121 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %psmouse, i32 noundef 7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %tobool.not.i122 = icmp eq i32 %call.i121, 0
  br i1 %tobool.not.i122, label %if.end.i126, label %if.end16.error_crit_edge

if.end16.error_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end.i126:                                      ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i.i120) #13
  %67 = getelementptr inbounds [4 x i8], ptr %param.i.i120, i32 0, i32 2
  %68 = ptrtoint ptr %param.i.i120 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %param.i.i120, align 4
  %call.i.i124 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param.i.i120, i32 noundef 1001) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i124)
  %tobool.not.i.i125 = icmp eq i32 %call.i.i124, 0
  br i1 %tobool.not.i.i125, label %if.end.i.i132, label %if.end.i126.alps_command_mode_read_reg.exit138.thread225_crit_edge

if.end.i126.alps_command_mode_read_reg.exit138.thread225_crit_edge: ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit138.thread225

if.end.i.i132:                                    ; preds = %if.end.i126
  %69 = getelementptr inbounds [4 x i8], ptr %param.i.i120, i32 0, i32 1
  %70 = ptrtoint ptr %param.i.i120 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %param.i.i120, align 4
  %conv.i.i127 = zext i8 %71 to i32
  %shl.i.i128 = shl nuw nsw i32 %conv.i.i127, 8
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %69, align 1
  %conv3.i.i129 = zext i8 %73 to i32
  %or.i.i130 = or i32 %shl.i.i128, %conv3.i.i129
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %or.i.i130)
  %cmp.not.i.i131 = icmp eq i32 %or.i.i130, 7
  br i1 %cmp.not.i.i131, label %alps_command_mode_read_reg.exit138, label %if.end.i.i132.alps_command_mode_read_reg.exit138.thread225_crit_edge

if.end.i.i132.alps_command_mode_read_reg.exit138.thread225_crit_edge: ; preds = %if.end.i.i132
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit138.thread225

alps_command_mode_read_reg.exit138.thread225:     ; preds = %if.end.i.i132.alps_command_mode_read_reg.exit138.thread225_crit_edge, %if.end.i126.alps_command_mode_read_reg.exit138.thread225_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i120) #13
  br label %error

alps_command_mode_read_reg.exit138:               ; preds = %if.end.i.i132
  %74 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %67, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i120) #13
  %conv23 = or i8 %75, 1
  %conv.i141 = zext i8 %conv23 to i32
  %76 = lshr i32 %conv.i141, 4
  %77 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i140) #13
  %nibble_commands.i.i143 = getelementptr inbounds %struct.alps_data, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %dummy.i.i140 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %dummy.i.i140, align 4
  %80 = ptrtoint ptr %nibble_commands.i.i143 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %nibble_commands.i.i143, align 4
  %arrayidx.i.i144 = getelementptr %struct.alps_nibble_commands, ptr %81, i32 %76
  %82 = ptrtoint ptr %arrayidx.i.i144 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i.i144, align 4
  %and.i.i145 = and i32 %83, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i145)
  %tobool10.not.i.i146 = icmp eq i32 %and.i.i145, 0
  %data.i.i147 = getelementptr %struct.alps_nibble_commands, ptr %81, i32 %76, i32 1
  %cond.i.i148 = select i1 %tobool10.not.i.i146, ptr %data.i.i147, ptr %dummy.i.i140
  %call.i.i149 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %cond.i.i148, i32 noundef %83) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i149)
  %tobool13.not.i.not.i150 = icmp eq i32 %call.i.i149, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i140) #13
  br i1 %tobool13.not.i.not.i150, label %__alps_command_mode_write_reg.exit163, label %alps_command_mode_read_reg.exit138.error_crit_edge

alps_command_mode_read_reg.exit138.error_crit_edge: ; preds = %alps_command_mode_read_reg.exit138
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

__alps_command_mode_write_reg.exit163:            ; preds = %alps_command_mode_read_reg.exit138
  %and2.i151 = and i32 %conv.i141, 15
  %84 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i9.i139) #13
  %nibble_commands.i11.i152 = getelementptr inbounds %struct.alps_data, ptr %85, i32 0, i32 6
  %86 = ptrtoint ptr %dummy.i9.i139 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %dummy.i9.i139, align 4
  %87 = ptrtoint ptr %nibble_commands.i11.i152 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %nibble_commands.i11.i152, align 4
  %arrayidx.i12.i153 = getelementptr %struct.alps_nibble_commands, ptr %88, i32 %and2.i151
  %89 = ptrtoint ptr %arrayidx.i12.i153 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.i12.i153, align 4
  %and.i13.i154 = and i32 %90, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i154)
  %tobool10.not.i14.i155 = icmp eq i32 %and.i13.i154, 0
  %data.i15.i156 = getelementptr %struct.alps_nibble_commands, ptr %88, i32 %and2.i151, i32 1
  %cond.i16.i157 = select i1 %tobool10.not.i14.i155, ptr %data.i15.i156, ptr %dummy.i9.i139
  %call.i17.i158 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %cond.i16.i157, i32 noundef %90) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i158)
  %tobool13.not.i18.not.i159.not = icmp eq i32 %call.i17.i158, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i9.i139) #13
  br i1 %tobool13.not.i18.not.i159.not, label %if.end27, label %__alps_command_mode_write_reg.exit163.error_crit_edge

__alps_command_mode_write_reg.exit163.error_crit_edge: ; preds = %__alps_command_mode_write_reg.exit163
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end27:                                         ; preds = %__alps_command_mode_write_reg.exit163
  %call.i165 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %psmouse, i32 noundef 324) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %tobool.not.i166 = icmp eq i32 %call.i165, 0
  br i1 %tobool.not.i166, label %if.end.i170, label %if.end27.error_crit_edge

if.end27.error_crit_edge:                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end.i170:                                      ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i.i164) #13
  %91 = ptrtoint ptr %param.i.i164 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %param.i.i164, align 4
  %call.i.i168 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param.i.i164, i32 noundef 1001) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i168)
  %tobool.not.i.i169 = icmp eq i32 %call.i.i168, 0
  br i1 %tobool.not.i.i169, label %if.end.i.i176, label %if.end.i170.alps_command_mode_read_reg.exit182.thread232_crit_edge

if.end.i170.alps_command_mode_read_reg.exit182.thread232_crit_edge: ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit182.thread232

if.end.i.i176:                                    ; preds = %if.end.i170
  %92 = getelementptr inbounds [4 x i8], ptr %param.i.i164, i32 0, i32 1
  %93 = ptrtoint ptr %param.i.i164 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %param.i.i164, align 4
  %conv.i.i171 = zext i8 %94 to i32
  %shl.i.i172 = shl nuw nsw i32 %conv.i.i171, 8
  %95 = ptrtoint ptr %92 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %92, align 1
  %conv3.i.i173 = zext i8 %96 to i32
  %or.i.i174 = or i32 %shl.i.i172, %conv3.i.i173
  call void @__sanitizer_cov_trace_const_cmp4(i32 324, i32 %or.i.i174)
  %cmp.not.i.i175 = icmp eq i32 %or.i.i174, 324
  br i1 %cmp.not.i.i175, label %alps_command_mode_read_reg.exit182, label %if.end.i.i176.alps_command_mode_read_reg.exit182.thread232_crit_edge

if.end.i.i176.alps_command_mode_read_reg.exit182.thread232_crit_edge: ; preds = %if.end.i.i176
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit182.thread232

alps_command_mode_read_reg.exit182.thread232:     ; preds = %if.end.i.i176.alps_command_mode_read_reg.exit182.thread232_crit_edge, %if.end.i170.alps_command_mode_read_reg.exit182.thread232_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i164) #13
  br label %error

alps_command_mode_read_reg.exit182:               ; preds = %if.end.i.i176
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i164) #13
  %97 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i184) #13
  %nibble_commands.i.i186 = getelementptr inbounds %struct.alps_data, ptr %98, i32 0, i32 6
  %99 = ptrtoint ptr %dummy.i.i184 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %dummy.i.i184, align 4
  %100 = ptrtoint ptr %nibble_commands.i.i186 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %nibble_commands.i.i186, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  %and.i.i187 = and i32 %103, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i187)
  %tobool10.not.i.i188 = icmp eq i32 %and.i.i187, 0
  %data.i.i189 = getelementptr %struct.alps_nibble_commands, ptr %101, i32 0, i32 1
  %cond.i.i190 = select i1 %tobool10.not.i.i188, ptr %data.i.i189, ptr %dummy.i.i184
  %call.i.i191 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %cond.i.i190, i32 noundef %103) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i191)
  %tobool13.not.i.not.i192 = icmp eq i32 %call.i.i191, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i184) #13
  br i1 %tobool13.not.i.not.i192, label %__alps_command_mode_write_reg.exit204, label %alps_command_mode_read_reg.exit182.error_crit_edge

alps_command_mode_read_reg.exit182.error_crit_edge: ; preds = %alps_command_mode_read_reg.exit182
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

__alps_command_mode_write_reg.exit204:            ; preds = %alps_command_mode_read_reg.exit182
  %104 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i9.i183) #13
  %nibble_commands.i11.i193 = getelementptr inbounds %struct.alps_data, ptr %105, i32 0, i32 6
  %106 = ptrtoint ptr %dummy.i9.i183 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1, ptr %dummy.i9.i183, align 4
  %107 = ptrtoint ptr %nibble_commands.i11.i193 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %nibble_commands.i11.i193, align 4
  %arrayidx.i12.i194 = getelementptr %struct.alps_nibble_commands, ptr %108, i32 4
  %109 = ptrtoint ptr %arrayidx.i12.i194 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx.i12.i194, align 4
  %and.i13.i195 = and i32 %110, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i195)
  %tobool10.not.i14.i196 = icmp eq i32 %and.i13.i195, 0
  %data.i15.i197 = getelementptr %struct.alps_nibble_commands, ptr %108, i32 4, i32 1
  %cond.i16.i198 = select i1 %tobool10.not.i14.i196, ptr %data.i15.i197, ptr %dummy.i9.i183
  %call.i17.i199 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %cond.i16.i198, i32 noundef %110) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i199)
  %tobool13.not.i18.not.i200.not = icmp eq i32 %call.i17.i199, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i9.i183) #13
  br i1 %tobool13.not.i18.not.i200.not, label %if.end36, label %__alps_command_mode_write_reg.exit204.error_crit_edge

__alps_command_mode_write_reg.exit204.error_crit_edge: ; preds = %__alps_command_mode_write_reg.exit204
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end36:                                         ; preds = %__alps_command_mode_write_reg.exit204
  %call37 = call fastcc i32 @alps_command_mode_read_reg(ptr noundef %psmouse, i32 noundef 345)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call37)
  %cmp38 = icmp eq i32 %call37, -1
  br i1 %cmp38, label %if.end36.error_crit_edge, label %if.end41

if.end36.error_crit_edge:                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end41:                                         ; preds = %if.end36
  %call42 = call fastcc i32 @__alps_command_mode_write_reg(ptr noundef %psmouse, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.error_crit_edge

if.end41.error_crit_edge:                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end45:                                         ; preds = %if.end41
  %call46 = call fastcc i32 @alps_command_mode_read_reg(ptr noundef %psmouse, i32 noundef 355)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call46)
  %cmp47 = icmp eq i32 %call46, -1
  br i1 %cmp47, label %if.end45.error_crit_edge, label %if.end50

if.end45.error_crit_edge:                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end50:                                         ; preds = %if.end45
  %call51 = call fastcc i32 @alps_command_mode_write_reg(ptr noundef %psmouse, i32 noundef 355, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end50.error_crit_edge

if.end50.error_crit_edge:                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end54:                                         ; preds = %if.end50
  %call55 = call fastcc i32 @alps_command_mode_read_reg(ptr noundef %psmouse, i32 noundef 354)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call55)
  %cmp56 = icmp eq i32 %call55, -1
  br i1 %cmp56, label %if.end54.error_crit_edge, label %if.end59

if.end54.error_crit_edge:                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end59:                                         ; preds = %if.end54
  %call60 = call fastcc i32 @alps_command_mode_write_reg(ptr noundef %psmouse, i32 noundef 354, i8 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end59.error_crit_edge

if.end59.error_crit_edge:                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end63:                                         ; preds = %if.end59
  %call.i205 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 234) #13
  %111 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 100, ptr %param, align 4
  %call65 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %lor.lhs.false67, label %if.end63.do.end73_crit_edge

if.end63.do.end73_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end73

lor.lhs.false67:                                  ; preds = %if.end63
  %call68 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 244) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %lor.lhs.false67.cleanup_crit_edge, label %lor.lhs.false67.do.end73_crit_edge

lor.lhs.false67.do.end73_crit_edge:               ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end73

lor.lhs.false67.cleanup_crit_edge:                ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end73:                                         ; preds = %lor.lhs.false67.do.end73_crit_edge, %if.end63.do.end73_crit_edge
  %112 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ps2dev1, align 4
  %dev76 = getelementptr inbounds %struct.serio, ptr %113, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev76, ptr noundef nonnull @.str.55) #16
  br label %cleanup

error:                                            ; preds = %if.end59.error_crit_edge, %if.end54.error_crit_edge, %if.end50.error_crit_edge, %if.end45.error_crit_edge, %if.end41.error_crit_edge, %if.end36.error_crit_edge, %__alps_command_mode_write_reg.exit204.error_crit_edge, %alps_command_mode_read_reg.exit182.error_crit_edge, %alps_command_mode_read_reg.exit182.thread232, %if.end27.error_crit_edge, %__alps_command_mode_write_reg.exit163.error_crit_edge, %alps_command_mode_read_reg.exit138.error_crit_edge, %alps_command_mode_read_reg.exit138.thread225, %if.end16.error_crit_edge, %__alps_command_mode_write_reg.exit.error_crit_edge, %alps_command_mode_read_reg.exit.error_crit_edge, %alps_command_mode_read_reg.exit.thread218, %if.end8.error_crit_edge, %do.end, %land.lhs.true.error_crit_edge
  %call.i209 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 234) #13
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end73, %lor.lhs.false67.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %error ], [ -1, %do.end73 ], [ 0, %lor.lhs.false67.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alps_process_packet_v3(ptr noundef %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %1)
  %cmp = icmp eq i8 %1, 63
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @alps_process_trackstick_packet_v3(ptr noundef %psmouse)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @alps_process_touchpad_packet_v3_v5(ptr noundef %psmouse)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alps_set_abs_params_semi_mt(ptr nocapture noundef readonly %priv, ptr noundef %dev1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @alps_set_abs_params_mt_common(ptr noundef %priv, ptr noundef %dev1)
  tail call void @input_set_abs_params(ptr noundef %dev1, i32 noundef 24, i32 noundef 0, i32 noundef 127, i32 noundef 0, i32 noundef 0) #13
  %call = tail call i32 @input_mt_init_slots(ptr noundef %dev1, i32 noundef 4, i32 noundef 21) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @alps_decode_pinnacle(ptr nocapture noundef %f, ptr nocapture noundef readonly %p, ptr nocapture noundef readnone %psmouse) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %p, i32 4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %first_mp = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 6
  %2 = ptrtoint ptr %first_mp to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %first_mp, align 4
  %3 = shl i8 %1, 1
  %bf.shl = and i8 %3, -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %first_mp, align 4
  %4 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %p, align 1
  %.lobit = and i8 %5, 64
  %bf.clear13 = and i8 %bf.set, -65
  %bf.set14 = or i8 %bf.clear13, %.lobit
  store i8 %bf.set14, ptr %first_mp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lobit)
  %tobool19.not = icmp eq i8 %.lobit, 0
  br i1 %tobool19.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx20 = getelementptr i8, ptr %p, i32 5
  %6 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx20, align 1
  %8 = and i8 %7, 3
  %narrow = add nuw nsw i8 %8, 1
  %add = zext i8 %narrow to i32
  %fingers = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 2
  %9 = ptrtoint ptr %fingers to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %fingers, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %12 = and i8 %11, 126
  %and25 = zext i8 %12 to i32
  %shl = shl nuw nsw i32 %and25, 8
  %arrayidx26 = getelementptr i8, ptr %p, i32 1
  %13 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx26, align 1
  %15 = and i8 %14, 127
  %and28 = zext i8 %15 to i32
  %shl29 = shl nuw nsw i32 %and28, 2
  %or = or i32 %shl29, %shl
  %16 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %p, align 1
  %18 = lshr i8 %17, 4
  %19 = and i8 %18, 3
  %20 = zext i8 %19 to i32
  %or33 = or i32 %or, %20
  %21 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or33, ptr %f, align 4
  %arrayidx34 = getelementptr i8, ptr %p, i32 3
  %22 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx34, align 1
  %24 = and i8 %23, 112
  %and36 = zext i8 %24 to i32
  %shl37 = shl nuw nsw i32 %and36, 4
  %arrayidx38 = getelementptr i8, ptr %p, i32 2
  %25 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx38, align 1
  %27 = shl i8 %26, 1
  %shl41 = zext i8 %27 to i32
  %or42 = or i32 %shl37, %shl41
  %28 = load i8, ptr %arrayidx, align 1
  %29 = and i8 %28, 1
  %and45 = zext i8 %29 to i32
  %or46 = or i32 %or42, %and45
  %y_map = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 1
  %30 = ptrtoint ptr %y_map to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or46, ptr %y_map, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx47 = getelementptr i8, ptr %p, i32 1
  %31 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx47, align 1
  %33 = and i8 %32, 127
  %and49 = zext i8 %33 to i16
  %shl50 = shl nuw nsw i16 %and49, 4
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx, align 1
  %36 = lshr i8 %35, 2
  %37 = and i8 %36, 12
  %38 = zext i8 %37 to i16
  %or55 = or i16 %shl50, %38
  %39 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %p, align 1
  %41 = lshr i8 %40, 4
  %42 = and i8 %41, 3
  %43 = zext i8 %42 to i16
  %or60 = or i16 %or55, %43
  %st = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 4
  %44 = ptrtoint ptr %st to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %or60, ptr %st, align 4
  %arrayidx62 = getelementptr i8, ptr %p, i32 2
  %45 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx62, align 1
  %47 = and i8 %46, 127
  %and64 = zext i8 %47 to i16
  %shl65 = shl nuw nsw i16 %and64, 4
  %48 = load i8, ptr %arrayidx, align 1
  %49 = and i8 %48, 15
  %and68 = zext i8 %49 to i16
  %or69 = or i16 %shl65, %and68
  %y = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 4, i32 1
  %50 = ptrtoint ptr %y to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %or69, ptr %y, align 2
  %arrayidx72 = getelementptr i8, ptr %p, i32 5
  %51 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx72, align 1
  %53 = and i8 %52, 127
  %and74 = zext i8 %53 to i32
  %pressure = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 3
  %54 = ptrtoint ptr %pressure to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and74, ptr %pressure, align 4
  %arrayidx.i = getelementptr i8, ptr %p, i32 3
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i, align 1
  %57 = shl i8 %56, 5
  %bf.shl.i = and i8 %57, 32
  %bf.clear.i = and i8 %bf.set14, -33
  %bf.set.i = or i8 %bf.shl.i, %bf.clear.i
  %58 = ptrtoint ptr %first_mp to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %bf.set.i, ptr %first_mp, align 4
  %59 = load i8, ptr %arrayidx.i, align 1
  %60 = shl i8 %59, 3
  %bf.shl12.i = and i8 %60, 16
  %bf.clear13.i = and i8 %bf.set.i, -17
  %bf.set14.i = or i8 %bf.shl12.i, %bf.clear13.i
  store i8 %bf.set14.i, ptr %first_mp, align 4
  %61 = load i8, ptr %arrayidx.i, align 1
  %62 = shl i8 %61, 1
  %bf.shl26.i = and i8 %62, 8
  %bf.clear27.i = and i8 %bf.set14.i, -9
  %bf.set28.i = or i8 %bf.clear27.i, %bf.shl26.i
  store i8 %bf.set28.i, ptr %first_mp, align 4
  %63 = load i8, ptr %arrayidx.i, align 1
  %64 = lshr i8 %63, 2
  %bf.shl40.i = and i8 %64, 4
  %bf.clear41.i = and i8 %bf.set28.i, -5
  %bf.set42.i = or i8 %bf.clear41.i, %bf.shl40.i
  store i8 %bf.set42.i, ptr %first_mp, align 4
  %65 = load i8, ptr %arrayidx.i, align 1
  %66 = lshr i8 %65, 4
  %bf.shl54.i = and i8 %66, 2
  %bf.clear55.i = and i8 %bf.set42.i, -3
  %bf.set56.i = or i8 %bf.clear55.i, %bf.shl54.i
  store i8 %bf.set56.i, ptr %first_mp, align 4
  %67 = load i8, ptr %arrayidx.i, align 1
  %68 = lshr i8 %67, 6
  %.lobit.i = and i8 %68, 1
  %bf.clear68.i = and i8 %bf.set56.i, -2
  %bf.set69.i = or i8 %bf.clear68.i, %.lobit.i
  store i8 %bf.set69.i, ptr %first_mp, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alps_probe_trackstick_v3_v7(ptr noundef %psmouse, i32 noundef %reg_base) unnamed_addr #0 align 64 {
entry:
  %param.i.i = alloca [4 x i8], align 4
  %param.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i) #13
  %0 = getelementptr inbounds [4 x i8], ptr %param.i, i32 0, i32 1
  %1 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %param.i, align 4
  %call.i = call fastcc i32 @alps_rpt_cmd(ptr noundef %psmouse, i32 noundef 0, i32 noundef 236, ptr noundef nonnull %param.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %2 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps2dev.i, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.63) #16
  br label %alps_enter_command_mode.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %param.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %param.i, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %5, label %if.end.i.do.body4.i_crit_edge [
    i8 115, label %if.end.i.if.end_crit_edge
    i8 -120, label %land.lhs.true.i.i
  ]

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i.do.body4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %0, align 1
  %.off.i.i = add i8 %8, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i.i)
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  %9 = add i8 %8, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %9)
  %switch.selectcmp.i.i = icmp ult i8 %9, 32
  %or.cond.i = or i1 %switch.i.i, %switch.selectcmp.i.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.if.end_crit_edge, label %land.lhs.true.i.i.do.body4.i_crit_edge

land.lhs.true.i.i.do.body4.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4.i

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.body4.i:                                       ; preds = %land.lhs.true.i.i.do.body4.i_crit_edge, %if.end.i.do.body4.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alps_enter_command_mode.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alps_probe_trackstick_v3_v7, %if.then9.i)) #13
          to label %alps_enter_command_mode.exit [label %if.then9.i], !srcloc !199

if.then9.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  %ps2dev10.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %10 = ptrtoint ptr %ps2dev10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ps2dev10.i, align 4
  %dev12.i = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alps_enter_command_mode.__UNIQUE_ID_ddebug242, ptr noundef %dev12.i, ptr noundef nonnull @.str.65) #13
  br label %alps_enter_command_mode.exit

alps_enter_command_mode.exit:                     ; preds = %if.then9.i, %do.body4.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #13
  br label %error

if.end:                                           ; preds = %land.lhs.true.i.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #13
  %add = add i32 %reg_base, 8
  %call.i9 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %psmouse, i32 noundef %add) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %tobool.not.i10 = icmp eq i32 %call.i9, 0
  br i1 %tobool.not.i10, label %if.end.i11, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end.i11:                                       ; preds = %if.end
  %ps2dev1.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i.i) #13
  %12 = getelementptr inbounds [4 x i8], ptr %param.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %param.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %param.i.i, align 4
  %call.i.i = call i32 @ps2_command(ptr noundef %ps2dev1.i.i, ptr noundef nonnull %param.i.i, i32 noundef 1001) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i11.alps_command_mode_read_reg.exit.thread19_crit_edge

if.end.i11.alps_command_mode_read_reg.exit.thread19_crit_edge: ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit.thread19

if.end.i.i:                                       ; preds = %if.end.i11
  %14 = getelementptr inbounds [4 x i8], ptr %param.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %param.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %param.i.i, align 4
  %conv.i.i = zext i8 %16 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %14, align 1
  %conv3.i.i = zext i8 %18 to i32
  %or.i.i = or i32 %shl.i.i, %conv3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %add)
  %cmp.not.i.i = icmp eq i32 %or.i.i, %add
  br i1 %cmp.not.i.i, label %alps_command_mode_read_reg.exit, label %if.end.i.i.alps_command_mode_read_reg.exit.thread19_crit_edge

if.end.i.i.alps_command_mode_read_reg.exit.thread19_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit.thread19

alps_command_mode_read_reg.exit.thread19:         ; preds = %if.end.i.i.alps_command_mode_read_reg.exit.thread19_crit_edge, %if.end.i11.alps_command_mode_read_reg.exit.thread19_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i) #13
  br label %error

alps_command_mode_read_reg.exit:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %12, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %tobool4.not = icmp sgt i8 %20, -1
  %cond = select i1 %tobool4.not, i32 -19, i32 0
  br label %error

error:                                            ; preds = %alps_command_mode_read_reg.exit, %alps_command_mode_read_reg.exit.thread19, %if.end.error_crit_edge, %alps_enter_command_mode.exit
  %ret.0 = phi i32 [ -5, %alps_enter_command_mode.exit ], [ %cond, %alps_command_mode_read_reg.exit ], [ -5, %alps_command_mode_read_reg.exit.thread19 ], [ -5, %if.end.error_crit_edge ]
  %ps2dev1.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call.i13 = call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef null, i32 noundef 234) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_hw_init_rushmore_v3(ptr noundef %psmouse) #0 align 64 {
entry:
  %param.i.i72 = alloca [4 x i8], align 4
  %dummy.i9.i.i = alloca [4 x i8], align 4
  %dummy.i.i.i = alloca [4 x i8], align 4
  %param.i.i = alloca [4 x i8], align 4
  %param.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %flags = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @alps_setup_trackstick_v3(ptr noundef %psmouse, i32 noundef 49856)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call)
  %cmp = icmp eq i32 %call, -5
  br i1 %cmp, label %if.then.error_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then.error_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i) #13
  %4 = getelementptr inbounds [4 x i8], ptr %param.i, i32 0, i32 1
  %5 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %param.i, align 4
  %call.i = call fastcc i32 @alps_rpt_cmd(ptr noundef %psmouse, i32 noundef 0, i32 noundef 236, ptr noundef nonnull %param.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ps2dev1, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.63) #16
  br label %alps_enter_command_mode.exit

if.end.i:                                         ; preds = %if.end3
  %8 = ptrtoint ptr %param.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %param.i, align 4
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %9, label %if.end.i.do.body4.i_crit_edge [
    i8 115, label %if.end.i.lor.lhs.false_crit_edge
    i8 -120, label %land.lhs.true.i.i
  ]

if.end.i.lor.lhs.false_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

if.end.i.do.body4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %4, align 1
  %.off.i.i = add i8 %12, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i.i)
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  %13 = add i8 %12, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %13)
  %switch.selectcmp.i.i = icmp ult i8 %13, 32
  %or.cond.i = or i1 %switch.i.i, %switch.selectcmp.i.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.lor.lhs.false_crit_edge, label %land.lhs.true.i.i.do.body4.i_crit_edge

land.lhs.true.i.i.do.body4.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4.i

land.lhs.true.i.i.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

do.body4.i:                                       ; preds = %land.lhs.true.i.i.do.body4.i_crit_edge, %if.end.i.do.body4.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alps_enter_command_mode.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alps_hw_init_rushmore_v3, %if.then9.i)) #13
          to label %alps_enter_command_mode.exit [label %if.then9.i], !srcloc !199

if.then9.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ps2dev1, align 4
  %dev12.i = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alps_enter_command_mode.__UNIQUE_ID_ddebug242, ptr noundef %dev12.i, ptr noundef nonnull @.str.65) #13
  br label %alps_enter_command_mode.exit

alps_enter_command_mode.exit:                     ; preds = %if.then9.i, %do.body4.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #13
  br label %error

lor.lhs.false:                                    ; preds = %land.lhs.true.i.i.lor.lhs.false_crit_edge, %if.end.i.lor.lhs.false_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #13
  %call.i63 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %psmouse, i32 noundef 49881) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool.not.i64 = icmp eq i32 %call.i63, 0
  br i1 %tobool.not.i64, label %if.end.i65, label %lor.lhs.false.error_crit_edge

lor.lhs.false.error_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end.i65:                                       ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i.i) #13
  %16 = ptrtoint ptr %param.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %param.i.i, align 4
  %call.i.i = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param.i.i, i32 noundef 1001) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i65.alps_command_mode_read_reg.exit.thread101_crit_edge

if.end.i65.alps_command_mode_read_reg.exit.thread101_crit_edge: ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit.thread101

if.end.i.i:                                       ; preds = %if.end.i65
  %17 = getelementptr inbounds [4 x i8], ptr %param.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %param.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %param.i.i, align 4
  %conv.i.i = zext i8 %19 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %17, align 1
  %conv3.i.i = zext i8 %21 to i32
  %or.i.i = or i32 %shl.i.i, %conv3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 49881, i32 %or.i.i)
  %cmp.not.i.i = icmp eq i32 %or.i.i, 49881
  br i1 %cmp.not.i.i, label %alps_command_mode_read_reg.exit, label %if.end.i.i.alps_command_mode_read_reg.exit.thread101_crit_edge

if.end.i.i.alps_command_mode_read_reg.exit.thread101_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit.thread101

alps_command_mode_read_reg.exit.thread101:        ; preds = %if.end.i.i.alps_command_mode_read_reg.exit.thread101_crit_edge, %if.end.i65.alps_command_mode_read_reg.exit.thread101_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i) #13
  br label %error

alps_command_mode_read_reg.exit:                  ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i) #13
  %call.i67 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %psmouse, i32 noundef 49867) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool.not.i68 = icmp eq i32 %call.i67, 0
  br i1 %tobool.not.i68, label %if.end.i69, label %alps_command_mode_read_reg.exit.error_crit_edge

alps_command_mode_read_reg.exit.error_crit_edge:  ; preds = %alps_command_mode_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end.i69:                                       ; preds = %alps_command_mode_read_reg.exit
  %22 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i.i) #13
  %nibble_commands.i.i.i = getelementptr inbounds %struct.alps_data, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %dummy.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %dummy.i.i.i, align 4
  %25 = ptrtoint ptr %nibble_commands.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nibble_commands.i.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %and.i.i.i = and i32 %28, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %data.i.i.i = getelementptr %struct.alps_nibble_commands, ptr %26, i32 0, i32 1
  %cond.i.i.i = select i1 %tobool10.not.i.i.i, ptr %data.i.i.i, ptr %dummy.i.i.i
  %call.i.i.i = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %cond.i.i.i, i32 noundef %28) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool13.not.i.not.i.i = icmp eq i32 %call.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i.i) #13
  br i1 %tobool13.not.i.not.i.i, label %alps_command_mode_write_reg.exit, label %if.end.i69.error_crit_edge

if.end.i69.error_crit_edge:                       ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

alps_command_mode_write_reg.exit:                 ; preds = %if.end.i69
  %29 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i9.i.i) #13
  %nibble_commands.i11.i.i = getelementptr inbounds %struct.alps_data, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %dummy.i9.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %dummy.i9.i.i, align 4
  %32 = ptrtoint ptr %nibble_commands.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nibble_commands.i11.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %and.i13.i.i = and i32 %35, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i)
  %tobool10.not.i14.i.i = icmp eq i32 %and.i13.i.i, 0
  %data.i15.i.i = getelementptr %struct.alps_nibble_commands, ptr %33, i32 0, i32 1
  %cond.i16.i.i = select i1 %tobool10.not.i14.i.i, ptr %data.i15.i.i, ptr %dummy.i9.i.i
  %call.i17.i.i = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %cond.i16.i.i, i32 noundef %35) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i.i)
  %tobool13.not.i18.not.i.i.not = icmp eq i32 %call.i17.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i9.i.i) #13
  br i1 %tobool13.not.i18.not.i.i.not, label %if.end12, label %alps_command_mode_write_reg.exit.error_crit_edge

alps_command_mode_write_reg.exit.error_crit_edge: ; preds = %alps_command_mode_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end12:                                         ; preds = %alps_command_mode_write_reg.exit
  %call13 = call fastcc i32 @alps_get_v3_v7_resolution(ptr noundef %psmouse, i32 noundef 49882)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.error_crit_edge

if.end12.error_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end16:                                         ; preds = %if.end12
  %call.i73 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %psmouse, i32 noundef 49862) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool.not.i74 = icmp eq i32 %call.i73, 0
  br i1 %tobool.not.i74, label %if.end.i78, label %if.end16.error_crit_edge

if.end16.error_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end.i78:                                       ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i.i72) #13
  %36 = getelementptr inbounds [4 x i8], ptr %param.i.i72, i32 0, i32 2
  %37 = ptrtoint ptr %param.i.i72 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %param.i.i72, align 4
  %call.i.i76 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param.i.i72, i32 noundef 1001) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i76)
  %tobool.not.i.i77 = icmp eq i32 %call.i.i76, 0
  br i1 %tobool.not.i.i77, label %if.end.i.i84, label %if.end.i78.alps_command_mode_read_reg.exit90.thread108_crit_edge

if.end.i78.alps_command_mode_read_reg.exit90.thread108_crit_edge: ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit90.thread108

if.end.i.i84:                                     ; preds = %if.end.i78
  %38 = getelementptr inbounds [4 x i8], ptr %param.i.i72, i32 0, i32 1
  %39 = ptrtoint ptr %param.i.i72 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %param.i.i72, align 4
  %conv.i.i79 = zext i8 %40 to i32
  %shl.i.i80 = shl nuw nsw i32 %conv.i.i79, 8
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %38, align 1
  %conv3.i.i81 = zext i8 %42 to i32
  %or.i.i82 = or i32 %shl.i.i80, %conv3.i.i81
  call void @__sanitizer_cov_trace_const_cmp4(i32 49862, i32 %or.i.i82)
  %cmp.not.i.i83 = icmp eq i32 %or.i.i82, 49862
  br i1 %cmp.not.i.i83, label %alps_command_mode_read_reg.exit90, label %if.end.i.i84.alps_command_mode_read_reg.exit90.thread108_crit_edge

if.end.i.i84.alps_command_mode_read_reg.exit90.thread108_crit_edge: ; preds = %if.end.i.i84
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit90.thread108

alps_command_mode_read_reg.exit90.thread108:      ; preds = %if.end.i.i84.alps_command_mode_read_reg.exit90.thread108_crit_edge, %if.end.i78.alps_command_mode_read_reg.exit90.thread108_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i72) #13
  br label %error

alps_command_mode_read_reg.exit90:                ; preds = %if.end.i.i84
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %36, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i72) #13
  %conv = and i8 %44, -3
  %call22 = call fastcc i32 @__alps_command_mode_write_reg(ptr noundef %psmouse, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %alps_command_mode_read_reg.exit90.error_crit_edge

alps_command_mode_read_reg.exit90.error_crit_edge: ; preds = %alps_command_mode_read_reg.exit90
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end25:                                         ; preds = %alps_command_mode_read_reg.exit90
  %call26 = call fastcc i32 @alps_command_mode_write_reg(ptr noundef %psmouse, i32 noundef 49865, i8 noundef zeroext 100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.error_crit_edge

if.end25.error_crit_edge:                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end29:                                         ; preds = %if.end25
  %call30 = call fastcc i32 @alps_command_mode_read_reg(ptr noundef %psmouse, i32 noundef 49860)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call30)
  %cmp31 = icmp eq i32 %call30, -1
  br i1 %cmp31, label %if.end29.error_crit_edge, label %if.end34

if.end29.error_crit_edge:                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end34:                                         ; preds = %if.end29
  %45 = trunc i32 %call30 to i8
  %conv35 = or i8 %45, 2
  %call36 = call fastcc i32 @__alps_command_mode_write_reg(ptr noundef %psmouse, i8 noundef zeroext %conv35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end34.error_crit_edge

if.end34.error_crit_edge:                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end39:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %call.i91 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 234) #13
  %call41 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 244) #13
  br label %cleanup

error:                                            ; preds = %if.end34.error_crit_edge, %if.end29.error_crit_edge, %if.end25.error_crit_edge, %alps_command_mode_read_reg.exit90.error_crit_edge, %alps_command_mode_read_reg.exit90.thread108, %if.end16.error_crit_edge, %if.end12.error_crit_edge, %alps_command_mode_write_reg.exit.error_crit_edge, %if.end.i69.error_crit_edge, %alps_command_mode_read_reg.exit.error_crit_edge, %alps_command_mode_read_reg.exit.thread101, %lor.lhs.false.error_crit_edge, %alps_enter_command_mode.exit, %if.then.error_crit_edge
  %call.i94 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 234) #13
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end39
  %retval.0 = phi i32 [ -1, %error ], [ %call41, %if.end39 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @alps_decode_rushmore(ptr nocapture noundef %f, ptr nocapture noundef readonly %p, ptr nocapture noundef readnone %psmouse) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %p, i32 4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %first_mp = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 6
  %2 = ptrtoint ptr %first_mp to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %first_mp, align 4
  %3 = shl i8 %1, 1
  %bf.shl = and i8 %3, -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %first_mp, align 4
  %arrayidx2 = getelementptr i8, ptr %p, i32 5
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  %.lobit = and i8 %5, 64
  %bf.clear13 = and i8 %bf.set, -65
  %bf.set14 = or i8 %bf.clear13, %.lobit
  store i8 %bf.set14, ptr %first_mp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lobit)
  %tobool19.not = icmp eq i8 %.lobit, 0
  br i1 %tobool19.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %conv21 = zext i8 %7 to i32
  %and22 = and i32 %conv21, 3
  %8 = lshr i32 %conv21, 2
  %and25 = and i32 %8, 3
  %9 = tail call i32 @llvm.umax.i32(i32 %and22, i32 %and25)
  %add = add nuw nsw i32 %9, 1
  %fingers = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 2
  %10 = ptrtoint ptr %fingers to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %fingers, align 4
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx2, align 1
  %13 = and i8 %12, 16
  %and29 = zext i8 %13 to i32
  %shl = shl nuw nsw i32 %and29, 11
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %16 = and i8 %15, 126
  %and32 = zext i8 %16 to i32
  %shl33 = shl nuw nsw i32 %and32, 8
  %or = or i32 %shl33, %shl
  %arrayidx34 = getelementptr i8, ptr %p, i32 1
  %17 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx34, align 1
  %19 = and i8 %18, 127
  %and36 = zext i8 %19 to i32
  %shl37 = shl nuw nsw i32 %and36, 2
  %or38 = or i32 %or, %shl37
  %20 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %p, align 1
  %22 = lshr i8 %21, 4
  %23 = and i8 %22, 3
  %24 = zext i8 %23 to i32
  %or43 = or i32 %or38, %24
  %25 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or43, ptr %f, align 4
  %26 = load i8, ptr %arrayidx2, align 1
  %27 = and i8 %26, 32
  %and46 = zext i8 %27 to i32
  %shl47 = shl nuw nsw i32 %and46, 6
  %arrayidx48 = getelementptr i8, ptr %p, i32 3
  %28 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx48, align 1
  %30 = and i8 %29, 112
  %and50 = zext i8 %30 to i32
  %shl51 = shl nuw nsw i32 %and50, 4
  %or52 = or i32 %shl51, %shl47
  %arrayidx53 = getelementptr i8, ptr %p, i32 2
  %31 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx53, align 1
  %33 = shl i8 %32, 1
  %shl56 = zext i8 %33 to i32
  %or57 = or i32 %or52, %shl56
  %34 = load i8, ptr %arrayidx, align 1
  %35 = and i8 %34, 1
  %and60 = zext i8 %35 to i32
  %or61 = or i32 %or57, %and60
  %y_map = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 1
  %36 = ptrtoint ptr %y_map to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or61, ptr %y_map, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx62 = getelementptr i8, ptr %p, i32 1
  %37 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx62, align 1
  %39 = and i8 %38, 127
  %and64 = zext i8 %39 to i16
  %shl65 = shl nuw nsw i16 %and64, 4
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx, align 1
  %42 = lshr i8 %41, 2
  %43 = and i8 %42, 12
  %44 = zext i8 %43 to i16
  %or70 = or i16 %shl65, %44
  %45 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %p, align 1
  %47 = lshr i8 %46, 4
  %48 = and i8 %47, 3
  %49 = zext i8 %48 to i16
  %or75 = or i16 %or70, %49
  %st = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 4
  %50 = ptrtoint ptr %st to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %or75, ptr %st, align 4
  %arrayidx77 = getelementptr i8, ptr %p, i32 2
  %51 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx77, align 1
  %53 = and i8 %52, 127
  %and79 = zext i8 %53 to i16
  %shl80 = shl nuw nsw i16 %and79, 4
  %54 = load i8, ptr %arrayidx, align 1
  %55 = and i8 %54, 15
  %and83 = zext i8 %55 to i16
  %or84 = or i16 %shl80, %and83
  %y = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %y to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %or84, ptr %y, align 2
  %57 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx2, align 1
  %59 = and i8 %58, 127
  %and89 = zext i8 %59 to i32
  %pressure = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 3
  %60 = ptrtoint ptr %pressure to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %and89, ptr %pressure, align 4
  %arrayidx.i = getelementptr i8, ptr %p, i32 3
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i, align 1
  %63 = shl i8 %62, 5
  %bf.shl.i = and i8 %63, 32
  %bf.clear.i = and i8 %bf.set14, -33
  %bf.set.i = or i8 %bf.shl.i, %bf.clear.i
  %64 = ptrtoint ptr %first_mp to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %bf.set.i, ptr %first_mp, align 4
  %65 = load i8, ptr %arrayidx.i, align 1
  %66 = shl i8 %65, 3
  %bf.shl12.i = and i8 %66, 16
  %bf.clear13.i = and i8 %bf.set.i, -17
  %bf.set14.i = or i8 %bf.shl12.i, %bf.clear13.i
  store i8 %bf.set14.i, ptr %first_mp, align 4
  %67 = load i8, ptr %arrayidx.i, align 1
  %68 = shl i8 %67, 1
  %bf.shl26.i = and i8 %68, 8
  %bf.clear27.i = and i8 %bf.set14.i, -9
  %bf.set28.i = or i8 %bf.clear27.i, %bf.shl26.i
  store i8 %bf.set28.i, ptr %first_mp, align 4
  %69 = load i8, ptr %arrayidx.i, align 1
  %70 = lshr i8 %69, 2
  %bf.shl40.i = and i8 %70, 4
  %bf.clear41.i = and i8 %bf.set28.i, -5
  %bf.set42.i = or i8 %bf.clear41.i, %bf.shl40.i
  store i8 %bf.set42.i, ptr %first_mp, align 4
  %71 = load i8, ptr %arrayidx.i, align 1
  %72 = lshr i8 %71, 4
  %bf.shl54.i = and i8 %72, 2
  %bf.clear55.i = and i8 %bf.set42.i, -3
  %bf.set56.i = or i8 %bf.clear55.i, %bf.shl54.i
  store i8 %bf.set56.i, ptr %first_mp, align 4
  %73 = load i8, ptr %arrayidx.i, align 1
  %74 = lshr i8 %73, 6
  %.lobit.i = and i8 %74, 1
  %bf.clear68.i = and i8 %bf.set56.i, -2
  %bf.set69.i = or i8 %bf.clear68.i, %.lobit.i
  store i8 %bf.set69.i, ptr %first_mp, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_hw_init_v4(ptr noundef %psmouse) #0 align 64 {
entry:
  %dummy.i9.i.i142 = alloca [4 x i8], align 4
  %dummy.i.i.i143 = alloca [4 x i8], align 4
  %dummy.i9.i.i117 = alloca [4 x i8], align 4
  %dummy.i.i.i118 = alloca [4 x i8], align 4
  %dummy.i9.i.i94 = alloca [4 x i8], align 4
  %dummy.i.i.i95 = alloca [4 x i8], align 4
  %dummy.i9.i.i = alloca [4 x i8], align 4
  %dummy.i.i.i = alloca [4 x i8], align 4
  %param.i.i.i = alloca [4 x i8], align 4
  %param.i = alloca [4 x i8], align 4
  %param = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #13
  %0 = getelementptr inbounds [4 x i8], ptr %param, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %param, i32 0, i32 2
  %2 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %param, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i) #13
  %3 = getelementptr inbounds [4 x i8], ptr %param.i, i32 0, i32 1
  %4 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %param.i, align 4
  %call.i = call fastcc i32 @alps_rpt_cmd(ptr noundef %psmouse, i32 noundef 0, i32 noundef 236, ptr noundef nonnull %param.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ps2dev1, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.63) #16
  br label %alps_enter_command_mode.exit

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %param.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %param.i, align 4
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %8, label %if.end.i.do.body4.i_crit_edge [
    i8 115, label %if.end.i.if.end_crit_edge
    i8 -120, label %land.lhs.true.i.i
  ]

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i.do.body4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %3, align 1
  %.off.i.i = add i8 %11, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i.i)
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  %12 = add i8 %11, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %12)
  %switch.selectcmp.i.i = icmp ult i8 %12, 32
  %or.cond.i = or i1 %switch.i.i, %switch.selectcmp.i.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.if.end_crit_edge, label %land.lhs.true.i.i.do.body4.i_crit_edge

land.lhs.true.i.i.do.body4.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4.i

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.body4.i:                                       ; preds = %land.lhs.true.i.i.do.body4.i_crit_edge, %if.end.i.do.body4.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alps_enter_command_mode.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alps_hw_init_v4, %if.then9.i)) #13
          to label %alps_enter_command_mode.exit [label %if.then9.i], !srcloc !199

if.then9.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ps2dev1, align 4
  %dev12.i = getelementptr inbounds %struct.serio, ptr %14, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alps_enter_command_mode.__UNIQUE_ID_ddebug242, ptr noundef %dev12.i, ptr noundef nonnull @.str.65) #13
  br label %alps_enter_command_mode.exit

alps_enter_command_mode.exit:                     ; preds = %if.then9.i, %do.body4.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #13
  br label %error

if.end:                                           ; preds = %land.lhs.true.i.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #13
  %call.i.i = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %psmouse, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end.i.i:                                       ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i.i.i) #13
  %15 = getelementptr inbounds [4 x i8], ptr %param.i.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %param.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %param.i.i.i, align 4
  %call.i.i.i = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param.i.i.i, i32 noundef 1001) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i.i.alps_command_mode_read_reg.exit.thread13.i_crit_edge

if.end.i.i.alps_command_mode_read_reg.exit.thread13.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit.thread13.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %17 = getelementptr inbounds [4 x i8], ptr %param.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %param.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %param.i.i.i, align 4
  %conv.i.i.i = zext i8 %19 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 8
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %17, align 1
  %conv3.i.i.i = zext i8 %21 to i32
  %or.i.i.i = or i32 %shl.i.i.i, %conv3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %or.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %or.i.i.i, 4
  br i1 %cmp.not.i.i.i, label %alps_command_mode_read_reg.exit.i, label %if.end.i.i.i.alps_command_mode_read_reg.exit.thread13.i_crit_edge

if.end.i.i.i.alps_command_mode_read_reg.exit.thread13.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit.thread13.i

alps_command_mode_read_reg.exit.thread13.i:       ; preds = %if.end.i.i.i.alps_command_mode_read_reg.exit.thread13.i_crit_edge, %if.end.i.i.alps_command_mode_read_reg.exit.thread13.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i.i) #13
  br label %do.end

alps_command_mode_read_reg.exit.i:                ; preds = %if.end.i.i.i
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %15, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i.i) #13
  %conv.i = or i8 %23, 2
  %conv.i.i = zext i8 %conv.i to i32
  %24 = lshr i32 %conv.i.i, 4
  %25 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i.i) #13
  %nibble_commands.i.i.i = getelementptr inbounds %struct.alps_data, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %dummy.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %dummy.i.i.i, align 4
  %28 = ptrtoint ptr %nibble_commands.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nibble_commands.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.alps_nibble_commands, ptr %29, i32 %24
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %31, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %data.i.i.i = getelementptr %struct.alps_nibble_commands, ptr %29, i32 %24, i32 1
  %cond.i.i.i = select i1 %tobool10.not.i.i.i, ptr %data.i.i.i, ptr %dummy.i.i.i
  %call.i.i8.i = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %cond.i.i.i, i32 noundef %31) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i8.i)
  %tobool13.not.i.not.i.i = icmp eq i32 %call.i.i8.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i.i) #13
  br i1 %tobool13.not.i.not.i.i, label %alps_absolute_mode_v4.exit, label %alps_command_mode_read_reg.exit.i.do.end_crit_edge

alps_command_mode_read_reg.exit.i.do.end_crit_edge: ; preds = %alps_command_mode_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

alps_absolute_mode_v4.exit:                       ; preds = %alps_command_mode_read_reg.exit.i
  %and2.i.i = and i32 %conv.i.i, 15
  %32 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i9.i.i) #13
  %nibble_commands.i11.i.i = getelementptr inbounds %struct.alps_data, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %dummy.i9.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %dummy.i9.i.i, align 4
  %35 = ptrtoint ptr %nibble_commands.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %nibble_commands.i11.i.i, align 4
  %arrayidx.i12.i.i = getelementptr %struct.alps_nibble_commands, ptr %36, i32 %and2.i.i
  %37 = ptrtoint ptr %arrayidx.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i12.i.i, align 4
  %and.i13.i.i = and i32 %38, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i)
  %tobool10.not.i14.i.i = icmp eq i32 %and.i13.i.i, 0
  %data.i15.i.i = getelementptr %struct.alps_nibble_commands, ptr %36, i32 %and2.i.i, i32 1
  %cond.i16.i.i = select i1 %tobool10.not.i14.i.i, ptr %data.i15.i.i, ptr %dummy.i9.i.i
  %call.i17.i.i = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %cond.i16.i.i, i32 noundef %38) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i.i)
  %tobool13.not.i18.not.i.not.i.not = icmp eq i32 %call.i17.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i9.i.i) #13
  br i1 %tobool13.not.i18.not.i.not.i.not, label %if.end6, label %alps_absolute_mode_v4.exit.do.end_crit_edge

alps_absolute_mode_v4.exit.do.end_crit_edge:      ; preds = %alps_absolute_mode_v4.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %alps_absolute_mode_v4.exit.do.end_crit_edge, %alps_command_mode_read_reg.exit.i.do.end_crit_edge, %alps_command_mode_read_reg.exit.thread13.i, %if.end.do.end_crit_edge
  %39 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ps2dev1, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %40, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52) #16
  br label %error

if.end6:                                          ; preds = %alps_absolute_mode_v4.exit
  %call.i96 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %psmouse, i32 noundef 7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool.not.i97 = icmp eq i32 %call.i96, 0
  br i1 %tobool.not.i97, label %if.end.i107, label %if.end6.error_crit_edge

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end.i107:                                      ; preds = %if.end6
  %41 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i.i95) #13
  %nibble_commands.i.i.i99 = getelementptr inbounds %struct.alps_data, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %dummy.i.i.i95 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %dummy.i.i.i95, align 4
  %44 = ptrtoint ptr %nibble_commands.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %nibble_commands.i.i.i99, align 4
  %arrayidx.i.i.i100 = getelementptr %struct.alps_nibble_commands, ptr %45, i32 8
  %46 = ptrtoint ptr %arrayidx.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i.i100, align 4
  %and.i.i.i101 = and i32 %47, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i101)
  %tobool10.not.i.i.i102 = icmp eq i32 %and.i.i.i101, 0
  %data.i.i.i103 = getelementptr %struct.alps_nibble_commands, ptr %45, i32 8, i32 1
  %cond.i.i.i104 = select i1 %tobool10.not.i.i.i102, ptr %data.i.i.i103, ptr %dummy.i.i.i95
  %call.i.i.i105 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %cond.i.i.i104, i32 noundef %47) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i105)
  %tobool13.not.i.not.i.i106 = icmp eq i32 %call.i.i.i105, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i.i95) #13
  br i1 %tobool13.not.i.not.i.i106, label %alps_command_mode_write_reg.exit, label %if.end.i107.error_crit_edge

if.end.i107.error_crit_edge:                      ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

alps_command_mode_write_reg.exit:                 ; preds = %if.end.i107
  %48 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i9.i.i94) #13
  %nibble_commands.i11.i.i108 = getelementptr inbounds %struct.alps_data, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %dummy.i9.i.i94 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %dummy.i9.i.i94, align 4
  %51 = ptrtoint ptr %nibble_commands.i11.i.i108 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %nibble_commands.i11.i.i108, align 4
  %arrayidx.i12.i.i109 = getelementptr %struct.alps_nibble_commands, ptr %52, i32 12
  %53 = ptrtoint ptr %arrayidx.i12.i.i109 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i12.i.i109, align 4
  %and.i13.i.i110 = and i32 %54, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i110)
  %tobool10.not.i14.i.i111 = icmp eq i32 %and.i13.i.i110, 0
  %data.i15.i.i112 = getelementptr %struct.alps_nibble_commands, ptr %52, i32 12, i32 1
  %cond.i16.i.i113 = select i1 %tobool10.not.i14.i.i111, ptr %data.i15.i.i112, ptr %dummy.i9.i.i94
  %call.i17.i.i114 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %cond.i16.i.i113, i32 noundef %54) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i.i114)
  %tobool13.not.i18.not.i.i.not = icmp eq i32 %call.i17.i.i114, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i9.i.i94) #13
  br i1 %tobool13.not.i18.not.i.i.not, label %if.end10, label %alps_command_mode_write_reg.exit.error_crit_edge

alps_command_mode_write_reg.exit.error_crit_edge: ; preds = %alps_command_mode_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end10:                                         ; preds = %alps_command_mode_write_reg.exit
  %call.i119 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %psmouse, i32 noundef 329) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool.not.i120 = icmp eq i32 %call.i119, 0
  br i1 %tobool.not.i120, label %if.end.i129, label %if.end10.error_crit_edge

if.end10.error_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end.i129:                                      ; preds = %if.end10
  %55 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i.i118) #13
  %nibble_commands.i.i.i122 = getelementptr inbounds %struct.alps_data, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %dummy.i.i.i118 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %dummy.i.i.i118, align 4
  %58 = ptrtoint ptr %nibble_commands.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %nibble_commands.i.i.i122, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %and.i.i.i123 = and i32 %61, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i123)
  %tobool10.not.i.i.i124 = icmp eq i32 %and.i.i.i123, 0
  %data.i.i.i125 = getelementptr %struct.alps_nibble_commands, ptr %59, i32 0, i32 1
  %cond.i.i.i126 = select i1 %tobool10.not.i.i.i124, ptr %data.i.i.i125, ptr %dummy.i.i.i118
  %call.i.i.i127 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %cond.i.i.i126, i32 noundef %61) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i127)
  %tobool13.not.i.not.i.i128 = icmp eq i32 %call.i.i.i127, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i.i118) #13
  br i1 %tobool13.not.i.not.i.i128, label %alps_command_mode_write_reg.exit141, label %if.end.i129.error_crit_edge

if.end.i129.error_crit_edge:                      ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

alps_command_mode_write_reg.exit141:              ; preds = %if.end.i129
  %62 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i9.i.i117) #13
  %nibble_commands.i11.i.i130 = getelementptr inbounds %struct.alps_data, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %dummy.i9.i.i117 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %dummy.i9.i.i117, align 4
  %65 = ptrtoint ptr %nibble_commands.i11.i.i130 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %nibble_commands.i11.i.i130, align 4
  %arrayidx.i12.i.i131 = getelementptr %struct.alps_nibble_commands, ptr %66, i32 3
  %67 = ptrtoint ptr %arrayidx.i12.i.i131 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i12.i.i131, align 4
  %and.i13.i.i132 = and i32 %68, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i132)
  %tobool10.not.i14.i.i133 = icmp eq i32 %and.i13.i.i132, 0
  %data.i15.i.i134 = getelementptr %struct.alps_nibble_commands, ptr %66, i32 3, i32 1
  %cond.i16.i.i135 = select i1 %tobool10.not.i14.i.i133, ptr %data.i15.i.i134, ptr %dummy.i9.i.i117
  %call.i17.i.i136 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %cond.i16.i.i135, i32 noundef %68) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i.i136)
  %tobool13.not.i18.not.i.i137.not = icmp eq i32 %call.i17.i.i136, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i9.i.i117) #13
  br i1 %tobool13.not.i18.not.i.i137.not, label %if.end14, label %alps_command_mode_write_reg.exit141.error_crit_edge

alps_command_mode_write_reg.exit141.error_crit_edge: ; preds = %alps_command_mode_write_reg.exit141
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end14:                                         ; preds = %alps_command_mode_write_reg.exit141
  %call.i144 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %psmouse, i32 noundef 352) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool.not.i145 = icmp eq i32 %call.i144, 0
  br i1 %tobool.not.i145, label %if.end.i154, label %if.end14.error_crit_edge

if.end14.error_crit_edge:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end.i154:                                      ; preds = %if.end14
  %69 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i.i143) #13
  %nibble_commands.i.i.i147 = getelementptr inbounds %struct.alps_data, ptr %70, i32 0, i32 6
  %71 = ptrtoint ptr %dummy.i.i.i143 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %dummy.i.i.i143, align 4
  %72 = ptrtoint ptr %nibble_commands.i.i.i147 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %nibble_commands.i.i.i147, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  %and.i.i.i148 = and i32 %75, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i148)
  %tobool10.not.i.i.i149 = icmp eq i32 %and.i.i.i148, 0
  %data.i.i.i150 = getelementptr %struct.alps_nibble_commands, ptr %73, i32 0, i32 1
  %cond.i.i.i151 = select i1 %tobool10.not.i.i.i149, ptr %data.i.i.i150, ptr %dummy.i.i.i143
  %call.i.i.i152 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %cond.i.i.i151, i32 noundef %75) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i152)
  %tobool13.not.i.not.i.i153 = icmp eq i32 %call.i.i.i152, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i.i143) #13
  br i1 %tobool13.not.i.not.i.i153, label %alps_command_mode_write_reg.exit166, label %if.end.i154.error_crit_edge

if.end.i154.error_crit_edge:                      ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

alps_command_mode_write_reg.exit166:              ; preds = %if.end.i154
  %76 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i9.i.i142) #13
  %nibble_commands.i11.i.i155 = getelementptr inbounds %struct.alps_data, ptr %77, i32 0, i32 6
  %78 = ptrtoint ptr %dummy.i9.i.i142 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %dummy.i9.i.i142, align 4
  %79 = ptrtoint ptr %nibble_commands.i11.i.i155 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %nibble_commands.i11.i.i155, align 4
  %arrayidx.i12.i.i156 = getelementptr %struct.alps_nibble_commands, ptr %80, i32 3
  %81 = ptrtoint ptr %arrayidx.i12.i.i156 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i12.i.i156, align 4
  %and.i13.i.i157 = and i32 %82, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i157)
  %tobool10.not.i14.i.i158 = icmp eq i32 %and.i13.i.i157, 0
  %data.i15.i.i159 = getelementptr %struct.alps_nibble_commands, ptr %80, i32 3, i32 1
  %cond.i16.i.i160 = select i1 %tobool10.not.i14.i.i158, ptr %data.i15.i.i159, ptr %dummy.i9.i.i142
  %call.i17.i.i161 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %cond.i16.i.i160, i32 noundef %82) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i.i161)
  %tobool13.not.i18.not.i.i162.not = icmp eq i32 %call.i17.i.i161, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i9.i.i142) #13
  br i1 %tobool13.not.i18.not.i.i162.not, label %if.end18, label %alps_command_mode_write_reg.exit166.error_crit_edge

alps_command_mode_write_reg.exit166.error_crit_edge: ; preds = %alps_command_mode_write_reg.exit166
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end18:                                         ; preds = %alps_command_mode_write_reg.exit166
  %call19 = call fastcc i32 @alps_command_mode_write_reg(ptr noundef %psmouse, i32 noundef 383, i8 noundef zeroext 21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.error_crit_edge

if.end18.error_crit_edge:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end22:                                         ; preds = %if.end18
  %call23 = call fastcc i32 @alps_command_mode_write_reg(ptr noundef %psmouse, i32 noundef 337, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.error_crit_edge

if.end22.error_crit_edge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end26:                                         ; preds = %if.end22
  %call27 = call fastcc i32 @alps_command_mode_write_reg(ptr noundef %psmouse, i32 noundef 360, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.error_crit_edge

if.end26.error_crit_edge:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end30:                                         ; preds = %if.end26
  %call31 = call fastcc i32 @alps_command_mode_write_reg(ptr noundef %psmouse, i32 noundef 330, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.error_crit_edge

if.end30.error_crit_edge:                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end34:                                         ; preds = %if.end30
  %call35 = call fastcc i32 @alps_command_mode_write_reg(ptr noundef %psmouse, i32 noundef 353, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.error_crit_edge

if.end34.error_crit_edge:                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end38:                                         ; preds = %if.end34
  %call.i167 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 234) #13
  %83 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 -56, ptr %param, align 4
  %84 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 100, ptr %0, align 1
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 80, ptr %1, align 2
  %call43 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %lor.lhs.false, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end38
  %call46 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %0, i32 noundef 4339) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %lor.lhs.false48, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false48:                                  ; preds = %lor.lhs.false
  %call50 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %1, i32 noundef 4339) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %lor.lhs.false52, label %lor.lhs.false48.cleanup_crit_edge

lor.lhs.false48.cleanup_crit_edge:                ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false52:                                  ; preds = %lor.lhs.false48
  %call53 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 754) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %lor.lhs.false52.cleanup_crit_edge

lor.lhs.false52.cleanup_crit_edge:                ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end56:                                         ; preds = %lor.lhs.false52
  %86 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 100, ptr %param, align 4
  %call59 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %lor.lhs.false61, label %if.end56.do.end67_crit_edge

if.end56.do.end67_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

lor.lhs.false61:                                  ; preds = %if.end56
  %call62 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 244) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %lor.lhs.false61.cleanup_crit_edge, label %lor.lhs.false61.do.end67_crit_edge

lor.lhs.false61.do.end67_crit_edge:               ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

lor.lhs.false61.cleanup_crit_edge:                ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end67:                                         ; preds = %lor.lhs.false61.do.end67_crit_edge, %if.end56.do.end67_crit_edge
  %87 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ps2dev1, align 4
  %dev70 = getelementptr inbounds %struct.serio, ptr %88, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev70, ptr noundef nonnull @.str.55) #16
  br label %cleanup

error:                                            ; preds = %if.end34.error_crit_edge, %if.end30.error_crit_edge, %if.end26.error_crit_edge, %if.end22.error_crit_edge, %if.end18.error_crit_edge, %alps_command_mode_write_reg.exit166.error_crit_edge, %if.end.i154.error_crit_edge, %if.end14.error_crit_edge, %alps_command_mode_write_reg.exit141.error_crit_edge, %if.end.i129.error_crit_edge, %if.end10.error_crit_edge, %alps_command_mode_write_reg.exit.error_crit_edge, %if.end.i107.error_crit_edge, %if.end6.error_crit_edge, %do.end, %alps_enter_command_mode.exit
  %call.i170 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 234) #13
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end67, %lor.lhs.false61.cleanup_crit_edge, %lor.lhs.false52.cleanup_crit_edge, %lor.lhs.false48.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end38.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %error ], [ -1, %do.end67 ], [ -1, %lor.lhs.false52.cleanup_crit_edge ], [ -1, %lor.lhs.false48.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %if.end38.cleanup_crit_edge ], [ 0, %lor.lhs.false61.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alps_process_packet_v4(ptr nocapture noundef readonly %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %packet1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %f2 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28
  %arrayidx = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 6
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %multi_packet = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 25
  %5 = ptrtoint ptr %multi_packet to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %multi_packet, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %multi_packet3 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %multi_packet3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %multi_packet3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp sgt i32 %7, 2
  br i1 %cmp, label %land.rhs, label %if.end45

land.rhs:                                         ; preds = %if.end
  %.b187 = load i1, ptr @alps_process_packet_v4.__already_done, align 1
  br i1 %.b187, label %land.rhs.cleanup_crit_edge, label %if.then13, !prof !200

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then13:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @alps_process_packet_v4.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 906, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end45:                                         ; preds = %if.end
  %mul = shl i32 %7, 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %arrayidx48 = getelementptr %struct.alps_data, ptr %1, i32 0, i32 27, i32 %mul
  %10 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx48, align 1
  %arrayidx49 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 7
  %11 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx49, align 1
  %add = or i32 %mul, 1
  %arrayidx51 = getelementptr %struct.alps_data, ptr %1, i32 0, i32 27, i32 %add
  %13 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx51, align 1
  %arrayidx52 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %14 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx52, align 1
  %left = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 6
  %16 = ptrtoint ptr %left to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %left, align 4
  %17 = shl i8 %15, 5
  %bf.shl = and i8 %17, 32
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %left, align 4
  %18 = load i8, ptr %arrayidx52, align 1
  %19 = shl i8 %18, 3
  %bf.shl70 = and i8 %19, 16
  %bf.clear71 = and i8 %bf.set, -17
  %bf.set72 = or i8 %bf.shl70, %bf.clear71
  store i8 %bf.set72, ptr %left, align 4
  %arrayidx74 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %20 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx74, align 1
  %22 = and i8 %21, 127
  %and76 = zext i8 %22 to i16
  %shl = shl nuw nsw i16 %and76, 4
  %arrayidx77 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %23 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx77, align 1
  %25 = lshr i8 %24, 2
  %26 = and i8 %25, 12
  %27 = zext i8 %26 to i16
  %or = or i16 %shl, %27
  %28 = ptrtoint ptr %packet1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %packet1, align 1
  %30 = lshr i8 %29, 4
  %31 = and i8 %30, 3
  %32 = zext i8 %31 to i16
  %or84 = or i16 %or, %32
  %st = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 4
  %33 = ptrtoint ptr %st to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %or84, ptr %st, align 4
  %arrayidx86 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %34 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx86, align 1
  %36 = and i8 %35, 127
  %and88 = zext i8 %36 to i16
  %shl89 = shl nuw nsw i16 %and88, 4
  %37 = load i8, ptr %arrayidx77, align 1
  %38 = and i8 %37, 15
  %and92 = zext i8 %38 to i16
  %or93 = or i16 %shl89, %and92
  %y = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 4, i32 1
  %39 = ptrtoint ptr %y to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %or93, ptr %y, align 2
  %arrayidx96 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 5
  %40 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx96, align 1
  %42 = and i8 %41, 127
  %and98 = zext i8 %42 to i32
  %pressure = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 3
  %43 = ptrtoint ptr %pressure to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and98, ptr %pressure, align 4
  %44 = ptrtoint ptr %multi_packet3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %multi_packet3, align 4
  %inc = add i32 %45, 1
  store i32 %inc, ptr %multi_packet3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %cmp100 = icmp sgt i32 %inc, 2
  br i1 %cmp100, label %if.then102, label %if.end45.if.end143_crit_edge

if.end45.if.end143_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end143

if.then102:                                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  %multi_data = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 27
  %46 = ptrtoint ptr %multi_packet3 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %multi_packet3, align 4
  %arrayidx105 = getelementptr %struct.alps_data, ptr %1, i32 0, i32 27, i32 2
  %47 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx105, align 2
  %49 = and i8 %48, 31
  %and107 = zext i8 %49 to i32
  %shl108 = shl nuw nsw i32 %and107, 10
  %arrayidx110 = getelementptr %struct.alps_data, ptr %1, i32 0, i32 27, i32 3
  %50 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx110, align 1
  %52 = and i8 %51, 96
  %and112 = zext i8 %52 to i32
  %shl113 = shl nuw nsw i32 %and112, 3
  %or114 = or i32 %shl113, %shl108
  %53 = ptrtoint ptr %multi_data to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %multi_data, align 4
  %55 = shl i8 %54, 2
  %shl119 = zext i8 %55 to i32
  %or120 = or i32 %or114, %shl119
  %arrayidx122 = getelementptr %struct.alps_data, ptr %1, i32 0, i32 27, i32 1
  %56 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx122, align 1
  %58 = lshr i8 %57, 5
  %59 = and i8 %58, 3
  %60 = zext i8 %59 to i32
  %or126 = or i32 %or120, %60
  %61 = ptrtoint ptr %f2 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or126, ptr %f2, align 4
  %arrayidx128 = getelementptr %struct.alps_data, ptr %1, i32 0, i32 27, i32 5
  %62 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx128, align 1
  %64 = and i8 %63, 1
  %and130 = zext i8 %64 to i32
  %shl131 = shl nuw nsw i32 %and130, 10
  %65 = and i8 %51, 31
  %and135 = zext i8 %65 to i32
  %shl136 = shl nuw nsw i32 %and135, 5
  %or137 = or i32 %shl131, %shl136
  %66 = and i8 %57, 31
  %and141 = zext i8 %66 to i32
  %or142 = or i32 %or137, %and141
  %y_map = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 1
  %67 = ptrtoint ptr %y_map to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or142, ptr %y_map, align 4
  %call = tail call fastcc i32 @alps_process_bitmap(ptr noundef %1, ptr noundef %f2)
  %fingers = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 2
  %68 = ptrtoint ptr %fingers to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call, ptr %fingers, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.then102, %if.end45.if.end143_crit_edge
  %fingers144 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 2
  %69 = ptrtoint ptr %fingers144 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fingers144, align 4
  tail call fastcc void @alps_report_semi_mt_data(ptr noundef %psmouse, i32 noundef %70)
  br label %cleanup

cleanup:                                          ; preds = %if.end143, %if.then13, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_hw_init_dolphin_v1(ptr noundef %psmouse) #0 align 64 {
entry:
  %param = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param) #13
  %0 = getelementptr inbounds [2 x i8], ptr %param, i32 0, i32 1
  %1 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 100, ptr %param, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 40, ptr %0, align 1
  %call = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 234) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call4 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %0, i32 noundef 4339) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp ne i32 %call8, 0
  %spec.select = sext i1 %tobool9.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false6, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false6 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alps_process_touchpad_packet_v3_v5(ptr noundef %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %packet1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %dev22 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev22, align 4
  %f3 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28
  %4 = call ptr @memset(ptr %f3, i32 0, i32 40)
  %decode_fields = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 22
  %5 = ptrtoint ptr %decode_fields to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %decode_fields, align 4
  %call = tail call i32 %6(ptr noundef %f3, ptr noundef %packet1, ptr noundef %psmouse) #13
  %multi_packet = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 25
  %7 = ptrtoint ptr %multi_packet to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %multi_packet, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then:                                          ; preds = %entry
  %is_mp = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 6
  %9 = ptrtoint ptr %is_mp to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %is_mp, align 4
  %10 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %fingers6 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 2
  %11 = ptrtoint ptr %fingers6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fingers6, align 4
  %13 = ptrtoint ptr %decode_fields to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %decode_fields, align 4
  %multi_data = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 27
  %call9 = tail call i32 %14(ptr noundef %f3, ptr noundef %multi_data, ptr noundef %psmouse) #13
  %call10 = tail call fastcc i32 @alps_process_bitmap(ptr noundef %1, ptr noundef %f3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp eq i32 %call10, 0
  %spec.select = select i1 %cmp, i32 0, i32 %12
  br label %if.end14

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %multi_packet to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %multi_packet, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then5, %entry.if.end14_crit_edge
  %fingers.0 = phi i32 [ 0, %if.else ], [ 0, %entry.if.end14_crit_edge ], [ %spec.select, %if.then5 ]
  %is_mp15 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 6
  %16 = ptrtoint ptr %is_mp15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load16 = load i8, ptr %is_mp15, align 4
  %17 = and i8 %bf.load16, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool20.not = icmp eq i8 %17, 0
  br i1 %tobool20.not, label %if.end22, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %18 = ptrtoint ptr %multi_packet to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %multi_packet, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool24.not = icmp ne i32 %19, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load16)
  %tobool28.not = icmp sgt i8 %bf.load16, -1
  %or.cond = select i1 %tobool24.not, i1 true, i1 %tobool28.not
  br i1 %or.cond, label %if.end33, label %if.then29

if.then29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %multi_packet to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %multi_packet, align 4
  %multi_data31 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 27
  %21 = call ptr @memcpy(ptr %multi_data31, ptr %packet1, i32 6)
  br label %cleanup

if.end33:                                         ; preds = %if.end22
  %22 = ptrtoint ptr %multi_packet to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %multi_packet, align 4
  %st = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 4
  %23 = ptrtoint ptr %st to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %st, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool35.not = icmp eq i16 %24, 0
  br i1 %tobool35.not, label %if.end33.if.end43_crit_edge, label %land.lhs.true36

if.end33.if.end43_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

land.lhs.true36:                                  ; preds = %if.end33
  %y = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 4, i32 1
  %25 = ptrtoint ptr %y to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %y, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool39.not = icmp eq i16 %26, 0
  br i1 %tobool39.not, label %land.lhs.true36.if.end43_crit_edge, label %land.lhs.true40

land.lhs.true36.if.end43_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

land.lhs.true40:                                  ; preds = %land.lhs.true36
  %pressure = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 3
  %27 = ptrtoint ptr %pressure to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pressure, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool41.not = icmp eq i32 %28, 0
  br i1 %tobool41.not, label %land.lhs.true40.cleanup_crit_edge, label %land.lhs.true40.if.end43_crit_edge

land.lhs.true40.if.end43_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

land.lhs.true40.cleanup_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end43:                                         ; preds = %land.lhs.true40.if.end43_crit_edge, %land.lhs.true36.if.end43_crit_edge, %if.end33.if.end43_crit_edge
  tail call fastcc void @alps_report_semi_mt_data(ptr noundef %psmouse, i32 noundef %fingers.0)
  %flags = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 13
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %and = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %if.end43.cleanup_crit_edge, label %land.lhs.true45

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true45:                                  ; preds = %if.end43
  %quirks = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 29
  %31 = ptrtoint ptr %quirks to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %quirks, align 4
  %33 = and i8 %32, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool48.not = icmp eq i8 %33, 0
  br i1 %tobool48.not, label %if.then49, label %land.lhs.true45.cleanup_crit_edge

land.lhs.true45.cleanup_crit_edge:                ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then49:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %is_mp15 to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load50 = load i8, ptr %is_mp15, align 4
  %35 = lshr i8 %bf.load50, 2
  %.lobit = and i8 %35, 1
  %36 = zext i8 %.lobit to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 272, i32 noundef %36) #13
  %37 = ptrtoint ptr %is_mp15 to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load54 = load i8, ptr %is_mp15, align 4
  %38 = lshr i8 %bf.load54, 1
  %.lobit104 = and i8 %38, 1
  %39 = zext i8 %.lobit104 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 273, i32 noundef %39) #13
  %40 = ptrtoint ptr %is_mp15 to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load58 = load i8, ptr %is_mp15, align 4
  %bf.clear59 = and i8 %bf.load58, 1
  %41 = zext i8 %bf.clear59 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 274, i32 noundef %41) #13
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %land.lhs.true45.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %land.lhs.true40.cleanup_crit_edge, %if.then29, %if.end14.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @alps_decode_dolphin(ptr nocapture noundef %f, ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %psmouse) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %p, align 1
  %first_mp = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 6
  %4 = ptrtoint ptr %first_mp to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %first_mp, align 4
  %5 = shl i8 %3, 6
  %bf.shl = and i8 %5, -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %first_mp, align 4
  %6 = load i8, ptr %p, align 1
  %7 = shl i8 %6, 1
  %bf.shl12 = and i8 %7, 64
  %bf.clear13 = and i8 %bf.set, -65
  %bf.set14 = or i8 %bf.shl12, %bf.clear13
  store i8 %bf.set14, ptr %first_mp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.shl12)
  %tobool19.not = icmp eq i8 %bf.shl12, 0
  br i1 %tobool19.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx20 = getelementptr i8, ptr %p, i32 1
  %8 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx20, align 1
  %10 = and i8 %9, 127
  %and22 = zext i8 %10 to i16
  %arrayidx23 = getelementptr i8, ptr %p, i32 4
  %11 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx23, align 1
  %13 = and i8 %12, 15
  %and25 = zext i8 %13 to i16
  %shl = shl nuw nsw i16 %and25, 7
  %or = or i16 %shl, %and22
  %st = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 4
  %14 = ptrtoint ptr %st to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %or, ptr %st, align 4
  %arrayidx27 = getelementptr i8, ptr %p, i32 2
  %15 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx27, align 1
  %17 = and i8 %16, 127
  %and29 = zext i8 %17 to i16
  %18 = load i8, ptr %arrayidx23, align 1
  %19 = and i8 %18, -16
  %and32 = zext i8 %19 to i16
  %shl33 = shl nuw nsw i16 %and32, 3
  %or34 = or i16 %shl33, %and29
  %y = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %y to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %or34, ptr %y, align 2
  %21 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %p, align 1
  %23 = and i8 %22, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool40.not = icmp eq i8 %23, 0
  br i1 %tobool40.not, label %cond.false, label %if.then.cond.end_crit_edge

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx41 = getelementptr i8, ptr %p, i32 5
  %24 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx41, align 1
  %26 = and i8 %25, 127
  %and43 = zext i8 %26 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %and43, %cond.false ], [ 0, %if.then.cond.end_crit_edge ]
  %pressure = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 3
  %27 = ptrtoint ptr %pressure to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond, ptr %pressure, align 4
  %arrayidx.i = getelementptr i8, ptr %p, i32 3
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i, align 1
  %30 = shl i8 %29, 5
  %bf.shl.i = and i8 %30, 32
  %bf.clear.i = and i8 %bf.set14, -33
  %bf.set.i = or i8 %bf.shl.i, %bf.clear.i
  %31 = ptrtoint ptr %first_mp to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %bf.set.i, ptr %first_mp, align 4
  %32 = load i8, ptr %arrayidx.i, align 1
  %33 = shl i8 %32, 3
  %bf.shl12.i = and i8 %33, 16
  %bf.clear13.i = and i8 %bf.set.i, -17
  %bf.set14.i = or i8 %bf.shl12.i, %bf.clear13.i
  store i8 %bf.set14.i, ptr %first_mp, align 4
  %34 = load i8, ptr %arrayidx.i, align 1
  %35 = shl i8 %34, 1
  %bf.shl26.i = and i8 %35, 8
  %bf.clear27.i = and i8 %bf.set14.i, -9
  %bf.set28.i = or i8 %bf.clear27.i, %bf.shl26.i
  store i8 %bf.set28.i, ptr %first_mp, align 4
  %36 = load i8, ptr %arrayidx.i, align 1
  %37 = lshr i8 %36, 2
  %bf.shl40.i = and i8 %37, 4
  %bf.clear41.i = and i8 %bf.set28.i, -5
  %bf.set42.i = or i8 %bf.clear41.i, %bf.shl40.i
  store i8 %bf.set42.i, ptr %first_mp, align 4
  %38 = load i8, ptr %arrayidx.i, align 1
  %39 = lshr i8 %38, 4
  %bf.shl54.i = and i8 %39, 2
  %bf.clear55.i = and i8 %bf.set42.i, -3
  %bf.set56.i = or i8 %bf.clear55.i, %bf.shl54.i
  store i8 %bf.set56.i, ptr %first_mp, align 4
  %40 = load i8, ptr %arrayidx.i, align 1
  %41 = lshr i8 %40, 6
  %.lobit.i = and i8 %41, 1
  %bf.clear68.i = and i8 %bf.set56.i, -2
  %bf.set69.i = or i8 %bf.clear68.i, %.lobit.i
  store i8 %bf.set69.i, ptr %first_mp, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %p, align 1
  %conv45 = zext i8 %43 to i32
  %and46 = lshr i32 %conv45, 1
  %44 = and i32 %and46, 3
  %and49 = lshr i32 %conv45, 2
  %45 = and i32 %and49, 4
  %or51 = or i32 %44, %45
  %fingers = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 2
  %46 = ptrtoint ptr %fingers to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or51, ptr %fingers, align 4
  %arrayidx52 = getelementptr i8, ptr %p, i32 1
  %47 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx52, align 1
  %49 = and i8 %48, 127
  %and54 = zext i8 %49 to i32
  %arrayidx55 = getelementptr i8, ptr %p, i32 2
  %50 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx55, align 1
  %52 = and i8 %51, 127
  %and57 = zext i8 %52 to i32
  %shl58 = shl nuw nsw i32 %and57, 7
  %or59 = or i32 %shl58, %and54
  %arrayidx60 = getelementptr i8, ptr %p, i32 4
  %53 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx60, align 1
  %55 = and i8 %54, 127
  %and62 = zext i8 %55 to i32
  %shl63 = shl nuw nsw i32 %and62, 14
  %or64 = or i32 %or59, %shl63
  %arrayidx65 = getelementptr i8, ptr %p, i32 5
  %56 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx65, align 1
  %58 = and i8 %57, 127
  %and67 = zext i8 %58 to i32
  %shl68 = shl nuw nsw i32 %and67, 21
  %or69 = or i32 %or64, %shl68
  %arrayidx70 = getelementptr i8, ptr %p, i32 3
  %59 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx70, align 1
  %61 = and i8 %60, 7
  %and72 = zext i8 %61 to i32
  %shl73 = shl nuw nsw i32 %and72, 28
  %or74 = or i32 %or69, %shl73
  %conv75 = zext i32 %or74 to i64
  %62 = and i8 %60, 112
  %and78 = zext i8 %62 to i64
  %shl79 = shl nuw nsw i64 %and78, 27
  %or80 = or i64 %shl79, %conv75
  %63 = load i8, ptr %p, align 1
  %64 = and i8 %63, 1
  %and83 = zext i8 %64 to i64
  %shl84 = shl nuw nsw i64 %and83, 34
  %or85 = or i64 %or80, %shl84
  %y_bits = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 17
  %65 = ptrtoint ptr %y_bits to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %y_bits, align 4
  %notmask = shl nsw i32 -1, %66
  %sub = xor i32 %notmask, -1
  %67 = trunc i64 %or80 to i32
  %conv89 = and i32 %67, %sub
  %y_map = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 1
  %68 = ptrtoint ptr %y_map to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv89, ptr %y_map, align 4
  %69 = load i32, ptr %y_bits, align 4
  %sh_prom = zext i32 %69 to i64
  %shr91 = lshr i64 %or85, %sh_prom
  %x_bits = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 16
  %70 = ptrtoint ptr %x_bits to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %x_bits, align 4
  %notmask126 = shl nsw i32 -1, %71
  %sub93 = xor i32 %notmask126, -1
  %72 = trunc i64 %shr91 to i32
  %conv96 = and i32 %72, %sub93
  %73 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv96, ptr %f, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alps_dolphin_get_device_area(ptr noundef %psmouse, ptr nocapture noundef writeonly %priv) unnamed_addr #0 align 64 {
entry:
  %param.i = alloca [4 x i8], align 4
  %param = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #13
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 167772160, ptr %param, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i) #13
  %1 = getelementptr inbounds [4 x i8], ptr %param.i, i32 0, i32 1
  %2 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %param.i, align 4
  %call.i = call fastcc i32 @alps_rpt_cmd(ptr noundef %psmouse, i32 noundef 0, i32 noundef 236, ptr noundef nonnull %param.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ps2dev1, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.63) #16
  br label %alps_enter_command_mode.exit

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %param.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %param.i, align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %6, label %if.end.i.do.body4.i_crit_edge [
    i8 115, label %if.end.i.if.end_crit_edge
    i8 -120, label %land.lhs.true.i.i
  ]

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i.do.body4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 1
  %.off.i.i = add i8 %9, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i.i)
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  %10 = add i8 %9, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %10)
  %switch.selectcmp.i.i = icmp ult i8 %10, 32
  %or.cond.i = or i1 %switch.i.i, %switch.selectcmp.i.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.if.end_crit_edge, label %land.lhs.true.i.i.do.body4.i_crit_edge

land.lhs.true.i.i.do.body4.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4.i

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.body4.i:                                       ; preds = %land.lhs.true.i.i.do.body4.i_crit_edge, %if.end.i.do.body4.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alps_enter_command_mode.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alps_dolphin_get_device_area, %if.then9.i)) #13
          to label %alps_enter_command_mode.exit [label %if.then9.i], !srcloc !199

if.then9.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ps2dev1, align 4
  %dev12.i = getelementptr inbounds %struct.serio, ptr %12, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alps_enter_command_mode.__UNIQUE_ID_ddebug242, ptr noundef %dev12.i, ptr noundef nonnull @.str.65) #13
  br label %alps_enter_command_mode.exit

alps_enter_command_mode.exit:                     ; preds = %if.then9.i, %do.body4.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #13
  %call2 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 236) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %call4 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 240) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 240) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call11 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %lor.lhs.false9.cleanup_crit_edge

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call15 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %lor.lhs.false13.cleanup_crit_edge

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false13
  %call19 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 1001) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx23 = getelementptr inbounds [4 x i8], ptr %param, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx23, align 2
  %conv = zext i8 %14 to i32
  %and = and i32 %conv, 15
  %add = add nuw nsw i32 %and, 8
  %15 = lshr i32 %conv, 4
  %add27 = add nuw nsw i32 %15, 1
  %x_bits = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 16
  %16 = ptrtoint ptr %x_bits to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %x_bits, align 4
  %y_bits = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 17
  %17 = ptrtoint ptr %y_bits to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add27, ptr %y_bits, align 4
  %sub = shl nuw nsw i32 %and, 6
  %mul = add nuw nsw i32 %sub, 448
  %x_max = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 14
  %18 = ptrtoint ptr %x_max to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %x_max, align 4
  %mul29 = shl nuw nsw i32 %15, 6
  %y_max = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 15
  %19 = ptrtoint ptr %y_max to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul29, ptr %y_max, align 4
  %call.i49 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 234) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool.not.i50.not = icmp ne i32 %call.i49, 0
  %. = sext i1 %tobool.not.i50.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end18.cleanup_crit_edge, %lor.lhs.false13.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %alps_enter_command_mode.exit
  %retval.0 = phi i32 [ -1, %alps_enter_command_mode.exit ], [ -1, %lor.lhs.false13.cleanup_crit_edge ], [ -1, %lor.lhs.false9.cleanup_crit_edge ], [ -1, %lor.lhs.false6.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end18.cleanup_crit_edge ], [ %., %if.end22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_hw_init_v6(ptr noundef %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @alps_passthrough_mode_v2(ptr noundef %psmouse, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @alps_trackstick_enter_extended_mode_v3_v6(ptr noundef %psmouse)
  %call2 = tail call fastcc i32 @alps_passthrough_mode_v2(ptr noundef %psmouse, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool6.not = icmp eq i32 %call1, 0
  br i1 %tobool6.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %ps2dev1.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call.i18 = tail call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef null, i32 noundef 236) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool2.not.i = icmp eq i32 %call.i18, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i, label %if.end8.do.end_crit_edge

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false.i:                                  ; preds = %if.end8
  %call3.i = tail call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef null, i32 noundef 1001) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %lor.lhs.false5.i, label %lor.lhs.false.i.do.end_crit_edge

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %call6.i = tail call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef null, i32 noundef 245) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false8.i, label %lor.lhs.false5.i.do.end_crit_edge

lor.lhs.false5.i.do.end_crit_edge:                ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false5.i
  %call9.i = tail call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef null, i32 noundef 245) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %lor.lhs.false11.i, label %lor.lhs.false8.i.do.end_crit_edge

lor.lhs.false8.i.do.end_crit_edge:                ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false11.i:                                ; preds = %lor.lhs.false8.i
  %call12.i = tail call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef null, i32 noundef 231) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %lor.lhs.false14.i, label %lor.lhs.false11.i.do.end_crit_edge

lor.lhs.false11.i.do.end_crit_edge:               ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false14.i:                                ; preds = %lor.lhs.false11.i
  %call15.i = tail call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef null, i32 noundef 230) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %lor.lhs.false17.i, label %lor.lhs.false14.i.do.end_crit_edge

lor.lhs.false14.i.do.end_crit_edge:               ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false17.i:                                ; preds = %lor.lhs.false14.i
  %call18.i = tail call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef null, i32 noundef 231) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %lor.lhs.false20.i, label %lor.lhs.false17.i.do.end_crit_edge

lor.lhs.false17.i.do.end_crit_edge:               ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false20.i:                                ; preds = %lor.lhs.false17.i
  %call21.i = tail call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef null, i32 noundef 1001) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end.i, label %lor.lhs.false20.i.do.end_crit_edge

lor.lhs.false20.i.do.end_crit_edge:               ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end.i:                                         ; preds = %lor.lhs.false20.i
  %call.i.i = tail call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef null, i32 noundef 244) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.alps_monitor_mode_write_reg.exit.i.thread_crit_edge

if.end.i.alps_monitor_mode_write_reg.exit.i.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_monitor_mode_write_reg.exit.i.thread

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %call2.i.i = tail call fastcc i32 @alps_monitor_mode_send_word(ptr noundef %psmouse, i16 noundef zeroext 160) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.alps_monitor_mode_write_reg.exit.i.thread_crit_edge

lor.lhs.false.i.i.alps_monitor_mode_write_reg.exit.i.thread_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_monitor_mode_write_reg.exit.i.thread

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %call5.i.i = tail call fastcc i32 @alps_monitor_mode_send_word(ptr noundef %psmouse, i16 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %lor.lhs.false7.i.i, label %lor.lhs.false4.i.i.alps_monitor_mode_write_reg.exit.i.thread_crit_edge

lor.lhs.false4.i.i.alps_monitor_mode_write_reg.exit.i.thread_crit_edge: ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_monitor_mode_write_reg.exit.i.thread

lor.lhs.false7.i.i:                               ; preds = %lor.lhs.false4.i.i
  %call8.i.i = tail call fastcc i32 @alps_monitor_mode_send_word(ptr noundef %psmouse, i16 noundef zeroext 385) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %alps_monitor_mode_write_reg.exit.i, label %lor.lhs.false7.i.i.alps_monitor_mode_write_reg.exit.i.thread_crit_edge

lor.lhs.false7.i.i.alps_monitor_mode_write_reg.exit.i.thread_crit_edge: ; preds = %lor.lhs.false7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_monitor_mode_write_reg.exit.i.thread

alps_monitor_mode_write_reg.exit.i.thread:        ; preds = %lor.lhs.false7.i.i.alps_monitor_mode_write_reg.exit.i.thread_crit_edge, %lor.lhs.false4.i.i.alps_monitor_mode_write_reg.exit.i.thread_crit_edge, %lor.lhs.false.i.i.alps_monitor_mode_write_reg.exit.i.thread_crit_edge, %if.end.i.alps_monitor_mode_write_reg.exit.i.thread_crit_edge
  %call.i10.i25 = tail call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef null, i32 noundef 236) #13
  br label %do.end

alps_monitor_mode_write_reg.exit.i:               ; preds = %lor.lhs.false7.i.i
  %call11.i.i = tail call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef null, i32 noundef 245) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  %call.i10.i = tail call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef null, i32 noundef 236) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %tobool2.not.i.i = icmp eq i32 %call.i10.i, 0
  %or.cond = select i1 %tobool2.not.i.i, i1 %tobool12.not.i.i, i1 false
  br i1 %or.cond, label %alps_monitor_mode_write_reg.exit.i.cleanup_crit_edge, label %alps_monitor_mode_write_reg.exit.i.do.end_crit_edge

alps_monitor_mode_write_reg.exit.i.do.end_crit_edge: ; preds = %alps_monitor_mode_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

alps_monitor_mode_write_reg.exit.i.cleanup_crit_edge: ; preds = %alps_monitor_mode_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %alps_monitor_mode_write_reg.exit.i.do.end_crit_edge, %alps_monitor_mode_write_reg.exit.i.thread, %lor.lhs.false20.i.do.end_crit_edge, %lor.lhs.false17.i.do.end_crit_edge, %lor.lhs.false14.i.do.end_crit_edge, %lor.lhs.false11.i.do.end_crit_edge, %lor.lhs.false8.i.do.end_crit_edge, %lor.lhs.false5.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %if.end8.do.end_crit_edge
  %0 = ptrtoint ptr %ps2dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps2dev1.i, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %alps_monitor_mode_write_reg.exit.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ %call1, %if.end5.cleanup_crit_edge ], [ 0, %alps_monitor_mode_write_reg.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alps_process_packet_v6(ptr nocapture noundef %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %dev2 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %dev24 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev24, align 4
  %arrayidx = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %7)
  %cmp = icmp eq i8 %7, 127
  br i1 %cmp, label %if.then, label %if.end37

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %10 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ps2dev, align 4
  %dev7 = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7, ptr noundef nonnull @.str.66) #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  %arrayidx8 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %13 to i32
  %arrayidx10 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %15 to i32
  %and12 = shl nuw nsw i32 %conv11, 2
  %shl = and i32 %and12, 128
  %or = or i32 %shl, %conv9
  %arrayidx13 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %17 to i32
  %and17 = shl nuw nsw i32 %conv11, 1
  %shl18 = and i32 %and17, 128
  %or19 = or i32 %shl18, %conv14
  %arrayidx20 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx20, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %or)
  %cmp22 = icmp eq i32 %or, 127
  br i1 %cmp22, label %land.lhs.true, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %or19)
  %cmp24 = icmp eq i32 %or19, 127
  br i1 %cmp24, label %land.lhs.true26, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

land.lhs.true26:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %19)
  %cmp27 = icmp eq i8 %19, 127
  %spec.select = select i1 %cmp27, i32 0, i32 127
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true26, %land.lhs.true.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %x.0 = phi i32 [ 127, %land.lhs.true.if.end30_crit_edge ], [ %or, %if.end.if.end30_crit_edge ], [ %spec.select, %land.lhs.true26 ]
  %y.0 = phi i32 [ %or19, %land.lhs.true.if.end30_crit_edge ], [ %or19, %if.end.if.end30_crit_edge ], [ %spec.select, %land.lhs.true26 ]
  %conv32 = lshr i32 %x.0, 2
  %div115 = and i32 %conv32, 63
  tail call void @input_event(ptr noundef %5, i32 noundef 2, i32 noundef 0, i32 noundef %div115) #13
  %conv34 = lshr i32 %y.0, 2
  %div35116 = and i32 %conv34, 63
  %sub = sub nsw i32 0, %div35116
  tail call void @input_event(ptr noundef %5, i32 noundef 2, i32 noundef 1, i32 noundef %sub) #13
  %20 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx10, align 1
  tail call void @psmouse_report_standard_buttons(ptr noundef %5, i8 noundef zeroext %21) #13
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %cleanup

if.end37:                                         ; preds = %entry
  %arrayidx38 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %23 to i32
  %arrayidx40 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %24 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx40, align 1
  %26 = and i8 %25, 120
  %and42 = zext i8 %26 to i32
  %shl43 = shl nuw nsw i32 %and42, 4
  %or44 = or i32 %shl43, %conv39
  %arrayidx45 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %27 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %28 to i32
  %arrayidx47 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %29 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx47, align 1
  %31 = and i8 %30, 120
  %and49 = zext i8 %31 to i32
  %shl50 = shl nuw nsw i32 %and49, 4
  %or51 = or i32 %shl50, %conv46
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %7)
  %cmp54 = icmp ugt i8 %7, 30
  br i1 %cmp54, label %if.end57.thread, label %if.end57

if.end57.thread:                                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 330, i32 noundef 1) #13
  br label %if.then64

if.end57:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %7)
  %cmp58 = icmp ult i8 %7, 25
  br i1 %cmp58, label %if.end61, label %if.end57.if.then64_crit_edge

if.end57.if.then64_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then64

if.end61:                                         ; preds = %if.end57
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 330, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp62.not = icmp eq i8 %7, 0
  br i1 %cmp62.not, label %if.end61.if.end65_crit_edge, label %if.end61.if.then64_crit_edge

if.end61.if.then64_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then64

if.end61.if.end65_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

if.then64:                                        ; preds = %if.end61.if.then64_crit_edge, %if.end57.if.then64_crit_edge, %if.end57.thread
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 0, i32 noundef %or44) #13
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 1, i32 noundef %or51) #13
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end61.if.end65_crit_edge
  %cmp62120 = phi i32 [ 1, %if.then64 ], [ 0, %if.end61.if.end65_crit_edge ]
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 24, i32 noundef %conv) #13
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 325, i32 noundef %cmp62120) #13
  %32 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx40, align 1
  %34 = and i8 %33, -5
  store i8 %34, ptr %arrayidx40, align 1
  tail call void @psmouse_report_standard_buttons(ptr noundef %5, i8 noundef zeroext %34) #13
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.end30, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_hw_init_v7(ptr noundef %psmouse) #0 align 64 {
entry:
  %dummy.i9.i = alloca [4 x i8], align 4
  %dummy.i.i = alloca [4 x i8], align 4
  %param.i.i42 = alloca [4 x i8], align 4
  %dummy.i9.i.i = alloca [4 x i8], align 4
  %dummy.i.i.i = alloca [4 x i8], align 4
  %param.i.i = alloca [4 x i8], align 4
  %param.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i) #13
  %0 = getelementptr inbounds [4 x i8], ptr %param.i, i32 0, i32 1
  %1 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %param.i, align 4
  %call.i = call fastcc i32 @alps_rpt_cmd(ptr noundef %psmouse, i32 noundef 0, i32 noundef 236, ptr noundef nonnull %param.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps2dev1, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.63) #16
  br label %alps_enter_command_mode.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %param.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %param.i, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %5, label %if.end.i.do.body4.i_crit_edge [
    i8 115, label %if.end.i.lor.lhs.false_crit_edge
    i8 -120, label %land.lhs.true.i.i
  ]

if.end.i.lor.lhs.false_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

if.end.i.do.body4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %0, align 1
  %.off.i.i = add i8 %8, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i.i)
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  %9 = add i8 %8, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %9)
  %switch.selectcmp.i.i = icmp ult i8 %9, 32
  %or.cond.i = or i1 %switch.i.i, %switch.selectcmp.i.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.lor.lhs.false_crit_edge, label %land.lhs.true.i.i.do.body4.i_crit_edge

land.lhs.true.i.i.do.body4.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4.i

land.lhs.true.i.i.lor.lhs.false_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

do.body4.i:                                       ; preds = %land.lhs.true.i.i.do.body4.i_crit_edge, %if.end.i.do.body4.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alps_enter_command_mode.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alps_hw_init_v7, %if.then9.i)) #13
          to label %alps_enter_command_mode.exit [label %if.then9.i], !srcloc !199

if.then9.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ps2dev1, align 4
  %dev12.i = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alps_enter_command_mode.__UNIQUE_ID_ddebug242, ptr noundef %dev12.i, ptr noundef nonnull @.str.65) #13
  br label %alps_enter_command_mode.exit

alps_enter_command_mode.exit:                     ; preds = %if.then9.i, %do.body4.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #13
  br label %error

lor.lhs.false:                                    ; preds = %land.lhs.true.i.i.lor.lhs.false_crit_edge, %if.end.i.lor.lhs.false_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #13
  %call.i33 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %psmouse, i32 noundef 49881) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool.not.i34 = icmp eq i32 %call.i33, 0
  br i1 %tobool.not.i34, label %if.end.i35, label %lor.lhs.false.error_crit_edge

lor.lhs.false.error_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end.i35:                                       ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i.i) #13
  %12 = ptrtoint ptr %param.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %param.i.i, align 4
  %call.i.i = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param.i.i, i32 noundef 1001) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i35.alps_command_mode_read_reg.exit.thread76_crit_edge

if.end.i35.alps_command_mode_read_reg.exit.thread76_crit_edge: ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit.thread76

if.end.i.i:                                       ; preds = %if.end.i35
  %13 = getelementptr inbounds [4 x i8], ptr %param.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %param.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %param.i.i, align 4
  %conv.i.i = zext i8 %15 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %13, align 1
  %conv3.i.i = zext i8 %17 to i32
  %or.i.i = or i32 %shl.i.i, %conv3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 49881, i32 %or.i.i)
  %cmp.not.i.i = icmp eq i32 %or.i.i, 49881
  br i1 %cmp.not.i.i, label %alps_command_mode_read_reg.exit, label %if.end.i.i.alps_command_mode_read_reg.exit.thread76_crit_edge

if.end.i.i.alps_command_mode_read_reg.exit.thread76_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit.thread76

alps_command_mode_read_reg.exit.thread76:         ; preds = %if.end.i.i.alps_command_mode_read_reg.exit.thread76_crit_edge, %if.end.i35.alps_command_mode_read_reg.exit.thread76_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i) #13
  br label %error

alps_command_mode_read_reg.exit:                  ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i) #13
  %call3 = call fastcc i32 @alps_get_v3_v7_resolution(ptr noundef %psmouse, i32 noundef 50071)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %alps_command_mode_read_reg.exit.error_crit_edge

alps_command_mode_read_reg.exit.error_crit_edge:  ; preds = %alps_command_mode_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end6:                                          ; preds = %alps_command_mode_read_reg.exit
  %call.i37 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %psmouse, i32 noundef 49865) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool.not.i38 = icmp eq i32 %call.i37, 0
  br i1 %tobool.not.i38, label %if.end.i39, label %if.end6.error_crit_edge

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end.i39:                                       ; preds = %if.end6
  %18 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i.i) #13
  %nibble_commands.i.i.i = getelementptr inbounds %struct.alps_data, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %dummy.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %dummy.i.i.i, align 4
  %21 = ptrtoint ptr %nibble_commands.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nibble_commands.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.alps_nibble_commands, ptr %22, i32 6
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %24, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %data.i.i.i = getelementptr %struct.alps_nibble_commands, ptr %22, i32 6, i32 1
  %cond.i.i.i = select i1 %tobool10.not.i.i.i, ptr %data.i.i.i, ptr %dummy.i.i.i
  %call.i.i.i = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %cond.i.i.i, i32 noundef %24) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool13.not.i.not.i.i = icmp eq i32 %call.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i.i) #13
  br i1 %tobool13.not.i.not.i.i, label %alps_command_mode_write_reg.exit, label %if.end.i39.error_crit_edge

if.end.i39.error_crit_edge:                       ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

alps_command_mode_write_reg.exit:                 ; preds = %if.end.i39
  %25 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i9.i.i) #13
  %nibble_commands.i11.i.i = getelementptr inbounds %struct.alps_data, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %dummy.i9.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %dummy.i9.i.i, align 4
  %28 = ptrtoint ptr %nibble_commands.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nibble_commands.i11.i.i, align 4
  %arrayidx.i12.i.i = getelementptr %struct.alps_nibble_commands, ptr %29, i32 4
  %30 = ptrtoint ptr %arrayidx.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i12.i.i, align 4
  %and.i13.i.i = and i32 %31, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i)
  %tobool10.not.i14.i.i = icmp eq i32 %and.i13.i.i, 0
  %data.i15.i.i = getelementptr %struct.alps_nibble_commands, ptr %29, i32 4, i32 1
  %cond.i16.i.i = select i1 %tobool10.not.i14.i.i, ptr %data.i15.i.i, ptr %dummy.i9.i.i
  %call.i17.i.i = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %cond.i16.i.i, i32 noundef %31) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i.i)
  %tobool13.not.i18.not.i.i.not = icmp eq i32 %call.i17.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i9.i.i) #13
  br i1 %tobool13.not.i18.not.i.i.not, label %if.end10, label %alps_command_mode_write_reg.exit.error_crit_edge

alps_command_mode_write_reg.exit.error_crit_edge: ; preds = %alps_command_mode_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end10:                                         ; preds = %alps_command_mode_write_reg.exit
  %call.i43 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %psmouse, i32 noundef 49860) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool.not.i44 = icmp eq i32 %call.i43, 0
  br i1 %tobool.not.i44, label %if.end.i48, label %if.end10.error_crit_edge

if.end10.error_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end.i48:                                       ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i.i42) #13
  %32 = getelementptr inbounds [4 x i8], ptr %param.i.i42, i32 0, i32 2
  %33 = ptrtoint ptr %param.i.i42 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %param.i.i42, align 4
  %call.i.i46 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param.i.i42, i32 noundef 1001) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i46)
  %tobool.not.i.i47 = icmp eq i32 %call.i.i46, 0
  br i1 %tobool.not.i.i47, label %if.end.i.i54, label %if.end.i48.alps_command_mode_read_reg.exit60.thread83_crit_edge

if.end.i48.alps_command_mode_read_reg.exit60.thread83_crit_edge: ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit60.thread83

if.end.i.i54:                                     ; preds = %if.end.i48
  %34 = getelementptr inbounds [4 x i8], ptr %param.i.i42, i32 0, i32 1
  %35 = ptrtoint ptr %param.i.i42 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %param.i.i42, align 4
  %conv.i.i49 = zext i8 %36 to i32
  %shl.i.i50 = shl nuw nsw i32 %conv.i.i49, 8
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %34, align 1
  %conv3.i.i51 = zext i8 %38 to i32
  %or.i.i52 = or i32 %shl.i.i50, %conv3.i.i51
  call void @__sanitizer_cov_trace_const_cmp4(i32 49860, i32 %or.i.i52)
  %cmp.not.i.i53 = icmp eq i32 %or.i.i52, 49860
  br i1 %cmp.not.i.i53, label %alps_command_mode_read_reg.exit60, label %if.end.i.i54.alps_command_mode_read_reg.exit60.thread83_crit_edge

if.end.i.i54.alps_command_mode_read_reg.exit60.thread83_crit_edge: ; preds = %if.end.i.i54
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit60.thread83

alps_command_mode_read_reg.exit60.thread83:       ; preds = %if.end.i.i54.alps_command_mode_read_reg.exit60.thread83_crit_edge, %if.end.i48.alps_command_mode_read_reg.exit60.thread83_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i42) #13
  br label %error

alps_command_mode_read_reg.exit60:                ; preds = %if.end.i.i54
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %32, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i42) #13
  %conv = or i8 %40, 2
  %conv.i = zext i8 %conv to i32
  %41 = lshr i32 %conv.i, 4
  %42 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #13
  %nibble_commands.i.i = getelementptr inbounds %struct.alps_data, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %dummy.i.i, align 4
  %45 = ptrtoint ptr %nibble_commands.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %nibble_commands.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.alps_nibble_commands, ptr %46, i32 %41
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %48, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool10.not.i.i = icmp eq i32 %and.i.i, 0
  %data.i.i = getelementptr %struct.alps_nibble_commands, ptr %46, i32 %41, i32 1
  %cond.i.i = select i1 %tobool10.not.i.i, ptr %data.i.i, ptr %dummy.i.i
  %call.i.i62 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %cond.i.i, i32 noundef %48) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i62)
  %tobool13.not.i.not.i = icmp eq i32 %call.i.i62, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #13
  br i1 %tobool13.not.i.not.i, label %__alps_command_mode_write_reg.exit, label %alps_command_mode_read_reg.exit60.error_crit_edge

alps_command_mode_read_reg.exit60.error_crit_edge: ; preds = %alps_command_mode_read_reg.exit60
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

__alps_command_mode_write_reg.exit:               ; preds = %alps_command_mode_read_reg.exit60
  %and2.i = and i32 %conv.i, 15
  %49 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i9.i) #13
  %nibble_commands.i11.i = getelementptr inbounds %struct.alps_data, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %dummy.i9.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %dummy.i9.i, align 4
  %52 = ptrtoint ptr %nibble_commands.i11.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %nibble_commands.i11.i, align 4
  %arrayidx.i12.i = getelementptr %struct.alps_nibble_commands, ptr %53, i32 %and2.i
  %54 = ptrtoint ptr %arrayidx.i12.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i12.i, align 4
  %and.i13.i = and i32 %55, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool10.not.i14.i = icmp eq i32 %and.i13.i, 0
  %data.i15.i = getelementptr %struct.alps_nibble_commands, ptr %53, i32 %and2.i, i32 1
  %cond.i16.i = select i1 %tobool10.not.i14.i, ptr %data.i15.i, ptr %dummy.i9.i
  %call.i17.i = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %cond.i16.i, i32 noundef %55) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %tobool13.not.i18.not.i.not = icmp eq i32 %call.i17.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i9.i) #13
  br i1 %tobool13.not.i18.not.i.not, label %if.end18, label %__alps_command_mode_write_reg.exit.error_crit_edge

__alps_command_mode_write_reg.exit.error_crit_edge: ; preds = %__alps_command_mode_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end18:                                         ; preds = %__alps_command_mode_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call.i65 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 234) #13
  %call20 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 244) #13
  br label %cleanup

error:                                            ; preds = %__alps_command_mode_write_reg.exit.error_crit_edge, %alps_command_mode_read_reg.exit60.error_crit_edge, %alps_command_mode_read_reg.exit60.thread83, %if.end10.error_crit_edge, %alps_command_mode_write_reg.exit.error_crit_edge, %if.end.i39.error_crit_edge, %if.end6.error_crit_edge, %alps_command_mode_read_reg.exit.error_crit_edge, %alps_command_mode_read_reg.exit.thread76, %lor.lhs.false.error_crit_edge, %alps_enter_command_mode.exit
  %call.i69 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 234) #13
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end18
  %retval.0 = phi i32 [ -1, %error ], [ %call20, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alps_process_packet_v7(ptr noundef %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %packet1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %0 = ptrtoint ptr %packet1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %packet1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 72, i8 %1)
  %cmp = icmp eq i8 %1, 72
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %arrayidx3 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  %4 = and i8 %3, 71
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %4)
  %cmp5 = icmp eq i8 %4, 6
  br i1 %cmp5, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %psmouse, align 4
  %flags.i = getelementptr inbounds %struct.alps_data, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %9 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ps2dev.i, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.66) #16
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %dev22.i = getelementptr inbounds %struct.alps_data, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %dev22.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev22.i, align 4
  %arrayidx.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %15 = and i8 %14, -65
  %arrayidx4.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx4.i, align 1
  %and6.i = shl i8 %17, 2
  %shl.i = and i8 %and6.i, 64
  %or.i = or i8 %shl.i, %15
  %and9.i = and i8 %17, 7
  %18 = and i8 %3, -72
  %or13.i = or i8 %and9.i, %18
  %and16.i = shl i8 %17, 1
  %shl17.i = and i8 %and16.i, 64
  %or18.i = or i8 %or13.i, %shl17.i
  %arrayidx19.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 5
  %19 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx19.i, align 1
  %21 = and i8 %20, 63
  %22 = lshr i8 %17, 1
  %23 = and i8 %22, 64
  %or2550.i = or i8 %21, %23
  %or25.i = zext i8 %or2550.i to i32
  %conv27.i = zext i8 %or.i to i32
  tail call void @input_event(ptr noundef %12, i32 noundef 2, i32 noundef 0, i32 noundef %conv27.i) #13
  %conv29.i = zext i8 %or18.i to i32
  %sub.i = sub nsw i32 0, %conv29.i
  tail call void @input_event(ptr noundef %12, i32 noundef 2, i32 noundef 1, i32 noundef %sub.i) #13
  tail call void @input_event(ptr noundef %12, i32 noundef 3, i32 noundef 24, i32 noundef %or25.i) #13
  %arrayidx30.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx30.i, align 1
  tail call void @psmouse_report_standard_buttons(ptr noundef %12, i8 noundef zeroext %25) #13
  tail call void @input_event(ptr noundef %12, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %26 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %psmouse, align 4
  %dev1.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %28 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1.i, align 4
  %f2.i = getelementptr inbounds %struct.alps_data, ptr %27, i32 0, i32 28
  %30 = call ptr @memset(ptr %f2.i, i32 0, i32 40)
  %decode_fields.i = getelementptr inbounds %struct.alps_data, ptr %27, i32 0, i32 22
  %31 = ptrtoint ptr %decode_fields.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %decode_fields.i, align 4
  %call.i = tail call i32 %32(ptr noundef %f2.i, ptr noundef %packet1, ptr noundef %psmouse) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i10 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i10, label %if.end.i11, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i11:                                       ; preds = %if.else
  %mt.i = getelementptr inbounds %struct.alps_data, ptr %27, i32 0, i32 28, i32 5
  %33 = ptrtoint ptr %mt.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %mt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp1.not.i.i = icmp eq i16 %34, 0
  br i1 %cmp1.not.i.i, label %lor.lhs.false.i.i, label %if.end.i11.if.then.i.i_crit_edge

if.end.i11.if.then.i.i_crit_edge:                 ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i11
  %y.i.i = getelementptr %struct.alps_data, ptr %27, i32 0, i32 28, i32 5, i32 0, i32 1
  %35 = ptrtoint ptr %y.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %y.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp5.not.i.i = icmp eq i16 %36, 0
  br i1 %cmp5.not.i.i, label %lor.lhs.false.i.i.for.inc.i.i_crit_edge, label %lor.lhs.false.i.i.if.then.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

lor.lhs.false.i.i.for.inc.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.end.i11.if.then.i.i_crit_edge
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %lor.lhs.false.i.i.for.inc.i.i_crit_edge
  %fingers.1.i.i = phi i32 [ 1, %if.then.i.i ], [ 0, %lor.lhs.false.i.i.for.inc.i.i_crit_edge ]
  %arrayidx.1.i.i = getelementptr %struct.alps_data, ptr %27, i32 0, i32 28, i32 5, i32 1
  %37 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx.1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp1.not.1.i.i = icmp eq i16 %38, 0
  br i1 %cmp1.not.1.i.i, label %lor.lhs.false.1.i.i, label %for.inc.i.i.if.then.1.i.i_crit_edge

for.inc.i.i.if.then.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.1.i.i

lor.lhs.false.1.i.i:                              ; preds = %for.inc.i.i
  %y.1.i.i = getelementptr %struct.alps_data, ptr %27, i32 0, i32 28, i32 5, i32 1, i32 1
  %39 = ptrtoint ptr %y.1.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %y.1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %cmp5.not.1.i.i = icmp eq i16 %40, 0
  br i1 %cmp5.not.1.i.i, label %lor.lhs.false.1.i.i.for.inc.1.i.i_crit_edge, label %lor.lhs.false.1.i.i.if.then.1.i.i_crit_edge

lor.lhs.false.1.i.i.if.then.1.i.i_crit_edge:      ; preds = %lor.lhs.false.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.1.i.i

lor.lhs.false.1.i.i.for.inc.1.i.i_crit_edge:      ; preds = %lor.lhs.false.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i.i

if.then.1.i.i:                                    ; preds = %lor.lhs.false.1.i.i.if.then.1.i.i_crit_edge, %for.inc.i.i.if.then.1.i.i_crit_edge
  %inc.1.i.i = add nuw nsw i32 %fingers.1.i.i, 1
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then.1.i.i, %lor.lhs.false.1.i.i.for.inc.1.i.i_crit_edge
  %fingers.1.1.i.i = phi i32 [ %inc.1.i.i, %if.then.1.i.i ], [ %fingers.1.i.i, %lor.lhs.false.1.i.i.for.inc.1.i.i_crit_edge ]
  %arrayidx.2.i.i = getelementptr %struct.alps_data, ptr %27, i32 0, i32 28, i32 5, i32 2
  %41 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx.2.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp1.not.2.i.i = icmp eq i16 %42, 0
  br i1 %cmp1.not.2.i.i, label %lor.lhs.false.2.i.i, label %for.inc.1.i.i.if.then.2.i.i_crit_edge

for.inc.1.i.i.if.then.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.2.i.i

lor.lhs.false.2.i.i:                              ; preds = %for.inc.1.i.i
  %y.2.i.i = getelementptr %struct.alps_data, ptr %27, i32 0, i32 28, i32 5, i32 2, i32 1
  %43 = ptrtoint ptr %y.2.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %y.2.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp5.not.2.i.i = icmp eq i16 %44, 0
  br i1 %cmp5.not.2.i.i, label %lor.lhs.false.2.i.i.for.inc.2.i.i_crit_edge, label %lor.lhs.false.2.i.i.if.then.2.i.i_crit_edge

lor.lhs.false.2.i.i.if.then.2.i.i_crit_edge:      ; preds = %lor.lhs.false.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.2.i.i

lor.lhs.false.2.i.i.for.inc.2.i.i_crit_edge:      ; preds = %lor.lhs.false.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i.i

if.then.2.i.i:                                    ; preds = %lor.lhs.false.2.i.i.if.then.2.i.i_crit_edge, %for.inc.1.i.i.if.then.2.i.i_crit_edge
  %inc.2.i.i = add nuw nsw i32 %fingers.1.1.i.i, 1
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.then.2.i.i, %lor.lhs.false.2.i.i.for.inc.2.i.i_crit_edge
  %fingers.1.2.i.i = phi i32 [ %inc.2.i.i, %if.then.2.i.i ], [ %fingers.1.1.i.i, %lor.lhs.false.2.i.i.for.inc.2.i.i_crit_edge ]
  %arrayidx.3.i.i = getelementptr %struct.alps_data, ptr %27, i32 0, i32 28, i32 5, i32 3
  %45 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx.3.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp1.not.3.i.i = icmp eq i16 %46, 0
  br i1 %cmp1.not.3.i.i, label %lor.lhs.false.3.i.i, label %for.inc.2.i.i.if.then.3.i.i_crit_edge

for.inc.2.i.i.if.then.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.3.i.i

lor.lhs.false.3.i.i:                              ; preds = %for.inc.2.i.i
  %y.3.i.i = getelementptr %struct.alps_data, ptr %27, i32 0, i32 28, i32 5, i32 3, i32 1
  %47 = ptrtoint ptr %y.3.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %y.3.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %cmp5.not.3.i.i = icmp eq i16 %48, 0
  br i1 %cmp5.not.3.i.i, label %lor.lhs.false.3.i.i.alps_get_mt_count.exit.i_crit_edge, label %lor.lhs.false.3.i.i.if.then.3.i.i_crit_edge

lor.lhs.false.3.i.i.if.then.3.i.i_crit_edge:      ; preds = %lor.lhs.false.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.3.i.i

lor.lhs.false.3.i.i.alps_get_mt_count.exit.i_crit_edge: ; preds = %lor.lhs.false.3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_get_mt_count.exit.i

if.then.3.i.i:                                    ; preds = %lor.lhs.false.3.i.i.if.then.3.i.i_crit_edge, %for.inc.2.i.i.if.then.3.i.i_crit_edge
  %inc.3.i.i = add nuw nsw i32 %fingers.1.2.i.i, 1
  br label %alps_get_mt_count.exit.i

alps_get_mt_count.exit.i:                         ; preds = %if.then.3.i.i, %lor.lhs.false.3.i.i.alps_get_mt_count.exit.i_crit_edge
  %fingers.1.3.i.i = phi i32 [ %inc.3.i.i, %if.then.3.i.i ], [ %fingers.1.2.i.i, %lor.lhs.false.3.i.i.alps_get_mt_count.exit.i_crit_edge ]
  tail call fastcc void @alps_report_mt_data(ptr noundef %psmouse, i32 noundef %fingers.1.3.i.i) #13
  %fingers.i = getelementptr inbounds %struct.alps_data, ptr %27, i32 0, i32 28, i32 2
  %49 = ptrtoint ptr %fingers.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fingers.i, align 4
  tail call void @input_mt_report_finger_count(ptr noundef %29, i32 noundef %50) #13
  %left.i = getelementptr inbounds %struct.alps_data, ptr %27, i32 0, i32 28, i32 6
  %51 = ptrtoint ptr %left.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i = load i8, ptr %left.i, align 4
  %52 = lshr i8 %bf.load.i, 5
  %.lobit.i = and i8 %52, 1
  %53 = zext i8 %.lobit.i to i32
  tail call void @input_event(ptr noundef %29, i32 noundef 1, i32 noundef 272, i32 noundef %53) #13
  %54 = ptrtoint ptr %left.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load5.i = load i8, ptr %left.i, align 4
  %55 = lshr i8 %bf.load5.i, 4
  %.lobit34.i = and i8 %55, 1
  %56 = zext i8 %.lobit34.i to i32
  tail call void @input_event(ptr noundef %29, i32 noundef 1, i32 noundef 273, i32 noundef %56) #13
  %57 = ptrtoint ptr %left.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load9.i = load i8, ptr %left.i, align 4
  %58 = lshr i8 %bf.load9.i, 3
  %.lobit35.i = and i8 %58, 1
  %59 = zext i8 %.lobit35.i to i32
  tail call void @input_event(ptr noundef %29, i32 noundef 1, i32 noundef 274, i32 noundef %59) #13
  tail call void @input_event(ptr noundef %29, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %if.end

if.end:                                           ; preds = %alps_get_mt_count.exit.i, %if.else.if.end_crit_edge, %if.end.i, %do.end.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @alps_decode_packet_v7(ptr nocapture noundef %f, ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %psmouse) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %arrayidx.i = getelementptr i8, ptr %p, i32 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %3 to i32
  %and.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.else.i:                                        ; preds = %entry
  %and3.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.else6.i, label %if.else.i.if.end11_crit_edge

if.else.i.if.end11_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.else6.i:                                       ; preds = %if.else.i
  %4 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %p, align 1
  %6 = and i8 %5, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool10.not.i = icmp ne i8 %6, 0
  %and13.i = and i32 %conv.i, 67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %or.cond.i = select i1 %tobool10.not.i, i1 %tobool14.not.i, i1 false
  br i1 %or.cond.i, label %if.else6.i.cleanup_crit_edge, label %if.else16.i

if.else6.i.cleanup_crit_edge:                     ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else16.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx17.i = getelementptr i8, ptr %p, i32 1
  %7 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx17.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.i = icmp ne i8 %8, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp23.i = icmp ne i8 %3, 0
  %or.cond35.i = select i1 %cmp.i, i1 true, i1 %cmp23.i
  %spec.select = sext i1 %or.cond35.i to i32
  br label %cleanup

if.end11:                                         ; preds = %if.else.i.if.end11_crit_edge, %entry.if.end11_crit_edge
  %packet_id.0.i.ph = phi i2 [ -2, %if.else.i.if.end11_crit_edge ], [ 1, %entry.if.end11_crit_edge ]
  %mt = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 5
  %arrayidx.i127 = getelementptr i8, ptr %p, i32 2
  %9 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i127, align 1
  %11 = and i8 %10, -128
  %and.i128 = zext i8 %11 to i16
  %shl.i = shl nuw nsw i16 %and.i128, 4
  %12 = ptrtoint ptr %mt to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %shl.i, ptr %mt, align 2
  %13 = load i8, ptr %arrayidx.i127, align 1
  %14 = and i8 %13, 63
  %and5.i = zext i8 %14 to i16
  %shl6.i = shl nuw nsw i16 %and5.i, 5
  %or.i = or i16 %shl6.i, %shl.i
  store i16 %or.i, ptr %mt, align 2
  %arrayidx11.i = getelementptr i8, ptr %p, i32 3
  %15 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx11.i, align 1
  %17 = lshr i8 %16, 1
  %18 = and i8 %17, 24
  %19 = zext i8 %18 to i16
  %or17.i = or i16 %or.i, %19
  store i16 %or17.i, ptr %mt, align 2
  %20 = load i8, ptr %arrayidx11.i, align 1
  %21 = and i8 %20, 7
  %and21.i = zext i8 %21 to i16
  %or25.i = or i16 %or17.i, %and21.i
  store i16 %or25.i, ptr %mt, align 2
  %arrayidx27.i = getelementptr i8, ptr %p, i32 1
  %22 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx27.i, align 1
  %conv28.i = zext i8 %23 to i16
  %shl29.i = shl nuw nsw i16 %conv28.i, 3
  %24 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %p, align 1
  %26 = and i8 %25, 7
  %and32.i = zext i8 %26 to i16
  %or33.i = or i16 %shl29.i, %and32.i
  %y.i = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 5, i32 0, i32 1
  %27 = ptrtoint ptr %y.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %or33.i, ptr %y.i, align 2
  %28 = load i8, ptr %arrayidx11.i, align 1
  %29 = and i8 %28, -128
  %and38.i = zext i8 %29 to i16
  %shl39.i = shl nuw nsw i16 %and38.i, 4
  %arrayidx41.i = getelementptr %struct.alps_fields, ptr %f, i32 0, i32 5, i32 1
  %30 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %shl39.i, ptr %arrayidx41.i, align 2
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i, align 1
  %33 = and i8 %32, -128
  %and45.i = zext i8 %33 to i16
  %shl46.i = shl nuw nsw i16 %and45.i, 3
  %or50.i = or i16 %shl46.i, %shl39.i
  store i16 %or50.i, ptr %arrayidx41.i, align 2
  %34 = load i8, ptr %arrayidx.i, align 1
  %35 = and i8 %34, 63
  %and54.i = zext i8 %35 to i16
  %shl55.i = shl nuw nsw i16 %and54.i, 4
  %or59.i = or i16 %shl55.i, %or50.i
  store i16 %or59.i, ptr %arrayidx41.i, align 2
  %arrayidx61.i = getelementptr i8, ptr %p, i32 5
  %36 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx61.i, align 1
  %38 = and i8 %37, -128
  %and63.i = zext i8 %38 to i16
  %shl64.i = shl nuw nsw i16 %and63.i, 3
  %y67.i = getelementptr %struct.alps_fields, ptr %f, i32 0, i32 5, i32 1, i32 1
  %39 = ptrtoint ptr %y67.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %shl64.i, ptr %y67.i, align 2
  %40 = load i8, ptr %arrayidx61.i, align 1
  %41 = and i8 %40, 63
  %and70.i = zext i8 %41 to i16
  %shl71.i = shl nuw nsw i16 %and70.i, 4
  %or75.i = or i16 %shl71.i, %shl64.i
  store i16 %or75.i, ptr %y67.i, align 2
  %42 = zext i2 %packet_id.0.i.ph to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.89)
  switch i2 %packet_id.0.i.ph, label %alps_get_finger_coordinate_v7.exit [
    i2 1, label %sw.bb.i
    i2 -2, label %sw.bb99.i
  ]

sw.bb.i:                                          ; preds = %if.end11
  %43 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %or59.i, ptr %arrayidx41.i, align 2
  %44 = or i16 %or75.i, 15
  %45 = ptrtoint ptr %y67.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %y67.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %44)
  %cmp.i129 = icmp eq i16 %44, 2047
  call void @__sanitizer_cov_trace_const_cmp2(i16 4080, i16 %or59.i)
  %cmp95.i = icmp eq i16 %or59.i, 4080
  %or.cond.i130 = select i1 %cmp.i129, i1 %cmp95.i, i1 false
  br i1 %or.cond.i130, label %if.then.i, label %sw.bb.i.alps_get_finger_coordinate_v7.exit.thread_crit_edge

sw.bb.i.alps_get_finger_coordinate_v7.exit.thread_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_get_finger_coordinate_v7.exit.thread

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %arrayidx41.i, align 2
  br label %alps_get_finger_coordinate_v7.exit.thread

sw.bb99.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %47 = and i16 %or59.i, 4032
  %48 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %arrayidx41.i, align 2
  %49 = and i16 %or75.i, 2000
  %50 = ptrtoint ptr %y67.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %y67.i, align 2
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i, align 1
  %53 = shl i8 %52, 4
  %54 = and i8 %53, 32
  %shl113.i = zext i8 %54 to i16
  %sub.i146 = xor i16 %or33.i, 2047
  %55 = ptrtoint ptr %y.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %sub.i146, ptr %y.i, align 2
  %.masked = and i16 %or75.i, 1984
  %56 = or i16 %.masked, %shl113.i
  %sub152.i147 = xor i16 %56, 2016
  br label %if.else

alps_get_finger_coordinate_v7.exit.thread:        ; preds = %if.then.i, %sw.bb.i.alps_get_finger_coordinate_v7.exit.thread_crit_edge
  %sub.i139 = xor i16 %or33.i, 2047
  %57 = ptrtoint ptr %y.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %sub.i139, ptr %y.i, align 2
  %58 = ptrtoint ptr %y67.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %y67.i, align 2
  %sub152.i140 = sub i16 2047, %59
  store i16 %sub152.i140, ptr %y67.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or25.i)
  %cmp1.not.i = icmp ne i16 %or25.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub.i139)
  %cmp5.not.i = icmp ne i16 %sub.i139, 0
  %or.cond = select i1 %cmp1.not.i, i1 true, i1 %cmp5.not.i
  %fingers.1.i = zext i1 %or.cond to i32
  %60 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx41.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %cmp1.not.1.i = icmp eq i16 %61, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %59)
  %cmp5.not.1.i = icmp eq i16 %59, 2047
  %or.cond149 = select i1 %cmp1.not.1.i, i1 %cmp5.not.1.i, i1 false
  %inc.1.i = select i1 %or.cond, i32 2, i32 1
  %fingers.1.1.i = select i1 %or.cond149, i32 %fingers.1.i, i32 %inc.1.i
  %arrayidx.2.i = getelementptr %struct.alps_fields, ptr %f, i32 0, i32 5, i32 2
  %62 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx.2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp1.not.2.i = icmp eq i16 %63, 0
  br i1 %cmp1.not.2.i, label %lor.lhs.false.2.i, label %alps_get_finger_coordinate_v7.exit.thread.if.then.2.i_crit_edge

alps_get_finger_coordinate_v7.exit.thread.if.then.2.i_crit_edge: ; preds = %alps_get_finger_coordinate_v7.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.2.i

alps_get_finger_coordinate_v7.exit:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = xor i16 %or33.i, 2047
  %64 = ptrtoint ptr %y.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %sub.i, ptr %y.i, align 2
  %65 = ptrtoint ptr %y67.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %y67.i, align 2
  %sub152.i = sub i16 2047, %66
  br label %if.else

lor.lhs.false.2.i:                                ; preds = %alps_get_finger_coordinate_v7.exit.thread
  %y.2.i = getelementptr %struct.alps_fields, ptr %f, i32 0, i32 5, i32 2, i32 1
  %67 = ptrtoint ptr %y.2.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %y.2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %cmp5.not.2.i = icmp eq i16 %68, 0
  br i1 %cmp5.not.2.i, label %lor.lhs.false.2.i.for.inc.2.i_crit_edge, label %lor.lhs.false.2.i.if.then.2.i_crit_edge

lor.lhs.false.2.i.if.then.2.i_crit_edge:          ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.2.i

lor.lhs.false.2.i.for.inc.2.i_crit_edge:          ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %lor.lhs.false.2.i.if.then.2.i_crit_edge, %alps_get_finger_coordinate_v7.exit.thread.if.then.2.i_crit_edge
  %inc.2.i = add nuw nsw i32 %fingers.1.1.i, 1
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %lor.lhs.false.2.i.for.inc.2.i_crit_edge
  %fingers.1.2.i = phi i32 [ %inc.2.i, %if.then.2.i ], [ %fingers.1.1.i, %lor.lhs.false.2.i.for.inc.2.i_crit_edge ]
  %arrayidx.3.i = getelementptr %struct.alps_fields, ptr %f, i32 0, i32 5, i32 3
  %69 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx.3.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %cmp1.not.3.i = icmp eq i16 %70, 0
  br i1 %cmp1.not.3.i, label %lor.lhs.false.3.i, label %for.inc.2.i.if.then.3.i_crit_edge

for.inc.2.i.if.then.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.3.i

lor.lhs.false.3.i:                                ; preds = %for.inc.2.i
  %y.3.i = getelementptr %struct.alps_fields, ptr %f, i32 0, i32 5, i32 3, i32 1
  %71 = ptrtoint ptr %y.3.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %y.3.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %cmp5.not.3.i = icmp eq i16 %72, 0
  br i1 %cmp5.not.3.i, label %lor.lhs.false.3.i.if.end21_crit_edge, label %lor.lhs.false.3.i.if.then.3.i_crit_edge

lor.lhs.false.3.i.if.then.3.i_crit_edge:          ; preds = %lor.lhs.false.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.3.i

lor.lhs.false.3.i.if.end21_crit_edge:             ; preds = %lor.lhs.false.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then.3.i:                                      ; preds = %lor.lhs.false.3.i.if.then.3.i_crit_edge, %for.inc.2.i.if.then.3.i_crit_edge
  %inc.3.i = add nuw nsw i32 %fingers.1.2.i, 1
  br label %if.end21

if.else:                                          ; preds = %alps_get_finger_coordinate_v7.exit, %sw.bb99.i
  %storemerge = phi i16 [ %sub152.i147, %sw.bb99.i ], [ %sub152.i, %alps_get_finger_coordinate_v7.exit ]
  %73 = ptrtoint ptr %y67.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %storemerge, ptr %y67.i, align 2
  %74 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx61.i, align 1
  %76 = and i8 %75, 3
  %narrow = add nuw nsw i8 %76, 3
  %add = zext i8 %narrow to i32
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then.3.i, %lor.lhs.false.3.i.if.end21_crit_edge
  %add.sink = phi i32 [ %add, %if.else ], [ %inc.3.i, %if.then.3.i ], [ %fingers.1.2.i, %lor.lhs.false.3.i.if.end21_crit_edge ]
  %fingers20 = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 2
  %77 = ptrtoint ptr %fingers20 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add.sink, ptr %fingers20, align 4
  %78 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %p, align 1
  %left = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 6
  %80 = ptrtoint ptr %left to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load = load i8, ptr %left, align 4
  %81 = lshr i8 %79, 2
  %bf.shl = and i8 %81, 32
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %left, align 4
  %flags = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 13
  %82 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags, align 4
  %and25 = and i32 %83, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool.not = icmp eq i32 %and25, 0
  %84 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %p, align 1
  br i1 %tobool.not, label %if.else42, label %if.then26

if.then26:                                        ; preds = %if.end21
  %86 = and i8 %85, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool30.not = icmp eq i8 %86, 0
  br i1 %tobool30.not, label %if.then26.if.end33_crit_edge, label %if.then31

if.then26.if.end33_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then31:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  %fingers32 = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 2
  %87 = ptrtoint ptr %fingers32 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %fingers32, align 4
  %inc = add i32 %88, 1
  store i32 %inc, ptr %fingers32, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.then26.if.end33_crit_edge
  %89 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %p, align 1
  %91 = and i8 %90, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool37.not = icmp eq i8 %91, 0
  br i1 %tobool37.not, label %if.end33.if.end63_crit_edge, label %if.then38

if.end33.if.end63_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %fingers39 = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 2
  %92 = ptrtoint ptr %fingers39 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %fingers39, align 4
  %inc40 = add i32 %93, 1
  store i32 %inc40, ptr %fingers39, align 4
  br label %if.end63

if.else42:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %94 = lshr i8 %85, 1
  %bf.shl49 = and i8 %94, 16
  %bf.clear50 = and i8 %bf.set, -17
  %bf.set51 = or i8 %bf.shl49, %bf.clear50
  %95 = ptrtoint ptr %left to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %bf.set51, ptr %left, align 4
  %96 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %p, align 1
  %98 = lshr i8 %97, 1
  %bf.shl59 = and i8 %98, 8
  %bf.clear60 = and i8 %bf.set51, -9
  %bf.set61 = or i8 %bf.clear60, %bf.shl59
  store i8 %bf.set61, ptr %left, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.else42, %if.then38, %if.end33.if.end63_crit_edge
  %fingers64 = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 2
  %99 = ptrtoint ptr %fingers64 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %fingers64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %100)
  %cmp65 = icmp eq i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or25.i)
  %cmp70 = icmp eq i16 %or25.i, 0
  %or.cond150 = select i1 %cmp65, i1 %cmp70, i1 false
  br i1 %or.cond150, label %land.lhs.true72, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true72:                                  ; preds = %if.end63
  %101 = ptrtoint ptr %y.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %y.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %cmp76 = icmp eq i16 %102, 0
  br i1 %cmp76, label %if.then78, label %land.lhs.true72.cleanup_crit_edge

land.lhs.true72.cleanup_crit_edge:                ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then78:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #15
  %103 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx41.i, align 4
  %105 = ptrtoint ptr %mt to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %mt, align 4
  %106 = ptrtoint ptr %y67.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %y67.i, align 2
  %108 = ptrtoint ptr %y.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %y.i, align 2
  store i16 0, ptr %arrayidx41.i, align 4
  store i16 0, ptr %y67.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then78, %land.lhs.true72.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.else16.i, %if.else6.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then78 ], [ 0, %land.lhs.true72.cleanup_crit_edge ], [ 0, %if.end63.cleanup_crit_edge ], [ 1, %if.else6.i.cleanup_crit_edge ], [ %spec.select, %if.else16.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alps_set_abs_params_v7(ptr nocapture noundef readonly %priv, ptr noundef %dev1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @alps_set_abs_params_mt_common(ptr noundef %priv, ptr noundef %dev1)
  %keybit = getelementptr inbounds %struct.input_dev, ptr %dev1, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 328, ptr noundef %keybit) #13
  %call = tail call i32 @input_mt_init_slots(ptr noundef %dev1, i32 noundef 4, i32 noundef 13) #13
  tail call void @_set_bit(i32 noundef 328, ptr noundef %keybit) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_hw_init_ss4_v2(ptr noundef %psmouse) #0 align 64 {
entry:
  %param = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param) #13
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 25640, ptr %param, align 2
  %call = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 234) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.error_crit_edge

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 234) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.error_crit_edge

lor.lhs.false.error_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call5 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4339) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false4.error_crit_edge

lor.lhs.false4.error_crit_edge:                   ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %arrayidx8 = getelementptr inbounds [2 x i8], ptr %param, i32 0, i32 1
  %call9 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %arrayidx8, i32 noundef 4339) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end, label %lor.lhs.false7.error_crit_edge

lor.lhs.false7.error_crit_edge:                   ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end:                                           ; preds = %lor.lhs.false7
  %call.i = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 234) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i.not, label %lor.lhs.false13, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

lor.lhs.false13:                                  ; preds = %if.end
  %call14 = call fastcc i32 @alps_enter_command_mode(ptr noundef %psmouse)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %lor.lhs.false13.error_crit_edge

lor.lhs.false13.error_crit_edge:                  ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %call17 = call fastcc i32 @alps_command_mode_write_reg(ptr noundef %psmouse, i32 noundef 29, i8 noundef zeroext 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %lor.lhs.false16.error_crit_edge

lor.lhs.false16.error_crit_edge:                  ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end20:                                         ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #15
  %call.i36 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 234) #13
  %call22 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 244) #13
  br label %cleanup

error:                                            ; preds = %lor.lhs.false16.error_crit_edge, %lor.lhs.false13.error_crit_edge, %if.end.error_crit_edge, %lor.lhs.false7.error_crit_edge, %lor.lhs.false4.error_crit_edge, %lor.lhs.false.error_crit_edge, %entry.error_crit_edge
  %call.i40 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 234) #13
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end20
  %retval.0 = phi i32 [ -1, %error ], [ %call22, %if.end20 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alps_process_packet_ss4_v2(ptr noundef %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %packet1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %dev2 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %dev24 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev24, align 4
  %f5 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28
  %6 = call ptr @memset(ptr %f5, i32 0, i32 40)
  %decode_fields = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 22
  %7 = ptrtoint ptr %decode_fields to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %decode_fields, align 4
  %call = tail call i32 %8(ptr noundef %f5, ptr noundef %packet1, ptr noundef %psmouse) #13
  %multi_packet = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 25
  %9 = ptrtoint ptr %multi_packet to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %multi_packet, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then:                                          ; preds = %entry
  %is_mp = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 6
  %11 = ptrtoint ptr %is_mp to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %is_mp, align 4
  %12 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not = icmp eq i8 %12, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %decode_fields to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %decode_fields, align 4
  %multi_data = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 27
  %call10 = tail call i32 %14(ptr noundef %f5, ptr noundef %multi_data, ptr noundef %psmouse) #13
  br label %if.end12

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %multi_packet to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %multi_packet, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7, %entry.if.end12_crit_edge
  %is_mp13 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 6
  %16 = ptrtoint ptr %is_mp13 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load14 = load i8, ptr %is_mp13, align 4
  %17 = and i8 %bf.load14, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool18.not = icmp eq i8 %17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %18 = ptrtoint ptr %multi_packet to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %multi_packet, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool22.not = icmp ne i32 %19, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load14)
  %tobool26.not = icmp sgt i8 %bf.load14, -1
  %or.cond = select i1 %tobool22.not, i1 true, i1 %tobool26.not
  br i1 %or.cond, label %if.end31, label %if.then27

if.then27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %multi_packet to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %multi_packet, align 4
  %multi_data29 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 27
  %21 = call ptr @memcpy(ptr %multi_data29, ptr %packet1, i32 6)
  br label %cleanup

if.end31:                                         ; preds = %if.end20
  %22 = ptrtoint ptr %multi_packet to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %multi_packet, align 4
  %arrayidx.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i, align 1
  %25 = and i8 %24, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %25)
  %switch = icmp eq i8 %25, 32
  br i1 %switch, label %if.then34, label %if.end71

if.then34:                                        ; preds = %if.end31
  %flags = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %and = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %do.end, label %if.end38

do.end:                                           ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %28 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ps2dev, align 4
  %dev37 = getelementptr inbounds %struct.serio, ptr %29, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev37, ptr noundef nonnull @.str.66) #16
  br label %cleanup

if.end38:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %packet1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %packet1, align 1
  %32 = shl i8 %31, 7
  %arrayidx40 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %33 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx40, align 1
  %35 = and i8 %34, 127
  %or142 = or i8 %35, %32
  %conv44 = sext i8 %or142 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 2, i32 noundef 0, i32 noundef %conv44) #13
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i, align 1
  %38 = shl i8 %37, 7
  %arrayidx49 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %39 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx49, align 1
  %41 = and i8 %40, 127
  %or52143 = or i8 %41, %38
  %conv54 = sext i8 %or52143 to i32
  %sub = sub nsw i32 0, %conv54
  tail call void @input_event(ptr noundef %5, i32 noundef 2, i32 noundef 1, i32 noundef %sub) #13
  %arrayidx55 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %42 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx55, align 1
  %44 = and i8 %43, 127
  %45 = zext i8 %44 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 3, i32 noundef 24, i32 noundef %45) #13
  %46 = ptrtoint ptr %is_mp13 to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load60 = load i8, ptr %is_mp13, align 4
  %47 = lshr i8 %bf.load60, 2
  %.lobit158 = and i8 %47, 1
  %48 = zext i8 %.lobit158 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 272, i32 noundef %48) #13
  %49 = ptrtoint ptr %is_mp13 to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load64 = load i8, ptr %is_mp13, align 4
  %50 = lshr i8 %bf.load64, 1
  %.lobit159 = and i8 %50, 1
  %51 = zext i8 %.lobit159 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 273, i32 noundef %51) #13
  %52 = ptrtoint ptr %is_mp13 to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load68 = load i8, ptr %is_mp13, align 4
  %bf.clear69 = and i8 %bf.load68, 1
  %53 = zext i8 %bf.clear69 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 274, i32 noundef %53) #13
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %cleanup

if.end71:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %fingers = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 2
  %54 = ptrtoint ptr %fingers to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fingers, align 4
  %56 = tail call i32 @llvm.umin.i32(i32 %55, i32 4)
  tail call fastcc void @alps_report_mt_data(ptr noundef %psmouse, i32 noundef %56)
  %57 = ptrtoint ptr %fingers to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fingers, align 4
  tail call void @input_mt_report_finger_count(ptr noundef %3, i32 noundef %58) #13
  %59 = ptrtoint ptr %is_mp13 to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load76 = load i8, ptr %is_mp13, align 4
  %60 = lshr i8 %bf.load76, 5
  %.lobit = and i8 %60, 1
  %61 = zext i8 %.lobit to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 272, i32 noundef %61) #13
  %62 = ptrtoint ptr %is_mp13 to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load80 = load i8, ptr %is_mp13, align 4
  %63 = lshr i8 %bf.load80, 4
  %.lobit156 = and i8 %63, 1
  %64 = zext i8 %.lobit156 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 273, i32 noundef %64) #13
  %65 = ptrtoint ptr %is_mp13 to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load84 = load i8, ptr %is_mp13, align 4
  %66 = lshr i8 %bf.load84, 3
  %.lobit157 = and i8 %66, 1
  %67 = zext i8 %.lobit157 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 274, i32 noundef %67) #13
  %pressure = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 3
  %68 = ptrtoint ptr %pressure to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pressure, align 4
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 24, i32 noundef %69) #13
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.end38, %do.end, %if.then27, %if.end12.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @alps_decode_ss4_v2(ptr noundef %f, ptr noundef readonly %p, ptr nocapture noundef readonly %psmouse) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %arrayidx.i = getelementptr i8, ptr %p, i32 3
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %3 to i32
  %and.i = lshr i32 %conv.i, 4
  %4 = and i32 %and.i, 3
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %4, label %entry.unreachabledefault.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb54
    i32 2, label %if.then638
    i32 3, label %sw.bb332
  ]

sw.bb.i:                                          ; preds = %entry
  %6 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %p, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %7)
  %cmp.i = icmp eq i8 %7, 24
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.i.sw.bb_crit_edge

sw.bb.i.sw.bb_crit_edge:                          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %arrayidx4.i = getelementptr i8, ptr %p, i32 1
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %9)
  %cmp6.i = icmp eq i8 %9, 16
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true.i.sw.bb_crit_edge

land.lhs.true.i.sw.bb_crit_edge:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %arrayidx9.i = getelementptr i8, ptr %p, i32 2
  %10 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp11.i = icmp eq i8 %11, 0
  %and16.i = and i32 %conv.i, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and16.i)
  %cmp17.i = icmp eq i32 %and16.i, 8
  %or.cond.i = select i1 %cmp11.i, i1 %cmp17.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true19.i, label %land.lhs.true8.i.sw.bb_crit_edge

land.lhs.true8.i.sw.bb_crit_edge:                 ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

land.lhs.true19.i:                                ; preds = %land.lhs.true8.i
  %arrayidx20.i = getelementptr i8, ptr %p, i32 4
  %12 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx20.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %13)
  %cmp22.i = icmp eq i8 %13, 16
  br i1 %cmp22.i, label %land.lhs.true24.i, label %land.lhs.true19.i.sw.bb_crit_edge

land.lhs.true19.i.sw.bb_crit_edge:                ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

land.lhs.true24.i:                                ; preds = %land.lhs.true19.i
  %arrayidx25.i = getelementptr i8, ptr %p, i32 5
  %14 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx25.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp27.i = icmp eq i8 %15, 0
  br i1 %cmp27.i, label %sw.default, label %land.lhs.true24.i.sw.bb_crit_edge

land.lhs.true24.i.sw.bb_crit_edge:                ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.unreachabledefault.i:                       ; preds = %entry
  unreachable

sw.bb:                                            ; preds = %land.lhs.true24.i.sw.bb_crit_edge, %land.lhs.true19.i.sw.bb_crit_edge, %land.lhs.true8.i.sw.bb_crit_edge, %land.lhs.true.i.sw.bb_crit_edge, %sw.bb.i.sw.bb_crit_edge
  %16 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %p, align 1
  %18 = and i8 %17, 7
  %and = zext i8 %18 to i32
  %arrayidx1 = getelementptr i8, ptr %p, i32 1
  %19 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %20 to i32
  %shl = shl nuw nsw i32 %conv2, 3
  %and3 = and i32 %shl, 120
  %or = or i32 %and3, %and
  %shl6 = shl nuw nsw i32 %conv2, 2
  %and7 = and i32 %shl6, 896
  %or8 = or i32 %or, %and7
  %arrayidx9 = getelementptr i8, ptr %p, i32 2
  %21 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %22 to i32
  %shl11 = shl nuw nsw i32 %conv10, 5
  %and12 = and i32 %shl11, 7168
  %or13 = or i32 %or8, %and12
  %conv14 = trunc i32 %or13 to i16
  %mt = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 5
  %23 = ptrtoint ptr %mt to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv14, ptr %mt, align 4
  %24 = load i8, ptr %arrayidx9, align 1
  %25 = and i8 %24, 15
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  %28 = lshr i8 %27, 2
  %29 = and i8 %28, 48
  %or22897 = or i8 %29, %25
  %or22 = zext i8 %or22897 to i32
  %arrayidx23 = getelementptr i8, ptr %p, i32 4
  %30 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %31 to i32
  %shl25 = shl nuw nsw i32 %conv24, 6
  %and26 = and i32 %shl25, 960
  %or27 = or i32 %and26, %or22
  %shl30 = shl nuw nsw i32 %conv24, 5
  %and31 = and i32 %shl30, 3072
  %or32 = or i32 %or27, %and31
  %conv33 = trunc i32 %or32 to i16
  %y = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 5, i32 0, i32 1
  %32 = ptrtoint ptr %y to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv33, ptr %y, align 2
  %arrayidx36 = getelementptr i8, ptr %p, i32 5
  %33 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %34 to i32
  %and38 = shl nuw nsw i32 %conv37, 1
  %or43898 = and i32 %and38, 30
  %conv37.mask = and i32 %conv37, 96
  %mul = or i32 %or43898, %conv37.mask
  %pressure = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 3
  %35 = ptrtoint ptr %pressure to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul, ptr %pressure, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp.not = icmp ne i32 %mul, 0
  %cond = zext i1 %cmp.not to i32
  %fingers = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 2
  %36 = ptrtoint ptr %fingers to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond, ptr %fingers, align 4
  %first_mp = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 6
  %37 = ptrtoint ptr %first_mp to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load = load i8, ptr %first_mp, align 4
  %bf.clear52 = and i8 %bf.load, 63
  store i8 %bf.clear52, ptr %first_mp, align 4
  br label %if.else680

sw.bb54:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 13
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  %and55 = and i32 %39, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool.not = icmp eq i32 %and55, 0
  %dev_id191 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 11
  %40 = ptrtoint ptr %dev_id191 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %dev_id191, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %41)
  %cmp194 = icmp eq i8 %41, 115
  br i1 %tobool.not, label %if.else190, label %if.then

if.then:                                          ; preds = %sw.bb54
  br i1 %cmp194, label %land.lhs.true, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %arrayidx61 = getelementptr %struct.alps_data, ptr %1, i32 0, i32 11, i32 1
  %42 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %43)
  %cmp63 = icmp eq i8 %43, 3
  br i1 %cmp63, label %land.lhs.true65, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true65:                                  ; preds = %land.lhs.true
  %arrayidx67 = getelementptr %struct.alps_data, ptr %1, i32 0, i32 11, i32 2
  %44 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx67, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %45)
  %cmp69 = icmp eq i8 %45, 40
  br i1 %cmp69, label %if.then71, label %land.lhs.true65.if.else_crit_edge

land.lhs.true65.if.else_crit_edge:                ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then71:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %p, align 1
  %conv73 = zext i8 %47 to i32
  %shl74 = shl nuw nsw i32 %conv73, 4
  %and75 = and i32 %shl74, 112
  %arrayidx76 = getelementptr i8, ptr %p, i32 1
  %48 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %49 to i32
  %shl78 = shl nuw nsw i32 %conv77, 4
  %and79 = and i32 %shl78, 3968
  %50 = lshr i32 %conv73, 4
  %and84 = and i32 %50, 8
  %or80 = or i32 %and84, %and75
  %or85 = or i32 %or80, %and79
  %conv86 = trunc i32 %or85 to i16
  %mt87 = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 5
  %51 = ptrtoint ptr %mt87 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv86, ptr %mt87, align 4
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i, align 1
  %conv91 = zext i8 %53 to i32
  %shl92 = shl nuw nsw i32 %conv91, 4
  %and93 = and i32 %shl92, 112
  %arrayidx94 = getelementptr i8, ptr %p, i32 4
  %54 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx94, align 1
  %conv95 = zext i8 %55 to i32
  %shl96 = shl nuw nsw i32 %conv95, 4
  %and97 = and i32 %shl96, 3968
  %56 = lshr i32 %conv91, 4
  %and102 = and i32 %56, 8
  %or98 = or i32 %and102, %and93
  %or103 = or i32 %or98, %and97
  br label %if.end

if.else:                                          ; preds = %land.lhs.true65.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  %57 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %p, align 1
  %conv109 = zext i8 %58 to i32
  %shl110 = shl nuw nsw i32 %conv109, 5
  %and111 = and i32 %shl110, 224
  %arrayidx112 = getelementptr i8, ptr %p, i32 1
  %59 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %60 to i32
  %shl114 = shl nuw nsw i32 %conv113, 5
  %and115 = and i32 %shl114, 7936
  %61 = lshr i32 %conv109, 3
  %and120 = and i32 %61, 16
  %or116 = or i32 %and120, %and111
  %or121 = or i32 %or116, %and115
  %conv122 = trunc i32 %or121 to i16
  %mt123 = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 5
  %62 = ptrtoint ptr %mt123 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv122, ptr %mt123, align 4
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.i, align 1
  %conv127 = zext i8 %64 to i32
  %shl128 = shl nuw nsw i32 %conv127, 5
  %and129 = and i32 %shl128, 224
  %arrayidx130 = getelementptr i8, ptr %p, i32 4
  %65 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx130, align 1
  %conv131 = zext i8 %66 to i32
  %shl132 = shl nuw nsw i32 %conv131, 5
  %and133 = and i32 %shl132, 7936
  %67 = lshr i32 %conv127, 3
  %and138 = and i32 %67, 16
  %or134 = or i32 %and138, %and129
  %or139 = or i32 %or134, %and133
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then71
  %or139.sink = phi i32 [ %or139, %if.else ], [ %or103, %if.then71 ]
  %conv140 = trunc i32 %or139.sink to i16
  %arrayidx142 = getelementptr %struct.alps_fields, ptr %f, i32 0, i32 5, i32 1
  %68 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv140, ptr %arrayidx142, align 4
  %arrayidx144 = getelementptr i8, ptr %p, i32 1
  %69 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx144, align 1
  %conv145 = zext i8 %70 to i32
  %shl146 = shl nuw nsw i32 %conv145, 3
  %and147 = and i32 %shl146, 16
  %arrayidx148 = getelementptr i8, ptr %p, i32 2
  %71 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx148, align 1
  %conv149 = zext i8 %72 to i32
  %shl150 = shl nuw nsw i32 %conv149, 5
  %and151 = and i32 %shl150, 480
  %or152 = or i32 %and151, %and147
  %shl155 = shl nuw nsw i32 %conv149, 4
  %and156 = and i32 %shl155, 3584
  %or157 = or i32 %or152, %and156
  %73 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %p, align 1
  %75 = lshr i8 %74, 3
  %76 = and i8 %75, 8
  %and161 = zext i8 %76 to i32
  %or162 = or i32 %or157, %and161
  %conv163 = trunc i32 %or162 to i16
  %y166 = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 5, i32 0, i32 1
  %77 = ptrtoint ptr %y166 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv163, ptr %y166, align 2
  %arrayidx167 = getelementptr i8, ptr %p, i32 4
  %78 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx167, align 1
  %conv168 = zext i8 %79 to i32
  %shl169 = shl nuw nsw i32 %conv168, 3
  %and170 = and i32 %shl169, 16
  %arrayidx171 = getelementptr i8, ptr %p, i32 5
  %80 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx171, align 1
  %conv172 = zext i8 %81 to i32
  %shl173 = shl nuw nsw i32 %conv172, 5
  %and174 = and i32 %shl173, 480
  %or175 = or i32 %and174, %and170
  %shl178 = shl nuw nsw i32 %conv172, 4
  %and179 = and i32 %shl178, 3584
  %or180 = or i32 %or175, %and179
  %82 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.i, align 1
  %84 = lshr i8 %83, 3
  %85 = and i8 %84, 8
  %and184 = zext i8 %85 to i32
  %or185 = or i32 %or180, %and184
  br label %if.end299

if.else190:                                       ; preds = %sw.bb54
  br i1 %cmp194, label %land.lhs.true196, label %if.else190.if.else235_crit_edge

if.else190.if.else235_crit_edge:                  ; preds = %if.else190
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else235

land.lhs.true196:                                 ; preds = %if.else190
  %arrayidx198 = getelementptr %struct.alps_data, ptr %1, i32 0, i32 11, i32 1
  %86 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx198, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %87)
  %cmp200 = icmp eq i8 %87, 3
  br i1 %cmp200, label %land.lhs.true202, label %land.lhs.true196.if.else235_crit_edge

land.lhs.true196.if.else235_crit_edge:            ; preds = %land.lhs.true196
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else235

land.lhs.true202:                                 ; preds = %land.lhs.true196
  %arrayidx204 = getelementptr %struct.alps_data, ptr %1, i32 0, i32 11, i32 2
  %88 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx204, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %89)
  %cmp206 = icmp eq i8 %89, 40
  br i1 %cmp206, label %land.lhs.true202.if.end262_crit_edge, label %land.lhs.true202.if.else235_crit_edge

land.lhs.true202.if.else235_crit_edge:            ; preds = %land.lhs.true202
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else235

land.lhs.true202.if.end262_crit_edge:             ; preds = %land.lhs.true202
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end262

if.else235:                                       ; preds = %land.lhs.true202.if.else235_crit_edge, %land.lhs.true196.if.else235_crit_edge, %if.else190.if.else235_crit_edge
  br label %if.end262

if.end262:                                        ; preds = %if.else235, %land.lhs.true202.if.end262_crit_edge
  %.sink922 = phi i16 [ 5, %if.else235 ], [ 4, %land.lhs.true202.if.end262_crit_edge ]
  %.sink921 = phi i16 [ 224, %if.else235 ], [ 112, %land.lhs.true202.if.end262_crit_edge ]
  %.sink918 = phi i16 [ 7936, %if.else235 ], [ 3968, %land.lhs.true202.if.end262_crit_edge ]
  %90 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %p, align 1
  %conv237 = zext i8 %91 to i16
  %shl238 = shl nuw nsw i16 %conv237, %.sink922
  %and239 = and i16 %shl238, %.sink921
  %arrayidx240 = getelementptr i8, ptr %p, i32 1
  %92 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx240, align 1
  %conv241 = zext i8 %93 to i16
  %shl242 = shl nuw nsw i16 %conv241, %.sink922
  %and243 = and i16 %shl242, %.sink918
  %or244 = or i16 %and243, %and239
  %mt246 = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 5
  %94 = ptrtoint ptr %mt246 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %or244, ptr %mt246, align 4
  %95 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.i, align 1
  %conv250 = zext i8 %96 to i16
  %shl251 = shl nuw nsw i16 %conv250, %.sink922
  %and252 = and i16 %shl251, %.sink921
  %arrayidx253 = getelementptr i8, ptr %p, i32 4
  %97 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx253, align 1
  %conv254 = zext i8 %98 to i16
  %shl255 = shl nuw nsw i16 %conv254, %.sink922
  %and256 = and i16 %shl255, %.sink918
  %or257 = or i16 %and256, %and252
  %arrayidx260 = getelementptr %struct.alps_fields, ptr %f, i32 0, i32 5, i32 1
  %99 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %or257, ptr %arrayidx260, align 4
  %arrayidx263 = getelementptr i8, ptr %p, i32 1
  %100 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx263, align 1
  %conv264 = zext i8 %101 to i32
  %shl265 = shl nuw nsw i32 %conv264, 3
  %and266 = and i32 %shl265, 16
  %arrayidx267 = getelementptr i8, ptr %p, i32 2
  %102 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx267, align 1
  %conv268 = zext i8 %103 to i32
  %shl269 = shl nuw nsw i32 %conv268, 5
  %and270 = and i32 %shl269, 480
  %or271 = or i32 %and270, %and266
  %shl274 = shl nuw nsw i32 %conv268, 4
  %and275 = and i32 %shl274, 3584
  %or276 = or i32 %or271, %and275
  %conv277 = trunc i32 %or276 to i16
  %y280 = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 5, i32 0, i32 1
  %104 = ptrtoint ptr %y280 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv277, ptr %y280, align 2
  %arrayidx281 = getelementptr i8, ptr %p, i32 4
  %105 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx281, align 1
  %conv282 = zext i8 %106 to i32
  %shl283 = shl nuw nsw i32 %conv282, 3
  %and284 = and i32 %shl283, 16
  %arrayidx285 = getelementptr i8, ptr %p, i32 5
  %107 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx285, align 1
  %conv286 = zext i8 %108 to i32
  %shl287 = shl nuw nsw i32 %conv286, 5
  %and288 = and i32 %shl287, 480
  %or289 = or i32 %and288, %and284
  %shl292 = shl nuw nsw i32 %conv286, 4
  %and293 = and i32 %shl292, 3584
  %or294 = or i32 %or289, %and293
  br label %if.end299

if.end299:                                        ; preds = %if.end262, %if.end
  %or294.sink = phi i32 [ %or294, %if.end262 ], [ %or185, %if.end ]
  %conv295 = trunc i32 %or294.sink to i16
  %y298 = getelementptr %struct.alps_fields, ptr %f, i32 0, i32 5, i32 1, i32 1
  %109 = ptrtoint ptr %y298 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %conv295, ptr %y298, align 2
  %arrayidx300 = getelementptr i8, ptr %p, i32 1
  %110 = ptrtoint ptr %arrayidx300 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx300, align 1
  %conv301 = zext i8 %111 to i32
  %and302 = and i32 %conv301, 1
  %112 = lshr i32 %conv301, 1
  %and306 = and i32 %112, 2
  %or307 = or i32 %and306, %and302
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or307)
  %tobool308.not = icmp eq i32 %or307, 0
  %cond309 = select i1 %tobool308.not, i32 0, i32 48
  %pressure310 = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 3
  %113 = ptrtoint ptr %pressure310 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %cond309, ptr %pressure310, align 4
  %arrayidx311 = getelementptr i8, ptr %p, i32 2
  %114 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx311, align 1
  %116 = and i8 %115, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %cmp314.not = icmp eq i8 %116, 0
  br i1 %cmp314.not, label %if.else321, label %if.then316

if.then316:                                       ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #15
  %first_mp317 = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 6
  %117 = ptrtoint ptr %first_mp317 to i32
  call void @__asan_load1_noabort(i32 %117)
  %bf.load318 = load i8, ptr %first_mp317, align 4
  %bf.set320 = or i8 %bf.load318, -128
  store i8 %bf.set320, ptr %first_mp317, align 4
  br label %if.end327

if.else321:                                       ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #15
  %fingers322 = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 2
  %118 = ptrtoint ptr %fingers322 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 2, ptr %fingers322, align 4
  %first_mp323 = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 6
  %119 = ptrtoint ptr %first_mp323 to i32
  call void @__asan_load1_noabort(i32 %119)
  %bf.load324 = load i8, ptr %first_mp323, align 4
  %bf.clear325 = and i8 %bf.load324, 127
  store i8 %bf.clear325, ptr %first_mp323, align 4
  br label %if.end327

if.end327:                                        ; preds = %if.else321, %if.then316
  %is_mp328 = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 6
  %120 = ptrtoint ptr %is_mp328 to i32
  call void @__asan_load1_noabort(i32 %120)
  %bf.load329 = load i8, ptr %is_mp328, align 4
  %bf.clear330 = and i8 %bf.load329, -65
  store i8 %bf.clear330, ptr %is_mp328, align 4
  br label %if.else680

sw.bb332:                                         ; preds = %entry
  %flags333 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 13
  %121 = ptrtoint ptr %flags333 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %flags333, align 4
  %and334 = and i32 %122, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and334)
  %tobool335.not = icmp eq i32 %and334, 0
  %dev_id476 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 11
  %123 = ptrtoint ptr %dev_id476 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %dev_id476, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %124)
  %cmp479 = icmp eq i8 %124, 115
  br i1 %tobool335.not, label %if.else475, label %if.then336

if.then336:                                       ; preds = %sw.bb332
  br i1 %cmp479, label %land.lhs.true342, label %if.then336.if.else391_crit_edge

if.then336.if.else391_crit_edge:                  ; preds = %if.then336
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else391

land.lhs.true342:                                 ; preds = %if.then336
  %arrayidx344 = getelementptr %struct.alps_data, ptr %1, i32 0, i32 11, i32 1
  %125 = ptrtoint ptr %arrayidx344 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx344, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %126)
  %cmp346 = icmp eq i8 %126, 3
  br i1 %cmp346, label %land.lhs.true348, label %land.lhs.true342.if.else391_crit_edge

land.lhs.true342.if.else391_crit_edge:            ; preds = %land.lhs.true342
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else391

land.lhs.true348:                                 ; preds = %land.lhs.true342
  %arrayidx350 = getelementptr %struct.alps_data, ptr %1, i32 0, i32 11, i32 2
  %127 = ptrtoint ptr %arrayidx350 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx350, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %128)
  %cmp352 = icmp eq i8 %128, 40
  br i1 %cmp352, label %if.then354, label %land.lhs.true348.if.else391_crit_edge

land.lhs.true348.if.else391_crit_edge:            ; preds = %land.lhs.true348
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else391

if.then354:                                       ; preds = %land.lhs.true348
  call void @__sanitizer_cov_trace_pc() #15
  %129 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %p, align 1
  %conv356 = zext i8 %130 to i32
  %shl357 = shl nuw nsw i32 %conv356, 4
  %and358 = and i32 %shl357, 112
  %arrayidx359 = getelementptr i8, ptr %p, i32 1
  %131 = ptrtoint ptr %arrayidx359 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx359, align 1
  %conv360 = zext i8 %132 to i32
  %shl361 = shl nuw nsw i32 %conv360, 4
  %and362 = and i32 %shl361, 3968
  %133 = lshr i32 %conv356, 4
  %and367 = and i32 %133, 8
  %or363 = or i32 %and367, %and358
  %or368 = or i32 %or363, %and362
  %conv369 = trunc i32 %or368 to i16
  %arrayidx371 = getelementptr %struct.alps_fields, ptr %f, i32 0, i32 5, i32 2
  %134 = ptrtoint ptr %arrayidx371 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %conv369, ptr %arrayidx371, align 4
  %135 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx.i, align 1
  %conv374 = zext i8 %136 to i32
  %shl375 = shl nuw nsw i32 %conv374, 4
  %and376 = and i32 %shl375, 112
  %arrayidx377 = getelementptr i8, ptr %p, i32 4
  %137 = ptrtoint ptr %arrayidx377 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx377, align 1
  %conv378 = zext i8 %138 to i32
  %shl379 = shl nuw nsw i32 %conv378, 4
  %and380 = and i32 %shl379, 3968
  %139 = lshr i32 %conv374, 4
  %and385 = and i32 %139, 8
  %or381 = or i32 %and385, %and376
  %or386 = or i32 %or381, %and380
  br label %if.end428

if.else391:                                       ; preds = %land.lhs.true348.if.else391_crit_edge, %land.lhs.true342.if.else391_crit_edge, %if.then336.if.else391_crit_edge
  %140 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %p, align 1
  %conv393 = zext i8 %141 to i32
  %shl394 = shl nuw nsw i32 %conv393, 5
  %and395 = and i32 %shl394, 224
  %arrayidx396 = getelementptr i8, ptr %p, i32 1
  %142 = ptrtoint ptr %arrayidx396 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx396, align 1
  %conv397 = zext i8 %143 to i32
  %shl398 = shl nuw nsw i32 %conv397, 5
  %and399 = and i32 %shl398, 7936
  %144 = lshr i32 %conv393, 3
  %and404 = and i32 %144, 16
  %or400 = or i32 %and404, %and395
  %or405 = or i32 %or400, %and399
  %conv406 = trunc i32 %or405 to i16
  %arrayidx408 = getelementptr %struct.alps_fields, ptr %f, i32 0, i32 5, i32 2
  %145 = ptrtoint ptr %arrayidx408 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %conv406, ptr %arrayidx408, align 4
  %146 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx.i, align 1
  %conv411 = zext i8 %147 to i32
  %shl412 = shl nuw nsw i32 %conv411, 5
  %and413 = and i32 %shl412, 224
  %arrayidx414 = getelementptr i8, ptr %p, i32 4
  %148 = ptrtoint ptr %arrayidx414 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx414, align 1
  %conv415 = zext i8 %149 to i32
  %shl416 = shl nuw nsw i32 %conv415, 5
  %and417 = and i32 %shl416, 7936
  %150 = lshr i32 %conv411, 3
  %and422 = and i32 %150, 16
  %or418 = or i32 %and422, %and413
  %or423 = or i32 %or418, %and417
  br label %if.end428

if.end428:                                        ; preds = %if.else391, %if.then354
  %or423.sink = phi i32 [ %or423, %if.else391 ], [ %or386, %if.then354 ]
  %no_data_x.0 = phi i32 [ 8176, %if.else391 ], [ 4088, %if.then354 ]
  %conv424 = trunc i32 %or423.sink to i16
  %arrayidx426 = getelementptr %struct.alps_fields, ptr %f, i32 0, i32 5, i32 3
  %151 = ptrtoint ptr %arrayidx426 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %conv424, ptr %arrayidx426, align 4
  %arrayidx429 = getelementptr i8, ptr %p, i32 1
  %152 = ptrtoint ptr %arrayidx429 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx429, align 1
  %conv430 = zext i8 %153 to i32
  %shl431 = shl nuw nsw i32 %conv430, 3
  %and432 = and i32 %shl431, 16
  %arrayidx433 = getelementptr i8, ptr %p, i32 2
  %154 = ptrtoint ptr %arrayidx433 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx433, align 1
  %conv434 = zext i8 %155 to i32
  %shl435 = shl nuw nsw i32 %conv434, 5
  %and436 = and i32 %shl435, 480
  %or437 = or i32 %and436, %and432
  %shl440 = shl nuw nsw i32 %conv434, 4
  %and441 = and i32 %shl440, 3584
  %or442 = or i32 %or437, %and441
  %156 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %p, align 1
  %158 = lshr i8 %157, 3
  %159 = and i8 %158, 8
  %and446 = zext i8 %159 to i32
  %or447 = or i32 %or442, %and446
  %conv448 = trunc i32 %or447 to i16
  %y451 = getelementptr %struct.alps_fields, ptr %f, i32 0, i32 5, i32 2, i32 1
  %160 = ptrtoint ptr %y451 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %conv448, ptr %y451, align 2
  %arrayidx452 = getelementptr i8, ptr %p, i32 4
  %161 = ptrtoint ptr %arrayidx452 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx452, align 1
  %conv453 = zext i8 %162 to i32
  %shl454 = shl nuw nsw i32 %conv453, 3
  %and455 = and i32 %shl454, 16
  %arrayidx456 = getelementptr i8, ptr %p, i32 5
  %163 = ptrtoint ptr %arrayidx456 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx456, align 1
  %conv457 = zext i8 %164 to i32
  %shl458 = shl nuw nsw i32 %conv457, 5
  %and459 = and i32 %shl458, 480
  %or460 = or i32 %and459, %and455
  %shl463 = shl nuw nsw i32 %conv457, 4
  %and464 = and i32 %shl463, 3584
  %or465 = or i32 %or460, %and464
  %165 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx.i, align 1
  %167 = lshr i8 %166, 3
  %168 = and i8 %167, 8
  %and469 = zext i8 %168 to i32
  %or470 = or i32 %or465, %and469
  br label %if.end584

if.else475:                                       ; preds = %sw.bb332
  br i1 %cmp479, label %land.lhs.true481, label %if.else475.if.else520_crit_edge

if.else475.if.else520_crit_edge:                  ; preds = %if.else475
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else520

land.lhs.true481:                                 ; preds = %if.else475
  %arrayidx483 = getelementptr %struct.alps_data, ptr %1, i32 0, i32 11, i32 1
  %169 = ptrtoint ptr %arrayidx483 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx483, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %170)
  %cmp485 = icmp eq i8 %170, 3
  br i1 %cmp485, label %land.lhs.true487, label %land.lhs.true481.if.else520_crit_edge

land.lhs.true481.if.else520_crit_edge:            ; preds = %land.lhs.true481
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else520

land.lhs.true487:                                 ; preds = %land.lhs.true481
  %arrayidx489 = getelementptr %struct.alps_data, ptr %1, i32 0, i32 11, i32 2
  %171 = ptrtoint ptr %arrayidx489 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx489, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %172)
  %cmp491 = icmp eq i8 %172, 40
  br i1 %cmp491, label %land.lhs.true487.if.end547_crit_edge, label %land.lhs.true487.if.else520_crit_edge

land.lhs.true487.if.else520_crit_edge:            ; preds = %land.lhs.true487
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else520

land.lhs.true487.if.end547_crit_edge:             ; preds = %land.lhs.true487
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end547

if.else520:                                       ; preds = %land.lhs.true487.if.else520_crit_edge, %land.lhs.true481.if.else520_crit_edge, %if.else475.if.else520_crit_edge
  br label %if.end547

if.end547:                                        ; preds = %if.else520, %land.lhs.true487.if.end547_crit_edge
  %.sink934 = phi i16 [ 5, %if.else520 ], [ 4, %land.lhs.true487.if.end547_crit_edge ]
  %.sink933 = phi i16 [ 224, %if.else520 ], [ 112, %land.lhs.true487.if.end547_crit_edge ]
  %.sink930 = phi i16 [ 7936, %if.else520 ], [ 3968, %land.lhs.true487.if.end547_crit_edge ]
  %no_data_x.1 = phi i32 [ 8160, %if.else520 ], [ 4080, %land.lhs.true487.if.end547_crit_edge ]
  %173 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %p, align 1
  %conv522 = zext i8 %174 to i16
  %shl523 = shl nuw nsw i16 %conv522, %.sink934
  %and524 = and i16 %shl523, %.sink933
  %arrayidx525 = getelementptr i8, ptr %p, i32 1
  %175 = ptrtoint ptr %arrayidx525 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx525, align 1
  %conv526 = zext i8 %176 to i16
  %shl527 = shl nuw nsw i16 %conv526, %.sink934
  %and528 = and i16 %shl527, %.sink930
  %or529 = or i16 %and528, %and524
  %arrayidx532 = getelementptr %struct.alps_fields, ptr %f, i32 0, i32 5, i32 2
  %177 = ptrtoint ptr %arrayidx532 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %or529, ptr %arrayidx532, align 4
  %178 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx.i, align 1
  %conv535 = zext i8 %179 to i16
  %shl536 = shl nuw nsw i16 %conv535, %.sink934
  %and537 = and i16 %shl536, %.sink933
  %arrayidx538 = getelementptr i8, ptr %p, i32 4
  %180 = ptrtoint ptr %arrayidx538 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx538, align 1
  %conv539 = zext i8 %181 to i16
  %shl540 = shl nuw nsw i16 %conv539, %.sink934
  %and541 = and i16 %shl540, %.sink930
  %or542 = or i16 %and541, %and537
  %arrayidx545 = getelementptr %struct.alps_fields, ptr %f, i32 0, i32 5, i32 3
  %182 = ptrtoint ptr %arrayidx545 to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %or542, ptr %arrayidx545, align 4
  %arrayidx548 = getelementptr i8, ptr %p, i32 1
  %183 = ptrtoint ptr %arrayidx548 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx548, align 1
  %conv549 = zext i8 %184 to i32
  %shl550 = shl nuw nsw i32 %conv549, 3
  %and551 = and i32 %shl550, 16
  %arrayidx552 = getelementptr i8, ptr %p, i32 2
  %185 = ptrtoint ptr %arrayidx552 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx552, align 1
  %conv553 = zext i8 %186 to i32
  %shl554 = shl nuw nsw i32 %conv553, 5
  %and555 = and i32 %shl554, 480
  %or556 = or i32 %and555, %and551
  %shl559 = shl nuw nsw i32 %conv553, 4
  %and560 = and i32 %shl559, 3584
  %or561 = or i32 %or556, %and560
  %conv562 = trunc i32 %or561 to i16
  %y565 = getelementptr %struct.alps_fields, ptr %f, i32 0, i32 5, i32 2, i32 1
  %187 = ptrtoint ptr %y565 to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %conv562, ptr %y565, align 2
  %arrayidx566 = getelementptr i8, ptr %p, i32 4
  %188 = ptrtoint ptr %arrayidx566 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx566, align 1
  %conv567 = zext i8 %189 to i32
  %shl568 = shl nuw nsw i32 %conv567, 3
  %and569 = and i32 %shl568, 16
  %arrayidx570 = getelementptr i8, ptr %p, i32 5
  %190 = ptrtoint ptr %arrayidx570 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx570, align 1
  %conv571 = zext i8 %191 to i32
  %shl572 = shl nuw nsw i32 %conv571, 5
  %and573 = and i32 %shl572, 480
  %or574 = or i32 %and573, %and569
  %shl577 = shl nuw nsw i32 %conv571, 4
  %and578 = and i32 %shl577, 3584
  %or579 = or i32 %or574, %and578
  br label %if.end584

if.end584:                                        ; preds = %if.end547, %if.end428
  %or579.sink = phi i32 [ %or579, %if.end547 ], [ %or470, %if.end428 ]
  %no_data_x.2 = phi i32 [ %no_data_x.1, %if.end547 ], [ %no_data_x.0, %if.end428 ]
  %no_data_y.0 = phi i32 [ 4080, %if.end547 ], [ 4088, %if.end428 ]
  %conv580 = trunc i32 %or579.sink to i16
  %y583 = getelementptr %struct.alps_fields, ptr %f, i32 0, i32 5, i32 3, i32 1
  %192 = ptrtoint ptr %y583 to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 %conv580, ptr %y583, align 2
  %first_mp585 = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 6
  %193 = ptrtoint ptr %first_mp585 to i32
  call void @__asan_load1_noabort(i32 %193)
  %bf.load586 = load i8, ptr %first_mp585, align 4
  %bf.clear591 = and i8 %bf.load586, 63
  %bf.set592 = or i8 %bf.clear591, 64
  store i8 %bf.set592, ptr %first_mp585, align 4
  %arrayidx593 = getelementptr i8, ptr %p, i32 2
  %194 = ptrtoint ptr %arrayidx593 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx593, align 1
  %196 = and i8 %195, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %cmp596.not = icmp eq i8 %196, 0
  br i1 %cmp596.not, label %if.else600, label %if.then598

if.then598:                                       ; preds = %if.end584
  call void @__sanitizer_cov_trace_pc() #15
  %fingers599 = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 2
  %197 = ptrtoint ptr %fingers599 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 5, ptr %fingers599, align 4
  br label %if.else680

if.else600:                                       ; preds = %if.end584
  %arrayidx602 = getelementptr %struct.alps_fields, ptr %f, i32 0, i32 5, i32 3
  %198 = ptrtoint ptr %arrayidx602 to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %arrayidx602, align 4
  %conv604 = sext i16 %199 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %no_data_x.2, i32 %conv604)
  %cmp605 = icmp eq i32 %no_data_x.2, %conv604
  br i1 %cmp605, label %land.lhs.true607, label %if.else600.if.else622_crit_edge

if.else600.if.else622_crit_edge:                  ; preds = %if.else600
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else622

land.lhs.true607:                                 ; preds = %if.else600
  %y610 = getelementptr %struct.alps_fields, ptr %f, i32 0, i32 5, i32 3, i32 1
  %200 = ptrtoint ptr %y610 to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %y610, align 2
  %conv611 = sext i16 %201 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %no_data_y.0, i32 %conv611)
  %cmp612 = icmp eq i32 %no_data_y.0, %conv611
  br i1 %cmp612, label %if.then614, label %land.lhs.true607.if.else622_crit_edge

land.lhs.true607.if.else622_crit_edge:            ; preds = %land.lhs.true607
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else622

if.then614:                                       ; preds = %land.lhs.true607
  call void @__sanitizer_cov_trace_pc() #15
  %202 = ptrtoint ptr %arrayidx602 to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 0, ptr %arrayidx602, align 4
  %203 = ptrtoint ptr %y610 to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 0, ptr %y610, align 2
  %fingers621 = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 2
  %204 = ptrtoint ptr %fingers621 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 3, ptr %fingers621, align 4
  br label %if.else680

if.else622:                                       ; preds = %land.lhs.true607.if.else622_crit_edge, %if.else600.if.else622_crit_edge
  %fingers623 = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 2
  %205 = ptrtoint ptr %fingers623 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 4, ptr %fingers623, align 4
  br label %if.else680

sw.default:                                       ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #15
  %206 = call ptr @memset(ptr %f, i32 0, i32 40)
  br label %if.else680

if.then638:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %first_mp627 = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 6
  %207 = ptrtoint ptr %first_mp627 to i32
  call void @__asan_load1_noabort(i32 %207)
  %bf.load628 = load i8, ptr %first_mp627, align 4
  %bf.clear633 = and i8 %bf.load628, 63
  store i8 %bf.clear633, ptr %first_mp627, align 4
  %208 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %p, align 1
  %210 = lshr i8 %209, 3
  %bf.shl = and i8 %210, 4
  %bf.clear647 = and i8 %bf.load628, 59
  %bf.set648 = or i8 %bf.shl, %bf.clear647
  store i8 %bf.set648, ptr %first_mp627, align 4
  %211 = load i8, ptr %p, align 1
  %212 = lshr i8 %211, 5
  %bf.shl661 = and i8 %212, 2
  %bf.clear662 = and i8 %bf.set648, 61
  %bf.set663 = or i8 %bf.clear662, %bf.shl661
  store i8 %bf.set663, ptr %first_mp627, align 4
  %213 = load i8, ptr %p, align 1
  %.lobit896 = lshr i8 %213, 7
  %bf.clear677 = and i8 %bf.set663, 62
  %bf.set678 = or i8 %bf.clear677, %.lobit896
  store i8 %bf.set678, ptr %first_mp627, align 4
  br label %if.end734

if.else680:                                       ; preds = %sw.default, %if.else622, %if.then614, %if.then598, %if.end327, %sw.bb
  %214 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %p, align 1
  %left = getelementptr inbounds %struct.alps_fields, ptr %f, i32 0, i32 6
  %.lobit = and i8 %215, 32
  %216 = ptrtoint ptr %left to i32
  call void @__asan_load1_noabort(i32 %216)
  %bf.load691 = load i8, ptr %left, align 4
  %bf.clear694 = and i8 %bf.load691, -33
  %bf.set695 = or i8 %bf.clear694, %.lobit
  store i8 %bf.set695, ptr %left, align 4
  %flags697 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 13
  %217 = ptrtoint ptr %flags697 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %flags697, align 4
  %and698 = and i32 %218, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and698)
  %tobool699.not = icmp eq i32 %and698, 0
  br i1 %tobool699.not, label %if.then700, label %if.else680.if.end734_crit_edge

if.else680.if.end734_crit_edge:                   ; preds = %if.else680
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end734

if.then700:                                       ; preds = %if.else680
  call void @__sanitizer_cov_trace_pc() #15
  %219 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %p, align 1
  %221 = lshr i8 %220, 2
  %bf.shl713 = and i8 %221, 16
  %bf.clear714 = and i8 %bf.set695, -17
  %bf.set715 = or i8 %bf.shl713, %bf.clear714
  %222 = ptrtoint ptr %left to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %bf.set715, ptr %left, align 4
  %223 = load i8, ptr %p, align 1
  %224 = lshr i8 %223, 4
  %bf.shl729 = and i8 %224, 8
  %bf.clear730 = and i8 %bf.set715, -9
  %bf.set731 = or i8 %bf.clear730, %bf.shl729
  store i8 %bf.set731, ptr %left, align 4
  br label %if.end734

if.end734:                                        ; preds = %if.then700, %if.else680.if.end734_crit_edge, %if.then638
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alps_set_abs_params_ss4_v2(ptr nocapture noundef readonly %priv, ptr noundef %dev1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @alps_set_abs_params_mt_common(ptr noundef %priv, ptr noundef %dev1)
  tail call void @input_set_abs_params(ptr noundef %dev1, i32 noundef 24, i32 noundef 0, i32 noundef 127, i32 noundef 0, i32 noundef 0) #13
  %keybit = getelementptr inbounds %struct.input_dev, ptr %dev1, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 328, ptr noundef %keybit) #13
  %call = tail call i32 @input_mt_init_slots(ptr noundef %dev1, i32 noundef 4, i32 noundef 13) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alps_setup_trackstick_v3(ptr noundef %psmouse, i32 noundef %reg_base) unnamed_addr #0 align 64 {
entry:
  %dummy.i9.i = alloca [4 x i8], align 4
  %dummy.i.i = alloca [4 x i8], align 4
  %param.i.i = alloca [4 x i8], align 4
  %param.i = alloca [4 x i8], align 4
  %param = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #13
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %param, align 4
  %call = tail call fastcc i32 @alps_passthrough_mode_v3(ptr noundef %psmouse, i32 noundef %reg_base, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @alps_rpt_cmd(ptr noundef %psmouse, i32 noundef 0, i32 noundef 231, ptr noundef nonnull %param)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.body4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %1 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %2, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.57) #16
  br label %if.end27

do.body4:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alps_setup_trackstick_v3.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alps_setup_trackstick_v3, %if.then9)) #13
          to label %do.end16 [label %if.then9], !srcloc !199

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #15
  %ps2dev10 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %3 = ptrtoint ptr %ps2dev10 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ps2dev10, align 4
  %dev12 = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alps_setup_trackstick_v3.__UNIQUE_ID_ddebug243, ptr noundef %dev12, ptr noundef nonnull @.str.59, ptr noundef nonnull %param) #13
  br label %do.end16

do.end16:                                         ; preds = %if.then9, %do.body4
  %call17 = call fastcc i32 @alps_trackstick_enter_extended_mode_v3_v6(ptr noundef %psmouse)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.end16.if.end27_crit_edge, label %do.end22

do.end16.if.end27_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

do.end22:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #15
  %ps2dev23 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %5 = ptrtoint ptr %ps2dev23 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ps2dev23, align 4
  %dev25 = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.61) #16
  br label %if.end27

if.end27:                                         ; preds = %do.end22, %do.end16.if.end27_crit_edge, %do.end
  %tobool32.not = phi i1 [ false, %do.end16.if.end27_crit_edge ], [ true, %do.end22 ], [ true, %do.end ]
  %ret.0 = phi i32 [ 0, %do.end16.if.end27_crit_edge ], [ -5, %do.end22 ], [ -19, %do.end ]
  %call28 = call fastcc i32 @alps_passthrough_mode_v3(ptr noundef %psmouse, i32 noundef %reg_base, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp ne i32 %call28, 0
  %brmerge = or i1 %tobool32.not, %tobool29.not
  %.mux = select i1 %tobool29.not, i32 -5, i32 %ret.0
  br i1 %brmerge, label %if.end27.cleanup_crit_edge, label %if.end34

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end34:                                         ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i) #13
  %7 = getelementptr inbounds [4 x i8], ptr %param.i, i32 0, i32 1
  %8 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %param.i, align 4
  %call.i = call fastcc i32 @alps_rpt_cmd(ptr noundef %psmouse, i32 noundef 0, i32 noundef 236, ptr noundef nonnull %param.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %9 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ps2dev.i, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.63) #16
  br label %alps_enter_command_mode.exit

if.end.i:                                         ; preds = %if.end34
  %11 = ptrtoint ptr %param.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %param.i, align 4
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.91)
  switch i8 %12, label %if.end.i.do.body4.i_crit_edge [
    i8 115, label %if.end.i.if.end38_crit_edge
    i8 -120, label %land.lhs.true.i.i
  ]

if.end.i.if.end38_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.end.i.do.body4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %7, align 1
  %.off.i.i = add i8 %15, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i.i)
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  %16 = add i8 %15, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %16)
  %switch.selectcmp.i.i = icmp ult i8 %16, 32
  %or.cond.i = or i1 %switch.i.i, %switch.selectcmp.i.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.if.end38_crit_edge, label %land.lhs.true.i.i.do.body4.i_crit_edge

land.lhs.true.i.i.do.body4.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4.i

land.lhs.true.i.i.if.end38_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

do.body4.i:                                       ; preds = %land.lhs.true.i.i.do.body4.i_crit_edge, %if.end.i.do.body4.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alps_enter_command_mode.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alps_setup_trackstick_v3, %if.then9.i)) #13
          to label %alps_enter_command_mode.exit [label %if.then9.i], !srcloc !199

if.then9.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  %ps2dev10.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %17 = ptrtoint ptr %ps2dev10.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ps2dev10.i, align 4
  %dev12.i = getelementptr inbounds %struct.serio, ptr %18, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alps_enter_command_mode.__UNIQUE_ID_ddebug242, ptr noundef %dev12.i, ptr noundef nonnull @.str.65) #13
  br label %alps_enter_command_mode.exit

alps_enter_command_mode.exit:                     ; preds = %if.then9.i, %do.body4.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #13
  br label %cleanup

if.end38:                                         ; preds = %land.lhs.true.i.i.if.end38_crit_edge, %if.end.i.if.end38_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #13
  %add = add i32 %reg_base, 8
  %call.i70 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %psmouse, i32 noundef %add) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool.not.i71 = icmp eq i32 %call.i70, 0
  br i1 %tobool.not.i71, label %if.end.i72, label %if.end38.if.end46_crit_edge

if.end38.if.end46_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.end.i72:                                       ; preds = %if.end38
  %ps2dev1.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i.i) #13
  %19 = getelementptr inbounds [4 x i8], ptr %param.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %param.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %param.i.i, align 4
  %call.i.i = call i32 @ps2_command(ptr noundef %ps2dev1.i.i, ptr noundef nonnull %param.i.i, i32 noundef 1001) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i72.alps_command_mode_read_reg.exit.thread86_crit_edge

if.end.i72.alps_command_mode_read_reg.exit.thread86_crit_edge: ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit.thread86

if.end.i.i:                                       ; preds = %if.end.i72
  %21 = getelementptr inbounds [4 x i8], ptr %param.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %param.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %param.i.i, align 4
  %conv.i.i = zext i8 %23 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %21, align 1
  %conv3.i.i = zext i8 %25 to i32
  %or.i.i = or i32 %shl.i.i, %conv3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %add)
  %cmp.not.i.i = icmp eq i32 %or.i.i, %add
  br i1 %cmp.not.i.i, label %alps_command_mode_read_reg.exit, label %if.end.i.i.alps_command_mode_read_reg.exit.thread86_crit_edge

if.end.i.i.alps_command_mode_read_reg.exit.thread86_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit.thread86

alps_command_mode_read_reg.exit.thread86:         ; preds = %if.end.i.i.alps_command_mode_read_reg.exit.thread86_crit_edge, %if.end.i72.alps_command_mode_read_reg.exit.thread86_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i) #13
  br label %if.end46

alps_command_mode_read_reg.exit:                  ; preds = %if.end.i.i
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %19, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i) #13
  %conv = or i8 %27, 2
  %conv.i = zext i8 %conv to i32
  %28 = lshr i32 %conv.i, 4
  %29 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #13
  %nibble_commands.i.i = getelementptr inbounds %struct.alps_data, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %dummy.i.i, align 4
  %32 = ptrtoint ptr %nibble_commands.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nibble_commands.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.alps_nibble_commands, ptr %33, i32 %28
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %35, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool10.not.i.i = icmp eq i32 %and.i.i, 0
  %data.i.i = getelementptr %struct.alps_nibble_commands, ptr %33, i32 %28, i32 1
  %cond.i.i = select i1 %tobool10.not.i.i, ptr %data.i.i, ptr %dummy.i.i
  %call.i.i75 = call i32 @ps2_command(ptr noundef %ps2dev1.i.i, ptr noundef %cond.i.i, i32 noundef %35) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i75)
  %tobool13.not.i.not.i = icmp eq i32 %call.i.i75, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #13
  br i1 %tobool13.not.i.not.i, label %__alps_command_mode_write_reg.exit, label %alps_command_mode_read_reg.exit.if.end46_crit_edge

alps_command_mode_read_reg.exit.if.end46_crit_edge: ; preds = %alps_command_mode_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

__alps_command_mode_write_reg.exit:               ; preds = %alps_command_mode_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  %and2.i = and i32 %conv.i, 15
  %36 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i9.i) #13
  %nibble_commands.i11.i = getelementptr inbounds %struct.alps_data, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %dummy.i9.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %dummy.i9.i, align 4
  %39 = ptrtoint ptr %nibble_commands.i11.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %nibble_commands.i11.i, align 4
  %arrayidx.i12.i = getelementptr %struct.alps_nibble_commands, ptr %40, i32 %and2.i
  %41 = ptrtoint ptr %arrayidx.i12.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i12.i, align 4
  %and.i13.i = and i32 %42, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool10.not.i14.i = icmp eq i32 %and.i13.i, 0
  %data.i15.i = getelementptr %struct.alps_nibble_commands, ptr %40, i32 %and2.i, i32 1
  %cond.i16.i = select i1 %tobool10.not.i14.i, ptr %data.i15.i, ptr %dummy.i9.i
  %call.i17.i = call i32 @ps2_command(ptr noundef %ps2dev1.i.i, ptr noundef %cond.i16.i, i32 noundef %42) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %tobool13.not.i18.not.i.not = icmp eq i32 %call.i17.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i9.i) #13
  %spec.select = select i1 %tobool13.not.i18.not.i.not, i32 0, i32 -5
  br label %if.end46

if.end46:                                         ; preds = %__alps_command_mode_write_reg.exit, %alps_command_mode_read_reg.exit.if.end46_crit_edge, %alps_command_mode_read_reg.exit.thread86, %if.end38.if.end46_crit_edge
  %ret.1 = phi i32 [ -5, %alps_command_mode_read_reg.exit.thread86 ], [ -5, %if.end38.if.end46_crit_edge ], [ -5, %alps_command_mode_read_reg.exit.if.end46_crit_edge ], [ %spec.select, %__alps_command_mode_write_reg.exit ]
  %ps2dev1.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call.i78 = call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef null, i32 noundef 234) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool.not.i79.not = icmp eq i32 %call.i78, 0
  %ret.1. = select i1 %tobool.not.i79.not, i32 %ret.1, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %alps_enter_command_mode.exit, %if.end27.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %.mux, %if.end27.cleanup_crit_edge ], [ -5, %alps_enter_command_mode.exit ], [ %ret.1., %if.end46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alps_enter_command_mode(ptr noundef %psmouse) unnamed_addr #0 align 64 {
entry:
  %param = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #13
  %0 = getelementptr inbounds [4 x i8], ptr %param, i32 0, i32 1
  %1 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %param, align 4
  %call = call fastcc i32 @alps_rpt_cmd(ptr noundef %psmouse, i32 noundef 0, i32 noundef 236, ptr noundef nonnull %param)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %2 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %param, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %5, label %if.end.do.body4_crit_edge [
    i8 115, label %if.end.cleanup_crit_edge
    i8 -120, label %land.lhs.true.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.do.body4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4

land.lhs.true.i:                                  ; preds = %if.end
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %0, align 1
  %.off.i = add i8 %8, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  %9 = add i8 %8, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %9)
  %switch.selectcmp.i = icmp ult i8 %9, 32
  %or.cond = or i1 %switch.i, %switch.selectcmp.i
  br i1 %or.cond, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.do.body4_crit_edge

land.lhs.true.i.do.body4_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body4:                                         ; preds = %land.lhs.true.i.do.body4_crit_edge, %if.end.do.body4_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alps_enter_command_mode.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alps_enter_command_mode, %if.then9)) #13
          to label %cleanup [label %if.then9], !srcloc !199

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #15
  %ps2dev10 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %10 = ptrtoint ptr %ps2dev10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ps2dev10, align 4
  %dev12 = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alps_enter_command_mode.__UNIQUE_ID_ddebug242, ptr noundef %dev12, ptr noundef nonnull @.str.65) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %do.body4, %land.lhs.true.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %if.then9 ], [ -1, %do.body4 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alps_command_mode_read_reg(ptr noundef %psmouse, i32 noundef %addr) unnamed_addr #0 align 64 {
entry:
  %param.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @alps_command_mode_set_addr(ptr noundef %psmouse, i32 noundef %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %ps2dev1.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i) #13
  %0 = getelementptr inbounds [4 x i8], ptr %param.i, i32 0, i32 2
  %1 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %param.i, align 4
  %call.i = call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef nonnull %param.i, i32 noundef 1001) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.__alps_command_mode_read_reg.exit_crit_edge

if.end.__alps_command_mode_read_reg.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %__alps_command_mode_read_reg.exit

if.end.i:                                         ; preds = %if.end
  %2 = getelementptr inbounds [4 x i8], ptr %param.i, i32 0, i32 1
  %3 = ptrtoint ptr %param.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %param.i, align 4
  %conv.i = zext i8 %4 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %2, align 1
  %conv3.i = zext i8 %6 to i32
  %or.i = or i32 %shl.i, %conv3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %addr)
  %cmp.not.i = icmp eq i32 %or.i, %addr
  br i1 %cmp.not.i, label %if.end6.i, label %if.end.i.__alps_command_mode_read_reg.exit_crit_edge

if.end.i.__alps_command_mode_read_reg.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__alps_command_mode_read_reg.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %0, align 2
  %conv8.i = zext i8 %8 to i32
  br label %__alps_command_mode_read_reg.exit

__alps_command_mode_read_reg.exit:                ; preds = %if.end6.i, %if.end.i.__alps_command_mode_read_reg.exit_crit_edge, %if.end.__alps_command_mode_read_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %conv8.i, %if.end6.i ], [ -1, %if.end.__alps_command_mode_read_reg.exit_crit_edge ], [ -1, %if.end.i.__alps_command_mode_read_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #13
  br label %return

return:                                           ; preds = %__alps_command_mode_read_reg.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %__alps_command_mode_read_reg.exit ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__alps_command_mode_write_reg(ptr noundef %psmouse, i8 noundef zeroext %value) unnamed_addr #0 align 64 {
entry:
  %dummy.i9 = alloca [4 x i8], align 4
  %dummy.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %value to i32
  %0 = lshr i32 %conv, 4
  %ps2dev1.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %1 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #13
  %nibble_commands.i = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %dummy.i, align 4
  %4 = ptrtoint ptr %nibble_commands.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nibble_commands.i, align 4
  %arrayidx.i = getelementptr %struct.alps_nibble_commands, ptr %5, i32 %0
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %7, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  %data.i = getelementptr %struct.alps_nibble_commands, ptr %5, i32 %0, i32 1
  %cond.i = select i1 %tobool10.not.i, ptr %data.i, ptr %dummy.i
  %call.i = call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef %cond.i, i32 noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not.i.not = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #13
  br i1 %tobool13.not.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %and2 = and i32 %conv, 15
  %8 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i9) #13
  %nibble_commands.i11 = getelementptr inbounds %struct.alps_data, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %dummy.i9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %dummy.i9, align 4
  %11 = ptrtoint ptr %nibble_commands.i11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nibble_commands.i11, align 4
  %arrayidx.i12 = getelementptr %struct.alps_nibble_commands, ptr %12, i32 %and2
  %13 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i12, align 4
  %and.i13 = and i32 %14, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13)
  %tobool10.not.i14 = icmp eq i32 %and.i13, 0
  %data.i15 = getelementptr %struct.alps_nibble_commands, ptr %12, i32 %and2, i32 1
  %cond.i16 = select i1 %tobool10.not.i14, ptr %data.i15, ptr %dummy.i9
  %call.i17 = call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef %cond.i16, i32 noundef %14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool13.not.i18.not = icmp ne i32 %call.i17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i9) #13
  %. = sext i1 %tobool13.not.i18.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alps_command_mode_write_reg(ptr noundef %psmouse, i32 noundef %addr, i8 noundef zeroext %value) unnamed_addr #0 align 64 {
entry:
  %dummy.i9.i = alloca [4 x i8], align 4
  %dummy.i.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @alps_command_mode_set_addr(ptr noundef %psmouse, i32 noundef %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %conv.i = zext i8 %value to i32
  %0 = lshr i32 %conv.i, 4
  %ps2dev1.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %1 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #13
  %nibble_commands.i.i = getelementptr inbounds %struct.alps_data, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %dummy.i.i, align 4
  %4 = ptrtoint ptr %nibble_commands.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nibble_commands.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.alps_nibble_commands, ptr %5, i32 %0
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %7, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool10.not.i.i = icmp eq i32 %and.i.i, 0
  %data.i.i = getelementptr %struct.alps_nibble_commands, ptr %5, i32 %0, i32 1
  %cond.i.i = select i1 %tobool10.not.i.i, ptr %data.i.i, ptr %dummy.i.i
  %call.i.i = call i32 @ps2_command(ptr noundef %ps2dev1.i.i, ptr noundef %cond.i.i, i32 noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool13.not.i.not.i = icmp eq i32 %call.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #13
  br i1 %tobool13.not.i.not.i, label %if.end.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %and2.i = and i32 %conv.i, 15
  %8 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i9.i) #13
  %nibble_commands.i11.i = getelementptr inbounds %struct.alps_data, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %dummy.i9.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %dummy.i9.i, align 4
  %11 = ptrtoint ptr %nibble_commands.i11.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nibble_commands.i11.i, align 4
  %arrayidx.i12.i = getelementptr %struct.alps_nibble_commands, ptr %12, i32 %and2.i
  %13 = ptrtoint ptr %arrayidx.i12.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i12.i, align 4
  %and.i13.i = and i32 %14, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool10.not.i14.i = icmp eq i32 %and.i13.i, 0
  %data.i15.i = getelementptr %struct.alps_nibble_commands, ptr %12, i32 %and2.i, i32 1
  %cond.i16.i = select i1 %tobool10.not.i14.i, ptr %data.i15.i, ptr %dummy.i9.i
  %call.i17.i = call i32 @ps2_command(ptr noundef %ps2dev1.i.i, ptr noundef %cond.i16.i, i32 noundef %14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %tobool13.not.i18.not.i = icmp ne i32 %call.i17.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i9.i) #13
  %..i = sext i1 %tobool13.not.i18.not.i to i32
  br label %return

return:                                           ; preds = %if.end.i, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %entry.return_crit_edge ], [ -1, %if.end.return_crit_edge ], [ %..i, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alps_passthrough_mode_v3(ptr noundef %psmouse, i32 noundef %reg_base, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  %dummy.i9.i = alloca [4 x i8], align 4
  %dummy.i.i = alloca [4 x i8], align 4
  %param.i.i = alloca [4 x i8], align 4
  %param.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i) #13
  %0 = getelementptr inbounds [4 x i8], ptr %param.i, i32 0, i32 1
  %1 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %param.i, align 4
  %call.i = call fastcc i32 @alps_rpt_cmd(ptr noundef %psmouse, i32 noundef 0, i32 noundef 236, ptr noundef nonnull %param.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %2 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps2dev.i, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.63) #16
  br label %alps_enter_command_mode.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %param.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %param.i, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %5, label %if.end.i.do.body4.i_crit_edge [
    i8 115, label %if.end.i.if.end_crit_edge
    i8 -120, label %land.lhs.true.i.i
  ]

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i.do.body4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %0, align 1
  %.off.i.i = add i8 %8, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i.i)
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  %9 = add i8 %8, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %9)
  %switch.selectcmp.i.i = icmp ult i8 %9, 32
  %or.cond.i = or i1 %switch.i.i, %switch.selectcmp.i.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.if.end_crit_edge, label %land.lhs.true.i.i.do.body4.i_crit_edge

land.lhs.true.i.i.do.body4.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4.i

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.body4.i:                                       ; preds = %land.lhs.true.i.i.do.body4.i_crit_edge, %if.end.i.do.body4.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alps_enter_command_mode.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alps_passthrough_mode_v3, %if.then9.i)) #13
          to label %alps_enter_command_mode.exit [label %if.then9.i], !srcloc !199

if.then9.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  %ps2dev10.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %10 = ptrtoint ptr %ps2dev10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ps2dev10.i, align 4
  %dev12.i = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alps_enter_command_mode.__UNIQUE_ID_ddebug242, ptr noundef %dev12.i, ptr noundef nonnull @.str.65) #13
  br label %alps_enter_command_mode.exit

alps_enter_command_mode.exit:                     ; preds = %if.then9.i, %do.body4.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #13
  %add = add i32 %reg_base, 8
  %call.i19 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %psmouse, i32 noundef %add) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool.not.i20 = icmp eq i32 %call.i19, 0
  br i1 %tobool.not.i20, label %if.end.i21, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end.i21:                                       ; preds = %if.end
  %ps2dev1.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i.i) #13
  %12 = getelementptr inbounds [4 x i8], ptr %param.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %param.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %param.i.i, align 4
  %call.i.i = call i32 @ps2_command(ptr noundef %ps2dev1.i.i, ptr noundef nonnull %param.i.i, i32 noundef 1001) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i21.alps_command_mode_read_reg.exit.thread34_crit_edge

if.end.i21.alps_command_mode_read_reg.exit.thread34_crit_edge: ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit.thread34

if.end.i.i:                                       ; preds = %if.end.i21
  %14 = getelementptr inbounds [4 x i8], ptr %param.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %param.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %param.i.i, align 4
  %conv.i.i = zext i8 %16 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %14, align 1
  %conv3.i.i = zext i8 %18 to i32
  %or.i.i = or i32 %shl.i.i, %conv3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %add)
  %cmp.not.i.i = icmp eq i32 %or.i.i, %add
  br i1 %cmp.not.i.i, label %alps_command_mode_read_reg.exit, label %if.end.i.i.alps_command_mode_read_reg.exit.thread34_crit_edge

if.end.i.i.alps_command_mode_read_reg.exit.thread34_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit.thread34

alps_command_mode_read_reg.exit.thread34:         ; preds = %if.end.i.i.alps_command_mode_read_reg.exit.thread34_crit_edge, %if.end.i21.alps_command_mode_read_reg.exit.thread34_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i) #13
  br label %error

alps_command_mode_read_reg.exit:                  ; preds = %if.end.i.i
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %12, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i) #13
  %and = and i8 %20, -2
  %masksel = zext i1 %enable to i8
  %reg_val.0 = or i8 %and, %masksel
  %conv.i = zext i8 %reg_val.0 to i32
  %21 = lshr i32 %conv.i, 4
  %22 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #13
  %nibble_commands.i.i = getelementptr inbounds %struct.alps_data, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %dummy.i.i, align 4
  %25 = ptrtoint ptr %nibble_commands.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nibble_commands.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.alps_nibble_commands, ptr %26, i32 %21
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %28, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool10.not.i.i = icmp eq i32 %and.i.i, 0
  %data.i.i = getelementptr %struct.alps_nibble_commands, ptr %26, i32 %21, i32 1
  %cond.i.i = select i1 %tobool10.not.i.i, ptr %data.i.i, ptr %dummy.i.i
  %call.i.i24 = call i32 @ps2_command(ptr noundef %ps2dev1.i.i, ptr noundef %cond.i.i, i32 noundef %28) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24)
  %tobool13.not.i.not.i = icmp eq i32 %call.i.i24, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #13
  br i1 %tobool13.not.i.not.i, label %if.end.i25, label %alps_command_mode_read_reg.exit.error_crit_edge

alps_command_mode_read_reg.exit.error_crit_edge:  ; preds = %alps_command_mode_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end.i25:                                       ; preds = %alps_command_mode_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  %and2.i = and i32 %conv.i, 15
  %29 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i9.i) #13
  %nibble_commands.i11.i = getelementptr inbounds %struct.alps_data, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %dummy.i9.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %dummy.i9.i, align 4
  %32 = ptrtoint ptr %nibble_commands.i11.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nibble_commands.i11.i, align 4
  %arrayidx.i12.i = getelementptr %struct.alps_nibble_commands, ptr %33, i32 %and2.i
  %34 = ptrtoint ptr %arrayidx.i12.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i12.i, align 4
  %and.i13.i = and i32 %35, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool10.not.i14.i = icmp eq i32 %and.i13.i, 0
  %data.i15.i = getelementptr %struct.alps_nibble_commands, ptr %33, i32 %and2.i, i32 1
  %cond.i16.i = select i1 %tobool10.not.i14.i, ptr %data.i15.i, ptr %dummy.i9.i
  %call.i17.i = call i32 @ps2_command(ptr noundef %ps2dev1.i.i, ptr noundef %cond.i16.i, i32 noundef %35) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %tobool13.not.i18.not.i = icmp ne i32 %call.i17.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i9.i) #13
  %..i = sext i1 %tobool13.not.i18.not.i to i32
  br label %error

error:                                            ; preds = %if.end.i25, %alps_command_mode_read_reg.exit.error_crit_edge, %alps_command_mode_read_reg.exit.thread34, %if.end.error_crit_edge
  %ret.0 = phi i32 [ -1, %alps_command_mode_read_reg.exit.thread34 ], [ -1, %alps_command_mode_read_reg.exit.error_crit_edge ], [ %..i, %if.end.i25 ], [ -1, %if.end.error_crit_edge ]
  %ps2dev1.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call.i27 = call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef null, i32 noundef 234) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool.not.i28.not = icmp eq i32 %call.i27, 0
  %spec.select = select i1 %tobool.not.i28.not, i32 %ret.0, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %error, %alps_enter_command_mode.exit
  %retval.0 = phi i32 [ %spec.select, %error ], [ -1, %alps_enter_command_mode.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alps_trackstick_enter_extended_mode_v3_v6(ptr noundef %psmouse) unnamed_addr #0 align 64 {
entry:
  %param = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %param) #13
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -14316, ptr %param, align 2
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call = tail call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef null, i32 noundef 230) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef null, i32 noundef 230) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call6 = tail call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef null, i32 noundef 230) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %call10 = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %param, i32 noundef 4339) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx14 = getelementptr inbounds [2 x i8], ptr %param, i32 0, i32 1
  %call15 = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef %arrayidx14, i32 noundef 4339) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp ne i32 %call15, 0
  %spec.select = sext i1 %tobool16.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false12, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %lor.lhs.false8.cleanup_crit_edge ], [ -1, %lor.lhs.false4.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false12 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %param) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alps_command_mode_set_addr(ptr noundef %psmouse, i32 noundef %addr) unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %addr_command = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %addr_command to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr_command, align 4
  %call = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %4 = lshr i32 %addr, 12
  %and = and i32 %4, 15
  %5 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #13
  %nibble_commands.i = getelementptr inbounds %struct.alps_data, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %dummy.i, align 4
  %8 = ptrtoint ptr %nibble_commands.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nibble_commands.i, align 4
  %arrayidx.i = getelementptr %struct.alps_nibble_commands, ptr %9, i32 %and
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %11, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  %data.i = getelementptr %struct.alps_nibble_commands, ptr %9, i32 %and, i32 1
  %cond.i = select i1 %tobool10.not.i, ptr %data.i, ptr %dummy.i
  %call.i = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %cond.i, i32 noundef %11) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not.i.not = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #13
  br i1 %tobool13.not.i.not, label %for.cond, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %12 = lshr i32 %addr, 8
  %and.1 = and i32 %12, 15
  %13 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #13
  %nibble_commands.i.1 = getelementptr inbounds %struct.alps_data, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %dummy.i, align 4
  %16 = ptrtoint ptr %nibble_commands.i.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nibble_commands.i.1, align 4
  %arrayidx.i.1 = getelementptr %struct.alps_nibble_commands, ptr %17, i32 %and.1
  %18 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.1, align 4
  %and.i.1 = and i32 %19, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool10.not.i.1 = icmp eq i32 %and.i.1, 0
  %data.i.1 = getelementptr %struct.alps_nibble_commands, ptr %17, i32 %and.1, i32 1
  %cond.i.1 = select i1 %tobool10.not.i.1, ptr %data.i.1, ptr %dummy.i
  %call.i.1 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %cond.i.1, i32 noundef %19) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool13.not.i.not.1 = icmp eq i32 %call.i.1, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #13
  br i1 %tobool13.not.i.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %20 = lshr i32 %addr, 4
  %and.2 = and i32 %20, 15
  %21 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #13
  %nibble_commands.i.2 = getelementptr inbounds %struct.alps_data, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %dummy.i, align 4
  %24 = ptrtoint ptr %nibble_commands.i.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nibble_commands.i.2, align 4
  %arrayidx.i.2 = getelementptr %struct.alps_nibble_commands, ptr %25, i32 %and.2
  %26 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.2, align 4
  %and.i.2 = and i32 %27, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2)
  %tobool10.not.i.2 = icmp eq i32 %and.i.2, 0
  %data.i.2 = getelementptr %struct.alps_nibble_commands, ptr %25, i32 %and.2, i32 1
  %cond.i.2 = select i1 %tobool10.not.i.2, ptr %data.i.2, ptr %dummy.i
  %call.i.2 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %cond.i.2, i32 noundef %27) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool13.not.i.not.2 = icmp eq i32 %call.i.2, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #13
  br i1 %tobool13.not.i.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #15
  %and.3 = and i32 %addr, 15
  %28 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #13
  %nibble_commands.i.3 = getelementptr inbounds %struct.alps_data, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %dummy.i, align 4
  %31 = ptrtoint ptr %nibble_commands.i.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nibble_commands.i.3, align 4
  %arrayidx.i.3 = getelementptr %struct.alps_nibble_commands, ptr %32, i32 %and.3
  %33 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.3, align 4
  %and.i.3 = and i32 %34, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3)
  %tobool10.not.i.3 = icmp eq i32 %and.i.3, 0
  %data.i.3 = getelementptr %struct.alps_nibble_commands, ptr %32, i32 %and.3, i32 1
  %cond.i.3 = select i1 %tobool10.not.i.3, ptr %data.i.3, ptr %dummy.i
  %call.i.3 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef %cond.i.3, i32 noundef %34) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool13.not.i.not.3 = icmp ne i32 %call.i.3, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #13
  %spec.select = sext i1 %tobool13.not.i.not.3 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %for.body.preheader.cleanup_crit_edge ], [ -1, %for.cond.cleanup_crit_edge ], [ -1, %for.cond.1.cleanup_crit_edge ], [ %spec.select, %for.cond.2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alps_process_trackstick_packet_v3(ptr nocapture noundef readonly %psmouse) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %dev2 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %flags = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %6 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ps2dev, align 4
  %dev3 = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.66) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %packet1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %8 = ptrtoint ptr %packet1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %packet1, align 1
  %10 = and i8 %9, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  br i1 %tobool5.not, label %do.body7, label %if.end18

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alps_process_trackstick_packet_v3.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alps_process_trackstick_packet_v3, %if.then11)) #13
          to label %cleanup [label %if.then11], !srcloc !199

if.then11:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  %ps2dev12 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %11 = ptrtoint ptr %ps2dev12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ps2dev12, align 4
  %dev14 = getelementptr inbounds %struct.serio, ptr %12, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alps_process_trackstick_packet_v3.__UNIQUE_ID_ddebug233, ptr noundef %dev14, ptr noundef nonnull @.str.68) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %arrayidx19 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %14)
  %cmp = icmp eq i8 %14, 127
  br i1 %cmp, label %land.lhs.true, label %if.end18.if.end32_crit_edge

if.end18.if.end32_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end18
  %arrayidx22 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %16)
  %cmp24 = icmp eq i8 %16, 127
  br i1 %cmp24, label %land.lhs.true26, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

land.lhs.true26:                                  ; preds = %land.lhs.true
  %arrayidx27 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %17 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %18)
  %cmp29 = icmp eq i8 %18, 127
  br i1 %cmp29, label %land.lhs.true26.cleanup_crit_edge, label %land.lhs.true26.if.end32_crit_edge

land.lhs.true26.if.end32_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

land.lhs.true26.cleanup_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end32:                                         ; preds = %land.lhs.true26.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge, %if.end18.if.end32_crit_edge
  %and35 = shl i8 %9, 2
  %shl = and i8 %and35, -128
  %19 = and i8 %14, 127
  %or = or i8 %19, %shl
  %20 = shl i8 %9, 3
  %21 = and i8 %20, -128
  %arrayidx45 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %22 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx45, align 1
  %24 = and i8 %23, 127
  %or48121 = or i8 %24, %21
  %arrayidx51 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %25 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx51, align 1
  %27 = and i8 %26, 127
  %and53 = zext i8 %27 to i32
  %28 = sdiv i8 %or, 8
  %div = sext i8 %28 to i32
  %.neg = sdiv i8 %or48121, -8
  tail call void @input_event(ptr noundef %3, i32 noundef 2, i32 noundef 0, i32 noundef %div) #13
  %sub = sext i8 %.neg to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 2, i32 noundef 1, i32 noundef %sub) #13
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 24, i32 noundef %and53) #13
  %arrayidx55 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %29 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %30 to i32
  %and57 = and i32 %conv56, 1
  %quirks = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 29
  %31 = ptrtoint ptr %quirks to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %quirks, align 4
  %33 = and i8 %32, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool66.not = icmp ne i8 %33, 0
  %34 = and i32 %conv56, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %35 = icmp eq i32 %34, 0
  %or.cond = select i1 %tobool66.not, i1 true, i1 %35
  br i1 %or.cond, label %if.end32.if.end77_crit_edge, label %if.then72

if.end32.if.end77_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

if.then72:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %36 = or i8 %32, 1
  %37 = ptrtoint ptr %quirks to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %quirks, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then72, %if.end32.if.end77_crit_edge
  %38 = ptrtoint ptr %quirks to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %quirks, align 4
  %40 = and i8 %39, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool81.not = icmp eq i8 %40, 0
  br i1 %tobool81.not, label %if.end77.if.end83_crit_edge, label %if.then82

if.end77.if.end83_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

if.then82:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 272, i32 noundef %and57) #13
  %and60 = lshr i32 %conv56, 1
  %and60.lobit = and i32 %and60, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 273, i32 noundef %and60.lobit) #13
  %and63 = lshr i32 %conv56, 2
  %and63.lobit = and i32 %and63, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 274, i32 noundef %and63.lobit) #13
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.end77.if.end83_crit_edge
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %land.lhs.true26.cleanup_crit_edge, %if.then11, %do.body7, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alps_set_abs_params_mt_common(ptr nocapture noundef readonly %priv, ptr noundef %dev1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %x_max = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 14
  %0 = ptrtoint ptr %x_max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %x_max, align 4
  tail call void @input_set_abs_params(ptr noundef %dev1, i32 noundef 53, i32 noundef 0, i32 noundef %1, i32 noundef 0, i32 noundef 0) #13
  %y_max = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 15
  %2 = ptrtoint ptr %y_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %y_max, align 4
  tail call void @input_set_abs_params(ptr noundef %dev1, i32 noundef 54, i32 noundef 0, i32 noundef %3, i32 noundef 0, i32 noundef 0) #13
  %x_res = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 18
  %4 = ptrtoint ptr %x_res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %x_res, align 4
  tail call void @input_alloc_absinfo(ptr noundef %dev1) #13
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %dev1, i32 0, i32 26
  %6 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.input_abs_set_res.exit_crit_edge, label %if.then.i

entry.input_abs_set_res.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %input_abs_set_res.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %resolution.i = getelementptr %struct.input_absinfo, ptr %7, i32 53, i32 5
  %8 = ptrtoint ptr %resolution.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %resolution.i, align 4
  br label %input_abs_set_res.exit

input_abs_set_res.exit:                           ; preds = %if.then.i, %entry.input_abs_set_res.exit_crit_edge
  %y_res = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 19
  %9 = ptrtoint ptr %y_res to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %y_res, align 4
  tail call void @input_alloc_absinfo(ptr noundef %dev1) #13
  %11 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i12 = icmp eq ptr %12, null
  br i1 %tobool.not.i12, label %input_abs_set_res.exit.input_abs_set_res.exit15_crit_edge, label %if.then.i14

input_abs_set_res.exit.input_abs_set_res.exit15_crit_edge: ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %input_abs_set_res.exit15

if.then.i14:                                      ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #15
  %resolution.i13 = getelementptr %struct.input_absinfo, ptr %12, i32 54, i32 5
  %13 = ptrtoint ptr %resolution.i13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %resolution.i13, align 4
  br label %input_abs_set_res.exit15

input_abs_set_res.exit15:                         ; preds = %if.then.i14, %input_abs_set_res.exit.input_abs_set_res.exit15_crit_edge
  %keybit = getelementptr inbounds %struct.input_dev, ptr %dev1, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 334, ptr noundef %keybit) #13
  tail call void @_set_bit(i32 noundef 335, ptr noundef %keybit) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alps_get_v3_v7_resolution(ptr noundef %psmouse, i32 noundef %reg_pitch) unnamed_addr #0 align 64 {
entry:
  %param.i.i71 = alloca [4 x i8], align 4
  %param.i.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %call.i = tail call fastcc i32 @alps_command_mode_set_addr(ptr noundef %psmouse, i32 noundef %reg_pitch) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %ps2dev1.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i.i) #13
  %2 = getelementptr inbounds [4 x i8], ptr %param.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %param.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %param.i.i, align 4
  %call.i.i = call i32 @ps2_command(ptr noundef %ps2dev1.i.i, ptr noundef nonnull %param.i.i, i32 noundef 1001) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.alps_command_mode_read_reg.exit.thread92_crit_edge

if.end.i.alps_command_mode_read_reg.exit.thread92_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit.thread92

if.end.i.i:                                       ; preds = %if.end.i
  %4 = getelementptr inbounds [4 x i8], ptr %param.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %param.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %param.i.i, align 4
  %conv.i.i = zext i8 %6 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %4, align 1
  %conv3.i.i = zext i8 %8 to i32
  %or.i.i = or i32 %shl.i.i, %conv3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %reg_pitch)
  %cmp.not.i.i = icmp eq i32 %or.i.i, %reg_pitch
  br i1 %cmp.not.i.i, label %alps_command_mode_read_reg.exit, label %if.end.i.i.alps_command_mode_read_reg.exit.thread92_crit_edge

if.end.i.i.alps_command_mode_read_reg.exit.thread92_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit.thread92

alps_command_mode_read_reg.exit.thread92:         ; preds = %if.end.i.i.alps_command_mode_read_reg.exit.thread92_crit_edge, %if.end.i.alps_command_mode_read_reg.exit.thread92_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i) #13
  br label %cleanup

alps_command_mode_read_reg.exit:                  ; preds = %if.end.i.i
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %2, align 2
  %conv8.i.i = zext i8 %10 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i) #13
  %conv1 = shl nuw nsw i32 %conv8.i.i, 1
  %mul = and i32 %conv1, 30
  %add = add nuw nsw i32 %mul, 50
  %11 = lshr i32 %conv8.i.i, 3
  %mul5 = and i32 %11, 30
  %add6 = add nuw nsw i32 %mul5, 36
  %add7 = add i32 %reg_pitch, 1
  %call.i72 = call fastcc i32 @alps_command_mode_set_addr(ptr noundef %psmouse, i32 noundef %add7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool.not.i73 = icmp eq i32 %call.i72, 0
  br i1 %tobool.not.i73, label %if.end.i77, label %alps_command_mode_read_reg.exit.cleanup_crit_edge

alps_command_mode_read_reg.exit.cleanup_crit_edge: ; preds = %alps_command_mode_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i77:                                       ; preds = %alps_command_mode_read_reg.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i.i71) #13
  %12 = getelementptr inbounds [4 x i8], ptr %param.i.i71, i32 0, i32 2
  %13 = ptrtoint ptr %param.i.i71 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %param.i.i71, align 4
  %call.i.i75 = call i32 @ps2_command(ptr noundef %ps2dev1.i.i, ptr noundef nonnull %param.i.i71, i32 noundef 1001) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i75)
  %tobool.not.i.i76 = icmp eq i32 %call.i.i75, 0
  br i1 %tobool.not.i.i76, label %if.end.i.i83, label %if.end.i77.alps_command_mode_read_reg.exit89.thread97_crit_edge

if.end.i77.alps_command_mode_read_reg.exit89.thread97_crit_edge: ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit89.thread97

if.end.i.i83:                                     ; preds = %if.end.i77
  %14 = getelementptr inbounds [4 x i8], ptr %param.i.i71, i32 0, i32 1
  %15 = ptrtoint ptr %param.i.i71 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %param.i.i71, align 4
  %conv.i.i78 = zext i8 %16 to i32
  %shl.i.i79 = shl nuw nsw i32 %conv.i.i78, 8
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %14, align 1
  %conv3.i.i80 = zext i8 %18 to i32
  %or.i.i81 = or i32 %shl.i.i79, %conv3.i.i80
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i81, i32 %add7)
  %cmp.not.i.i82 = icmp eq i32 %or.i.i81, %add7
  br i1 %cmp.not.i.i82, label %alps_command_mode_read_reg.exit89, label %if.end.i.i83.alps_command_mode_read_reg.exit89.thread97_crit_edge

if.end.i.i83.alps_command_mode_read_reg.exit89.thread97_crit_edge: ; preds = %if.end.i.i83
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_command_mode_read_reg.exit89.thread97

alps_command_mode_read_reg.exit89.thread97:       ; preds = %if.end.i.i83.alps_command_mode_read_reg.exit89.thread97_crit_edge, %if.end.i77.alps_command_mode_read_reg.exit89.thread97_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i71) #13
  br label %cleanup

alps_command_mode_read_reg.exit89:                ; preds = %if.end.i.i83
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %12, align 2
  %conv8.i.i84 = zext i8 %20 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i.i71) #13
  %conv15 = and i32 %conv8.i.i84, 15
  %conv19 = lshr i32 %conv8.i.i84, 4
  %sub = or i32 %conv15, 16
  %mul22 = mul nuw nsw i32 %sub, %add
  %sub23 = add nuw nsw i32 %conv19, 12
  %mul24 = mul nuw nsw i32 %sub23, %add6
  %x_max = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 14
  %21 = ptrtoint ptr %x_max to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %x_max, align 4
  %mul25 = mul i32 %22, 10
  %div = sdiv i32 %mul25, %mul22
  %x_res = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 18
  %23 = ptrtoint ptr %x_res to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div, ptr %x_res, align 4
  %y_max = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 15
  %24 = ptrtoint ptr %y_max to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %y_max, align 4
  %mul26 = mul i32 %25, 10
  %div27 = sdiv i32 %mul26, %mul24
  %y_res = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 19
  %26 = ptrtoint ptr %y_res to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div27, ptr %y_res, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alps_get_v3_v7_resolution.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alps_get_v3_v7_resolution, %if.then31)) #13
          to label %cleanup [label %if.then31], !srcloc !199

if.then31:                                        ; preds = %alps_command_mode_read_reg.exit89
  call void @__sanitizer_cov_trace_pc() #15
  %add21 = add nuw nsw i32 %conv19, 13
  %add17 = add nuw nsw i32 %conv15, 17
  %27 = ptrtoint ptr %ps2dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ps2dev1.i.i, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %28, i32 0, i32 18
  %div32 = udiv i32 %mul22, 10
  %div33.lhs.trunc = trunc i32 %mul24 to i16
  %div33101 = udiv i16 %div33.lhs.trunc, 10
  %div33.zext = zext i16 %div33101 to i32
  %29 = ptrtoint ptr %x_res to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %x_res, align 4
  %31 = ptrtoint ptr %y_res to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %y_res, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alps_get_v3_v7_resolution.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.70, i32 noundef %add, i32 noundef %add6, i32 noundef %add17, i32 noundef %add21, i32 noundef %div32, i32 noundef %div33.zext, i32 noundef %30, i32 noundef %32) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %alps_command_mode_read_reg.exit89, %alps_command_mode_read_reg.exit89.thread97, %alps_command_mode_read_reg.exit.cleanup_crit_edge, %alps_command_mode_read_reg.exit.thread92, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then31 ], [ -1, %alps_command_mode_read_reg.exit.thread92 ], [ -1, %alps_command_mode_read_reg.exit89.thread97 ], [ 0, %alps_command_mode_read_reg.exit89 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %alps_command_mode_read_reg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alps_process_bitmap(ptr nocapture noundef %priv, ptr nocapture noundef %fields) unnamed_addr #9 align 64 {
entry:
  %x_low = alloca %struct.alps_bitmap_point, align 8
  %x_high = alloca %struct.alps_bitmap_point, align 8
  %y_low = alloca %struct.alps_bitmap_point, align 8
  %y_high = alloca %struct.alps_bitmap_point, align 8
  %corner = alloca [4 x %struct.input_mt_pos], align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %x_low) #13
  %0 = ptrtoint ptr %x_low to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %x_low, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %x_high) #13
  %1 = ptrtoint ptr %x_high to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %x_high, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %y_low) #13
  %2 = ptrtoint ptr %y_low to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %y_low, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %y_high) #13
  %3 = ptrtoint ptr %y_high to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %y_high, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %corner) #13
  %4 = getelementptr inbounds %struct.input_mt_pos, ptr %corner, i32 0, i32 1
  %5 = getelementptr inbounds [4 x %struct.input_mt_pos], ptr %corner, i32 0, i32 1
  %6 = getelementptr inbounds [4 x %struct.input_mt_pos], ptr %corner, i32 0, i32 1, i32 1
  %7 = getelementptr inbounds [4 x %struct.input_mt_pos], ptr %corner, i32 0, i32 2
  %8 = getelementptr inbounds [4 x %struct.input_mt_pos], ptr %corner, i32 0, i32 2, i32 1
  %9 = getelementptr inbounds [4 x %struct.input_mt_pos], ptr %corner, i32 0, i32 3
  %10 = getelementptr inbounds [4 x %struct.input_mt_pos], ptr %corner, i32 0, i32 3, i32 1
  %11 = call ptr @memset(ptr %corner, i32 255, i32 16)
  %12 = ptrtoint ptr %fields to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fields, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %y_map = getelementptr inbounds %struct.alps_fields, ptr %fields, i32 0, i32 1
  %14 = ptrtoint ptr %y_map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %y_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not = icmp eq i32 %15, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.for.body.i_crit_edge

lor.lhs.false.for.body.i_crit_edge:               ; preds = %lor.lhs.false
  br label %for.body.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i:                                       ; preds = %if.end8.i.for.body.i_crit_edge, %lor.lhs.false.for.body.i_crit_edge
  %fingers_x.0 = phi i32 [ %fingers_x.2, %if.end8.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false.for.body.i_crit_edge ]
  %prev_bit.024.i = phi i32 [ %and.i, %if.end8.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false.for.body.i_crit_edge ]
  %i.021.i = phi i32 [ %inc9.i, %if.end8.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false.for.body.i_crit_edge ]
  %point.019.i = phi ptr [ %point.1.i, %if.end8.i.for.body.i_crit_edge ], [ %x_low, %lor.lhs.false.for.body.i_crit_edge ]
  %map.addr.018.i = phi i32 [ %shr.i, %if.end8.i.for.body.i_crit_edge ], [ %13, %lor.lhs.false.for.body.i_crit_edge ]
  %and.i = and i32 %map.addr.018.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prev_bit.024.i)
  %tobool5.not.i = icmp eq i32 %prev_bit.024.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  br i1 %tobool5.not.i, label %if.then2.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %point.019.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %i.021.i, ptr %point.019.i, align 4
  %num_bits.i = getelementptr inbounds %struct.alps_bitmap_point, ptr %point.019.i, i32 0, i32 1
  %17 = ptrtoint ptr %num_bits.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %num_bits.i, align 4
  %inc.i = add i32 %fingers_x.0, 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %fingers_x.1 = phi i32 [ %inc.i, %if.then2.i ], [ %fingers_x.0, %if.then.i.if.end.i_crit_edge ]
  %num_bits3.i = getelementptr inbounds %struct.alps_bitmap_point, ptr %point.019.i, i32 0, i32 1
  %18 = ptrtoint ptr %num_bits3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_bits3.i, align 4
  %inc4.i = add i32 %19, 1
  store i32 %inc4.i, ptr %num_bits3.i, align 4
  br label %if.end8.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %spec.select.i = select i1 %tobool5.not.i, ptr %point.019.i, ptr %x_high
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.end.i
  %fingers_x.2 = phi i32 [ %fingers_x.0, %if.else.i ], [ %fingers_x.1, %if.end.i ]
  %point.1.i = phi ptr [ %spec.select.i, %if.else.i ], [ %point.019.i, %if.end.i ]
  %inc9.i = add nuw nsw i32 %i.021.i, 1
  %shr.i = lshr i32 %map.addr.018.i, 1
  %cmp.not.i = icmp ult i32 %map.addr.018.i, 2
  br i1 %cmp.not.i, label %alps_get_bitmap_points.exit, label %if.end8.i.for.body.i_crit_edge

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

alps_get_bitmap_points.exit:                      ; preds = %if.end8.i
  %20 = ptrtoint ptr %y_map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %y_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not17.i295 = icmp eq i32 %21, 0
  br i1 %cmp.not17.i295, label %alps_get_bitmap_points.exit.alps_get_bitmap_points.exit318_crit_edge, label %alps_get_bitmap_points.exit.for.body.i303_crit_edge

alps_get_bitmap_points.exit.for.body.i303_crit_edge: ; preds = %alps_get_bitmap_points.exit
  br label %for.body.i303

alps_get_bitmap_points.exit.alps_get_bitmap_points.exit318_crit_edge: ; preds = %alps_get_bitmap_points.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_get_bitmap_points.exit318

for.body.i303:                                    ; preds = %if.end8.i317.for.body.i303_crit_edge, %alps_get_bitmap_points.exit.for.body.i303_crit_edge
  %fingers_y.0 = phi i32 [ %fingers_y.2, %if.end8.i317.for.body.i303_crit_edge ], [ 0, %alps_get_bitmap_points.exit.for.body.i303_crit_edge ]
  %prev_bit.024.i296 = phi i32 [ %and.i300, %if.end8.i317.for.body.i303_crit_edge ], [ 0, %alps_get_bitmap_points.exit.for.body.i303_crit_edge ]
  %i.021.i297 = phi i32 [ %inc9.i314, %if.end8.i317.for.body.i303_crit_edge ], [ 0, %alps_get_bitmap_points.exit.for.body.i303_crit_edge ]
  %point.019.i298 = phi ptr [ %point.1.i313, %if.end8.i317.for.body.i303_crit_edge ], [ %y_low, %alps_get_bitmap_points.exit.for.body.i303_crit_edge ]
  %map.addr.018.i299 = phi i32 [ %shr.i315, %if.end8.i317.for.body.i303_crit_edge ], [ %21, %alps_get_bitmap_points.exit.for.body.i303_crit_edge ]
  %and.i300 = and i32 %map.addr.018.i299, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i300)
  %tobool.not.i301 = icmp eq i32 %and.i300, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prev_bit.024.i296)
  %tobool5.not.i302 = icmp eq i32 %prev_bit.024.i296, 0
  br i1 %tobool.not.i301, label %if.else.i312, label %if.then.i304

if.then.i304:                                     ; preds = %for.body.i303
  br i1 %tobool5.not.i302, label %if.then2.i307, label %if.then.i304.if.end.i310_crit_edge

if.then.i304.if.end.i310_crit_edge:               ; preds = %if.then.i304
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i310

if.then2.i307:                                    ; preds = %if.then.i304
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %point.019.i298 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %i.021.i297, ptr %point.019.i298, align 4
  %num_bits.i305 = getelementptr inbounds %struct.alps_bitmap_point, ptr %point.019.i298, i32 0, i32 1
  %23 = ptrtoint ptr %num_bits.i305 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %num_bits.i305, align 4
  %inc.i306 = add i32 %fingers_y.0, 1
  br label %if.end.i310

if.end.i310:                                      ; preds = %if.then2.i307, %if.then.i304.if.end.i310_crit_edge
  %fingers_y.1 = phi i32 [ %inc.i306, %if.then2.i307 ], [ %fingers_y.0, %if.then.i304.if.end.i310_crit_edge ]
  %num_bits3.i308 = getelementptr inbounds %struct.alps_bitmap_point, ptr %point.019.i298, i32 0, i32 1
  %24 = ptrtoint ptr %num_bits3.i308 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_bits3.i308, align 4
  %inc4.i309 = add i32 %25, 1
  store i32 %inc4.i309, ptr %num_bits3.i308, align 4
  br label %if.end8.i317

if.else.i312:                                     ; preds = %for.body.i303
  call void @__sanitizer_cov_trace_pc() #15
  %spec.select.i311 = select i1 %tobool5.not.i302, ptr %point.019.i298, ptr %y_high
  br label %if.end8.i317

if.end8.i317:                                     ; preds = %if.else.i312, %if.end.i310
  %fingers_y.2 = phi i32 [ %fingers_y.0, %if.else.i312 ], [ %fingers_y.1, %if.end.i310 ]
  %point.1.i313 = phi ptr [ %spec.select.i311, %if.else.i312 ], [ %point.019.i298, %if.end.i310 ]
  %inc9.i314 = add nuw nsw i32 %i.021.i297, 1
  %shr.i315 = lshr i32 %map.addr.018.i299, 1
  %cmp.not.i316 = icmp ult i32 %map.addr.018.i299, 2
  br i1 %cmp.not.i316, label %if.end8.i317.alps_get_bitmap_points.exit318_crit_edge, label %if.end8.i317.for.body.i303_crit_edge

if.end8.i317.for.body.i303_crit_edge:             ; preds = %if.end8.i317
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i303

if.end8.i317.alps_get_bitmap_points.exit318_crit_edge: ; preds = %if.end8.i317
  call void @__sanitizer_cov_trace_pc() #15
  br label %alps_get_bitmap_points.exit318

alps_get_bitmap_points.exit318:                   ; preds = %if.end8.i317.alps_get_bitmap_points.exit318_crit_edge, %alps_get_bitmap_points.exit.alps_get_bitmap_points.exit318_crit_edge
  %fingers_y.3 = phi i32 [ 0, %alps_get_bitmap_points.exit.alps_get_bitmap_points.exit318_crit_edge ], [ %fingers_y.2, %if.end8.i317.alps_get_bitmap_points.exit318_crit_edge ]
  %26 = tail call i32 @llvm.smax.i32(i32 %fingers_x.2, i32 %fingers_y.3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %fingers_x.2)
  %cmp4 = icmp eq i32 %fingers_x.2, 1
  br i1 %cmp4, label %if.then5, label %alps_get_bitmap_points.exit318.if.end17_crit_edge

alps_get_bitmap_points.exit318.if.end17_crit_edge: ; preds = %alps_get_bitmap_points.exit318
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then5:                                         ; preds = %alps_get_bitmap_points.exit318
  call void @__sanitizer_cov_trace_pc() #15
  %num_bits = getelementptr inbounds %struct.alps_bitmap_point, ptr %x_low, i32 0, i32 1
  %27 = ptrtoint ptr %num_bits to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_bits, align 4
  %sub = add i32 %28, -1
  %div = sdiv i32 %sub, 2
  %sub7 = sub i32 %28, %div
  store i32 %sub7, ptr %num_bits, align 4
  %29 = ptrtoint ptr %x_low to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %x_low, align 8
  %add = add i32 %30, %div
  %31 = ptrtoint ptr %x_high to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add, ptr %x_high, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp11 = icmp sgt i32 %sub, 3
  %div. = select i1 %cmp11, i32 %div, i32 1
  %num_bits16 = getelementptr inbounds %struct.alps_bitmap_point, ptr %x_high, i32 0, i32 1
  %32 = ptrtoint ptr %num_bits16 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div., ptr %num_bits16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then5, %alps_get_bitmap_points.exit318.if.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %fingers_y.3)
  %cmp18 = icmp eq i32 %fingers_y.3, 1
  br i1 %cmp18, label %if.then19, label %if.end17.if.end36_crit_edge

if.end17.if.end36_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %num_bits20 = getelementptr inbounds %struct.alps_bitmap_point, ptr %y_low, i32 0, i32 1
  %33 = ptrtoint ptr %num_bits20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_bits20, align 4
  %sub21 = add i32 %34, -1
  %div22 = sdiv i32 %sub21, 2
  %sub24 = sub i32 %34, %div22
  store i32 %sub24, ptr %num_bits20, align 4
  %35 = ptrtoint ptr %y_low to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %y_low, align 8
  %add27 = add i32 %36, %div22
  %37 = ptrtoint ptr %y_high to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add27, ptr %y_high, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub21)
  %cmp30 = icmp sgt i32 %sub21, 3
  %div22. = select i1 %cmp30, i32 %div22, i32 1
  %num_bits35 = getelementptr inbounds %struct.alps_bitmap_point, ptr %y_high, i32 0, i32 1
  %38 = ptrtoint ptr %num_bits35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div22., ptr %num_bits35, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then19, %if.end17.if.end36_crit_edge
  %x_max = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 14
  %39 = ptrtoint ptr %x_max to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %x_max, align 4
  %41 = ptrtoint ptr %x_low to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %x_low, align 8
  %mul = shl i32 %42, 1
  %num_bits38 = getelementptr inbounds %struct.alps_bitmap_point, ptr %x_low, i32 0, i32 1
  %43 = ptrtoint ptr %num_bits38 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_bits38, align 4
  %add39 = add i32 %44, -1
  %sub40 = add i32 %add39, %mul
  %mul41 = mul i32 %sub40, %40
  %x_bits = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 16
  %45 = ptrtoint ptr %x_bits to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %x_bits, align 4
  %sub42 = shl i32 %46, 1
  %mul43 = add i32 %sub42, -2
  %div44 = sdiv i32 %mul41, %mul43
  %conv = trunc i32 %div44 to i16
  %47 = ptrtoint ptr %corner to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv, ptr %corner, align 2
  %y_max = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 15
  %48 = ptrtoint ptr %y_max to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %y_max, align 4
  %50 = ptrtoint ptr %y_low to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %y_low, align 8
  %mul46 = shl i32 %51, 1
  %num_bits47 = getelementptr inbounds %struct.alps_bitmap_point, ptr %y_low, i32 0, i32 1
  %52 = ptrtoint ptr %num_bits47 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_bits47, align 4
  %add48 = add i32 %53, -1
  %sub49 = add i32 %add48, %mul46
  %mul50 = mul i32 %sub49, %49
  %y_bits = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 17
  %54 = ptrtoint ptr %y_bits to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %y_bits, align 4
  %sub51 = shl i32 %55, 1
  %mul52 = add i32 %sub51, -2
  %div53 = sdiv i32 %mul50, %mul52
  %conv54 = trunc i32 %div53 to i16
  %56 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv54, ptr %4, align 2
  %57 = ptrtoint ptr %x_high to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %x_high, align 8
  %mul58 = shl i32 %58, 1
  %num_bits59 = getelementptr inbounds %struct.alps_bitmap_point, ptr %x_high, i32 0, i32 1
  %59 = ptrtoint ptr %num_bits59 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_bits59, align 4
  %add60 = add i32 %60, -1
  %sub61 = add i32 %add60, %mul58
  %mul62 = mul i32 %sub61, %40
  %div66 = sdiv i32 %mul62, %mul43
  %conv67 = trunc i32 %div66 to i16
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv67, ptr %5, align 2
  %62 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv54, ptr %6, align 2
  %63 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv67, ptr %7, align 2
  %64 = ptrtoint ptr %y_high to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %y_high, align 8
  %mul100 = shl i32 %65, 1
  %num_bits101 = getelementptr inbounds %struct.alps_bitmap_point, ptr %y_high, i32 0, i32 1
  %66 = ptrtoint ptr %num_bits101 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_bits101, align 4
  %add102 = add i32 %67, -1
  %sub103 = add i32 %add102, %mul100
  %mul104 = mul i32 %sub103, %49
  %div108 = sdiv i32 %mul104, %mul52
  %conv109 = trunc i32 %div108 to i16
  %68 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv109, ptr %8, align 2
  %69 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv, ptr %9, align 2
  %70 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv109, ptr %10, align 2
  %proto_version = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 8
  %71 = ptrtoint ptr %proto_version to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %proto_version, align 4
  %73 = zext i16 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.94)
  switch i16 %72, label %if.end36.if.end180_crit_edge [
    i16 1280, label %for.cond.preheader
    i16 768, label %if.end36.if.then164_crit_edge
    i16 1024, label %if.end36.if.then164_crit_edge339
  ]

if.end36.if.then164_crit_edge339:                 ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then164

if.end36.if.then164_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then164

if.end36.if.end180_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end180

for.cond.preheader:                               ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %74 = trunc i32 %40 to i16
  %75 = ptrtoint ptr %corner to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %corner, align 2
  %conv151 = sub i16 %74, %76
  store i16 %conv151, ptr %corner, align 2
  br label %if.end180.sink.split

if.then164:                                       ; preds = %if.end36.if.then164_crit_edge, %if.end36.if.then164_crit_edge339
  %77 = trunc i32 %49 to i16
  %78 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %4, align 2
  %conv174 = sub i16 %77, %79
  store i16 %conv174, ptr %4, align 2
  br label %if.end180.sink.split

if.end180.sink.split:                             ; preds = %if.then164, %for.cond.preheader
  %.sink338 = phi ptr [ %5, %for.cond.preheader ], [ %6, %if.then164 ]
  %.sink336 = phi i16 [ %74, %for.cond.preheader ], [ %77, %if.then164 ]
  %.sink334 = phi ptr [ %7, %for.cond.preheader ], [ %8, %if.then164 ]
  %.sink330 = phi ptr [ %9, %for.cond.preheader ], [ %10, %if.then164 ]
  %80 = ptrtoint ptr %.sink338 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %.sink338, align 2
  %conv151.1 = sub i16 %.sink336, %81
  store i16 %conv151.1, ptr %.sink338, align 2
  %82 = ptrtoint ptr %.sink334 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %.sink334, align 2
  %conv151.2 = sub i16 %.sink336, %83
  store i16 %conv151.2, ptr %.sink334, align 2
  %84 = ptrtoint ptr %.sink330 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %.sink330, align 2
  %conv151.3 = sub i16 %.sink336, %85
  store i16 %conv151.3, ptr %.sink330, align 2
  br label %if.end180

if.end180:                                        ; preds = %if.end180.sink.split, %if.end36.if.end180_crit_edge
  %second_touch = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 26
  %86 = ptrtoint ptr %second_touch to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %second_touch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %87)
  %cmp181 = icmp eq i32 %87, -1
  br i1 %cmp181, label %for.cond184.preheader, label %if.end180.if.end215_crit_edge

if.end180.if.end215_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end215

for.cond184.preheader:                            ; preds = %if.end180
  %st = getelementptr inbounds %struct.alps_fields, ptr %fields, i32 0, i32 4
  %y195 = getelementptr inbounds %struct.alps_fields, ptr %fields, i32 0, i32 4, i32 1
  %88 = ptrtoint ptr %st to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %st, align 4
  %conv189 = sext i16 %89 to i32
  %90 = ptrtoint ptr %corner to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %corner, align 2
  %conv192 = sext i16 %91 to i32
  %sub193 = sub nsw i32 %conv189, %conv192
  %92 = ptrtoint ptr %y195 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %y195, align 2
  %conv196 = sext i16 %93 to i32
  %94 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %4, align 2
  %conv199 = sext i16 %95 to i32
  %sub200 = sub nsw i32 %conv196, %conv199
  %mul201 = mul i32 %sub193, %sub193
  %mul202 = mul i32 %sub200, %sub200
  %add203 = add i32 %mul202, %mul201
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %add203)
  %cmp204.not = icmp eq i32 %add203, 2147483647
  br i1 %cmp204.not, label %for.cond184.preheader.if.end208_crit_edge, label %if.then206

for.cond184.preheader.if.end208_crit_edge:        ; preds = %for.cond184.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208

if.then206:                                       ; preds = %for.cond184.preheader
  call void @__sanitizer_cov_trace_pc() #15
  %96 = ptrtoint ptr %second_touch to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %second_touch, align 4
  br label %if.end208

if.end208:                                        ; preds = %if.then206, %for.cond184.preheader.if.end208_crit_edge
  %97 = ptrtoint ptr %st to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %st, align 4
  %conv189.1 = sext i16 %98 to i32
  %99 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %5, align 2
  %conv192.1 = sext i16 %100 to i32
  %sub193.1 = sub nsw i32 %conv189.1, %conv192.1
  %101 = ptrtoint ptr %y195 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %y195, align 2
  %conv196.1 = sext i16 %102 to i32
  %103 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %6, align 2
  %conv199.1 = sext i16 %104 to i32
  %sub200.1 = sub nsw i32 %conv196.1, %conv199.1
  %mul201.1 = mul i32 %sub193.1, %sub193.1
  %mul202.1 = mul i32 %sub200.1, %sub200.1
  %add203.1 = add i32 %mul202.1, %mul201.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add203.1, i32 %add203)
  %cmp204.1 = icmp slt i32 %add203.1, %add203
  br i1 %cmp204.1, label %if.then206.1, label %if.end208.if.end208.1_crit_edge

if.end208.if.end208.1_crit_edge:                  ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208.1

if.then206.1:                                     ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #15
  %105 = ptrtoint ptr %second_touch to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %second_touch, align 4
  br label %if.end208.1

if.end208.1:                                      ; preds = %if.then206.1, %if.end208.if.end208.1_crit_edge
  %closest.1.1 = phi i32 [ %add203.1, %if.then206.1 ], [ %add203, %if.end208.if.end208.1_crit_edge ]
  %106 = ptrtoint ptr %st to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %st, align 4
  %conv189.2 = sext i16 %107 to i32
  %108 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %7, align 2
  %conv192.2 = sext i16 %109 to i32
  %sub193.2 = sub nsw i32 %conv189.2, %conv192.2
  %110 = ptrtoint ptr %y195 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %y195, align 2
  %conv196.2 = sext i16 %111 to i32
  %112 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %8, align 2
  %conv199.2 = sext i16 %113 to i32
  %sub200.2 = sub nsw i32 %conv196.2, %conv199.2
  %mul201.2 = mul i32 %sub193.2, %sub193.2
  %mul202.2 = mul i32 %sub200.2, %sub200.2
  %add203.2 = add i32 %mul202.2, %mul201.2
  call void @__sanitizer_cov_trace_cmp4(i32 %add203.2, i32 %closest.1.1)
  %cmp204.2 = icmp slt i32 %add203.2, %closest.1.1
  br i1 %cmp204.2, label %if.then206.2, label %if.end208.1.if.end208.2_crit_edge

if.end208.1.if.end208.2_crit_edge:                ; preds = %if.end208.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208.2

if.then206.2:                                     ; preds = %if.end208.1
  call void @__sanitizer_cov_trace_pc() #15
  %114 = ptrtoint ptr %second_touch to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 2, ptr %second_touch, align 4
  br label %if.end208.2

if.end208.2:                                      ; preds = %if.then206.2, %if.end208.1.if.end208.2_crit_edge
  %closest.1.2 = phi i32 [ %add203.2, %if.then206.2 ], [ %closest.1.1, %if.end208.1.if.end208.2_crit_edge ]
  %115 = ptrtoint ptr %st to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %st, align 4
  %conv189.3 = sext i16 %116 to i32
  %117 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %9, align 2
  %conv192.3 = sext i16 %118 to i32
  %sub193.3 = sub nsw i32 %conv189.3, %conv192.3
  %119 = ptrtoint ptr %y195 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %y195, align 2
  %conv196.3 = sext i16 %120 to i32
  %121 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %10, align 2
  %conv199.3 = sext i16 %122 to i32
  %sub200.3 = sub nsw i32 %conv196.3, %conv199.3
  %mul201.3 = mul i32 %sub193.3, %sub193.3
  %mul202.3 = mul i32 %sub200.3, %sub200.3
  %add203.3 = add i32 %mul202.3, %mul201.3
  call void @__sanitizer_cov_trace_cmp4(i32 %add203.3, i32 %closest.1.2)
  %cmp204.3 = icmp slt i32 %add203.3, %closest.1.2
  br i1 %cmp204.3, label %if.then206.3, label %if.end208.2.if.end208.3_crit_edge

if.end208.2.if.end208.3_crit_edge:                ; preds = %if.end208.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208.3

if.then206.3:                                     ; preds = %if.end208.2
  call void @__sanitizer_cov_trace_pc() #15
  %123 = ptrtoint ptr %second_touch to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 3, ptr %second_touch, align 4
  br label %if.end208.3

if.end208.3:                                      ; preds = %if.then206.3, %if.end208.2.if.end208.3_crit_edge
  %124 = ptrtoint ptr %second_touch to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %second_touch, align 4
  %add213 = add i32 %125, 2
  %rem = srem i32 %add213, 4
  store i32 %rem, ptr %second_touch, align 4
  br label %if.end215

if.end215:                                        ; preds = %if.end208.3, %if.end180.if.end215_crit_edge
  %mt = getelementptr inbounds %struct.alps_fields, ptr %fields, i32 0, i32 5
  %st217 = getelementptr inbounds %struct.alps_fields, ptr %fields, i32 0, i32 4
  %126 = ptrtoint ptr %st217 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %st217, align 4
  %128 = ptrtoint ptr %mt to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %mt, align 4
  %arrayidx219 = getelementptr %struct.alps_fields, ptr %fields, i32 0, i32 5, i32 1
  %129 = ptrtoint ptr %second_touch to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %second_touch, align 4
  %arrayidx221 = getelementptr [4 x %struct.input_mt_pos], ptr %corner, i32 0, i32 %130
  %131 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_loadN_noabort(i32 %131, i32 4)
  %132 = load i32, ptr %arrayidx221, align 2
  %133 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %arrayidx219, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end215, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %if.end215 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %corner) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %y_high) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %y_low) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %x_high) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %x_low) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alps_report_semi_mt_data(ptr nocapture noundef readonly %psmouse, i32 noundef %fingers) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fingers)
  %cmp = icmp slt i32 %fingers, 2
  br i1 %cmp, label %if.end, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.end:                                           ; preds = %entry
  %st = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 4
  %4 = ptrtoint ptr %st to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %st, align 4
  %mt = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 5
  %6 = ptrtoint ptr %mt to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %mt, align 4
  %y = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 4, i32 1
  %7 = ptrtoint ptr %y to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %y, align 2
  %y7 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 5, i32 0, i32 1
  %9 = ptrtoint ptr %y7 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %y7, align 2
  %pressure = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 3
  %10 = ptrtoint ptr %pressure to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pressure, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp8 = icmp sgt i32 %11, 0
  %second_touch = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 26
  %12 = ptrtoint ptr %second_touch to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %second_touch, align 4
  br i1 %cmp8, label %if.end.if.end18_crit_edge, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.end18:                                         ; preds = %if.end.if.end18_crit_edge, %entry.if.end18_crit_edge
  %fingers.addr.073 = phi i32 [ 1, %if.end.if.end18_crit_edge ], [ %fingers, %entry.if.end18_crit_edge ]
  %mt11 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 5
  %13 = ptrtoint ptr %mt11 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %mt11, align 4
  %conv = sext i16 %14 to i32
  %y16 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 5, i32 0, i32 1
  %15 = ptrtoint ptr %y16 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %y16, align 2
  %conv17 = sext i16 %16 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 47, i32 noundef 0) #13
  %call.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %3, i32 noundef 0, i1 noundef zeroext true) #13
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 53, i32 noundef %conv) #13
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 54, i32 noundef %conv17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %fingers.addr.073)
  %cmp19 = icmp ugt i32 %fingers.addr.073, 1
  br i1 %cmp19, label %if.then21, label %if.end18.if.end30_crit_edge

if.end18.if.end30_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx23 = getelementptr %struct.alps_data, ptr %1, i32 0, i32 28, i32 5, i32 1
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx23, align 4
  %conv25 = sext i16 %18 to i32
  %y28 = getelementptr %struct.alps_data, ptr %1, i32 0, i32 28, i32 5, i32 1, i32 1
  %19 = ptrtoint ptr %y28 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %y28, align 2
  %conv29 = sext i16 %20 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 47, i32 noundef 1) #13
  %call.i65 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %3, i32 noundef 0, i1 noundef zeroext true) #13
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 53, i32 noundef %conv25) #13
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 54, i32 noundef %conv29) #13
  br label %if.end30

if.end30:                                         ; preds = %if.then21, %if.end18.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %fingers.addr.07276 = phi i32 [ %fingers.addr.073, %if.then21 ], [ 1, %if.end18.if.end30_crit_edge ], [ 0, %if.end.if.end30_crit_edge ]
  tail call void @input_mt_sync_frame(ptr noundef %3) #13
  tail call void @input_mt_report_finger_count(ptr noundef %3, i32 noundef %fingers.addr.07276) #13
  %left = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 6
  %21 = ptrtoint ptr %left to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %left, align 4
  %22 = lshr i8 %bf.load, 5
  %.lobit = and i8 %22, 1
  %23 = zext i8 %.lobit to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 272, i32 noundef %23) #13
  %24 = ptrtoint ptr %left to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load31 = load i8, ptr %left, align 4
  %25 = lshr i8 %bf.load31, 4
  %.lobit77 = and i8 %25, 1
  %26 = zext i8 %.lobit77 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 273, i32 noundef %26) #13
  %27 = ptrtoint ptr %left to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load35 = load i8, ptr %left, align 4
  %28 = lshr i8 %bf.load35, 3
  %.lobit78 = and i8 %28, 1
  %29 = zext i8 %.lobit78 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 274, i32 noundef %29) #13
  %pressure39 = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 3
  %30 = ptrtoint ptr %pressure39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pressure39, align 4
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 24, i32 noundef %31) #13
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_report_finger_count(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alps_monitor_mode_send_word(ptr noundef %psmouse, i16 noundef zeroext %word) unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %word to i32
  %ps2dev1.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %and = and i32 %conv, 15
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #13
  %nibble_commands.i = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dummy.i, align 4
  %3 = ptrtoint ptr %nibble_commands.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nibble_commands.i, align 4
  %arrayidx.i = getelementptr %struct.alps_nibble_commands, ptr %4, i32 %and
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %6, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  %data.i = getelementptr %struct.alps_nibble_commands, ptr %4, i32 %and, i32 1
  %cond.i = select i1 %tobool10.not.i, ptr %data.i, ptr %dummy.i
  %call.i = call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef %cond.i, i32 noundef %6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not.i.not = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #13
  br i1 %tobool13.not.i.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond:                                         ; preds = %entry
  %shr.1 = lshr i32 %conv, 4
  %and.1 = and i32 %shr.1, 15
  %7 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #13
  %nibble_commands.i.1 = getelementptr inbounds %struct.alps_data, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %dummy.i, align 4
  %10 = ptrtoint ptr %nibble_commands.i.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nibble_commands.i.1, align 4
  %arrayidx.i.1 = getelementptr %struct.alps_nibble_commands, ptr %11, i32 %and.1
  %12 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.1, align 4
  %and.i.1 = and i32 %13, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool10.not.i.1 = icmp eq i32 %and.i.1, 0
  %data.i.1 = getelementptr %struct.alps_nibble_commands, ptr %11, i32 %and.1, i32 1
  %cond.i.1 = select i1 %tobool10.not.i.1, ptr %data.i.1, ptr %dummy.i
  %call.i.1 = call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef %cond.i.1, i32 noundef %13) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool13.not.i.not.1 = icmp eq i32 %call.i.1, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #13
  br i1 %tobool13.not.i.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %shr.2 = lshr i32 %conv, 8
  %and.2 = and i32 %shr.2, 15
  %14 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #13
  %nibble_commands.i.2 = getelementptr inbounds %struct.alps_data, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %dummy.i, align 4
  %17 = ptrtoint ptr %nibble_commands.i.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nibble_commands.i.2, align 4
  %arrayidx.i.2 = getelementptr %struct.alps_nibble_commands, ptr %18, i32 %and.2
  %19 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.2, align 4
  %and.i.2 = and i32 %20, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2)
  %tobool10.not.i.2 = icmp eq i32 %and.i.2, 0
  %data.i.2 = getelementptr %struct.alps_nibble_commands, ptr %18, i32 %and.2, i32 1
  %cond.i.2 = select i1 %tobool10.not.i.2, ptr %data.i.2, ptr %dummy.i
  %call.i.2 = call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef %cond.i.2, i32 noundef %20) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool13.not.i.not.2 = icmp ne i32 %call.i.2, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #13
  %spec.select = sext i1 %tobool13.not.i.not.2 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.cond.1, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %for.cond.cleanup_crit_edge ], [ %spec.select, %for.cond.1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @psmouse_report_standard_buttons(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alps_report_mt_data(ptr nocapture noundef readonly %psmouse, i32 noundef %n) unnamed_addr #0 align 64 {
entry:
  %slot = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %slot) #13
  %mt = getelementptr inbounds %struct.alps_data, ptr %1, i32 0, i32 28, i32 5
  %4 = call ptr @memset(ptr %slot, i32 255, i32 16)
  %call = call i32 @input_mt_assign_slots(ptr noundef %3, ptr noundef nonnull %slot, ptr noundef %mt, i32 noundef %n, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp19 = icmp sgt i32 %n, 0
  br i1 %cmp19, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.020 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr %slot, i32 0, i32 %i.020
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %arrayidx5 = getelementptr %struct.alps_data, ptr %1, i32 0, i32 28, i32 5, i32 %i.020
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx5, align 4
  %conv = sext i16 %8 to i32
  %y = getelementptr %struct.alps_data, ptr %1, i32 0, i32 28, i32 5, i32 %i.020, i32 1
  %9 = ptrtoint ptr %y to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %y, align 2
  %conv8 = sext i16 %10 to i32
  call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 47, i32 noundef %6) #13
  %call.i = call zeroext i1 @input_mt_report_slot_state(ptr noundef %3, i32 noundef 0, i1 noundef zeroext true) #13
  call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 53, i32 noundef %conv) #13
  call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 54, i32 noundef %conv8) #13
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @input_mt_sync_frame(ptr noundef %3) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %slot) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_assign_slots(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alps_update_dual_info_ss4_v2(ptr nocapture noundef readonly %otp, ptr nocapture noundef %priv, ptr noundef %psmouse) unnamed_addr #0 align 64 {
entry:
  %param.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %dev_id = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dev_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %1)
  %cmp = icmp eq i8 %1, 115
  br i1 %cmp, label %land.lhs.true, label %entry.if.end39_crit_edge

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

land.lhs.true:                                    ; preds = %entry
  %arrayidx4 = getelementptr %struct.alps_data, ptr %priv, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp6 = icmp eq i8 %3, 3
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

land.lhs.true8:                                   ; preds = %land.lhs.true
  %arrayidx10 = getelementptr %struct.alps_data, ptr %priv, i32 0, i32 11, i32 2
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx10, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %5)
  %cmp12 = icmp eq i8 %5, 40
  br i1 %cmp12, label %if.then, label %land.lhs.true8.if.end39_crit_edge

land.lhs.true8.if.end39_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then:                                          ; preds = %land.lhs.true8
  %6 = ptrtoint ptr %otp to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %otp, align 1
  %8 = and i8 %7, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then18, label %if.then.if.then38_crit_edge

if.then.if.then38_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then38

if.then18:                                        ; preds = %if.then
  %call.i = tail call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 234) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i.not, label %land.lhs.true21, label %if.then18.if.end.thread_crit_edge

if.then18.if.end.thread_crit_edge:                ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread

land.lhs.true21:                                  ; preds = %if.then18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i) #13
  %9 = getelementptr inbounds [4 x i8], ptr %param.i, i32 0, i32 1
  %10 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %param.i, align 4
  %call.i5 = call fastcc i32 @alps_rpt_cmd(ptr noundef %psmouse, i32 noundef 0, i32 noundef 236, ptr noundef nonnull %param.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool.not.i6 = icmp eq i32 %call.i5, 0
  br i1 %tobool.not.i6, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ps2dev1, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %12, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.63) #16
  br label %alps_enter_command_mode.exit

if.end.i:                                         ; preds = %land.lhs.true21
  %13 = ptrtoint ptr %param.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %param.i, align 4
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %14, label %if.end.i.do.body4.i_crit_edge [
    i8 115, label %if.end.i.if.end_crit_edge
    i8 -120, label %land.lhs.true.i.i
  ]

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i.do.body4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %9, align 1
  %.off.i.i = add i8 %17, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i.i)
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  %18 = add i8 %17, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %18)
  %switch.selectcmp.i.i = icmp ult i8 %18, 32
  %or.cond.i = or i1 %switch.i.i, %switch.selectcmp.i.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.if.end_crit_edge, label %land.lhs.true.i.i.do.body4.i_crit_edge

land.lhs.true.i.i.do.body4.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4.i

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.body4.i:                                       ; preds = %land.lhs.true.i.i.do.body4.i_crit_edge, %if.end.i.do.body4.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alps_enter_command_mode.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alps_update_dual_info_ss4_v2, %if.then9.i)) #13
          to label %alps_enter_command_mode.exit [label %if.then9.i], !srcloc !199

if.then9.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ps2dev1, align 4
  %dev12.i = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alps_enter_command_mode.__UNIQUE_ID_ddebug242, ptr noundef %dev12.i, ptr noundef nonnull @.str.65) #13
  br label %alps_enter_command_mode.exit

alps_enter_command_mode.exit:                     ; preds = %if.then9.i, %do.body4.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #13
  br label %if.end.thread

if.end.thread:                                    ; preds = %alps_enter_command_mode.exit, %if.then18.if.end.thread_crit_edge
  %call.i814 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 234) #13
  %call2816 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 244) #13
  br label %if.end39

if.end:                                           ; preds = %land.lhs.true.i.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #13
  %call26 = call fastcc i32 @alps_command_mode_read_reg(ptr noundef %psmouse, i32 noundef 215)
  %call.i8 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 234) #13
  %call28 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef null, i32 noundef 244) #13
  %21 = zext i32 %call26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %call26, label %if.end.if.end39_crit_edge [
    i32 12, label %if.end.if.then38_crit_edge
    i32 29, label %if.end.if.then38_crit_edge17
  ]

if.end.if.then38_crit_edge17:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then38

if.end.if.then38_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then38

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then38:                                        ; preds = %if.end.if.then38_crit_edge, %if.end.if.then38_crit_edge17, %if.then.if.then38_crit_edge
  %flags = getelementptr inbounds %struct.alps_data, ptr %priv, i32 0, i32 13
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %or = or i32 %23, 1026
  store i32 %or, ptr %flags, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end.if.end39_crit_edge, %if.end.thread, %land.lhs.true8.if.end39_crit_edge, %land.lhs.true.if.end39_crit_edge, %entry.if.end39_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !30, !32, !34, !35, !36, !37, !39, !41, !43, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !62, !64, !65, !66, !68, !69, !70, !71, !72, !74, !75, !77, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !136, !137, !138, !140, !141, !142, !143, !145, !146, !148, !149, !150, !151, !153, !154, !156, !158, !159, !160, !162, !163, !164, !166, !167, !169, !171, !173, !174, !175, !177, !178, !179, !181, !183, !184, !185, !187, !188}
!llvm.module.flags = !{!189, !190, !191, !192, !193, !194, !195, !196}
!llvm.ident = !{!197}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/mouse/alps.c", i32 3096, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @alps_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @alps_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/input/mouse/alps.c", i32 3102, i32 46}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/mouse/alps.c", i32 3110, i32 16}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/mouse/alps.c", i32 3133, i32 4}
!14 = !{ptr @alps_init._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @alps_init._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @alps_init.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/input/mouse/alps.c", i32 3145, i32 2}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @alps_init.__key.11, !17, !"__key", i1 false, i1 false}
!20 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/mouse/alps.c", i32 3191, i32 3}
!23 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @alps_detect.__UNIQUE_ID_ddebug246, !22, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/mouse/alps.c", i32 3215, i32 21}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/mouse/alps.c", i32 3217, i32 5}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/mouse/alps.c", i32 3217, i32 28}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/mouse/alps.c", i32 1414, i32 3}
!34 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @alps_register_bare_ps2_mouse._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @alps_register_bare_ps2_mouse._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/mouse/alps.c", i32 1419, i32 45}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/mouse/alps.c", i32 1421, i32 18}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/mouse/alps.c", i32 1421, i32 29}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/mouse/alps.c", i32 1428, i32 15}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/mouse/alps.c", i32 1446, i32 3}
!47 = !{ptr @alps_register_bare_ps2_mouse._entry.25, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @alps_register_bare_ps2_mouse._entry_ptr.27, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/mouse/alps.c", i32 1397, i32 8}
!51 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @alps_mutex, !50, !"alps_mutex", i1 false, i1 false}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/mouse/alps.c", i32 1637, i32 3}
!55 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @alps_process_byte.__UNIQUE_ID_ddebug238, !54, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!57 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/mouse/alps.c", i32 1647, i32 3}
!59 = !{ptr @alps_process_byte.__UNIQUE_ID_ddebug239, !58, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!60 = !{ptr @alps_process_byte.__UNIQUE_ID_ddebug240, !61, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!61 = !{!"../drivers/input/mouse/alps.c", i32 1672, i32 3}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/mouse/alps.c", i32 1530, i32 4}
!64 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @alps_handle_interleaved_ps2.__UNIQUE_ID_ddebug236, !63, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/mouse/alps.c", i32 2933, i32 4}
!68 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @alps_identify._entry, !67, !"_entry", i1 false, i1 false}
!71 = !{ptr @alps_identify._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/mouse/alps.c", i32 2938, i32 4}
!74 = !{ptr @alps_identify.__UNIQUE_ID_ddebug245, !73, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/mouse/alps.c", i32 1785, i32 2}
!77 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @alps_rpt_cmd.__UNIQUE_ID_ddebug241, !76, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!79 = !{ptr @alps_model_data, !80, !"alps_model_data", i1 false, i1 false}
!80 = !{!"../drivers/input/mouse/alps.c", i32 106, i32 37}
!81 = !{ptr @alps_v4_protocol_data, !82, !"alps_v4_protocol_data", i1 false, i1 false}
!82 = !{!"../drivers/input/mouse/alps.c", i32 147, i32 40}
!83 = !{ptr @alps_v5_protocol_data, !84, !"alps_v5_protocol_data", i1 false, i1 false}
!84 = !{!"../drivers/input/mouse/alps.c", i32 151, i32 40}
!85 = !{ptr @alps_v7_protocol_data, !86, !"alps_v7_protocol_data", i1 false, i1 false}
!86 = !{!"../drivers/input/mouse/alps.c", i32 155, i32 40}
!87 = !{ptr @alps_v3_rushmore_data, !88, !"alps_v3_rushmore_data", i1 false, i1 false}
!88 = !{!"../drivers/input/mouse/alps.c", i32 143, i32 40}
!89 = !{ptr @alps_v3_protocol_data, !90, !"alps_v3_protocol_data", i1 false, i1 false}
!90 = !{!"../drivers/input/mouse/alps.c", i32 139, i32 40}
!91 = !{ptr @alps_v8_protocol_data, !92, !"alps_v8_protocol_data", i1 false, i1 false}
!92 = !{!"../drivers/input/mouse/alps.c", i32 159, i32 40}
!93 = distinct !{null, !94, !"alps_v9_protocol_data", i1 false, i1 false}
!94 = !{!"../drivers/input/mouse/alps.c", i32 163, i32 40}
!95 = !{ptr @alps_set_protocol.__key, !96, !"__key", i1 false, i1 false}
!96 = !{!"../drivers/input/mouse/alps.c", i32 2728, i32 2}
!97 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/input/mouse/alps.c", i32 1594, i32 4}
!100 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @alps_flush_packet.__UNIQUE_ID_ddebug237, !99, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/input/mouse/alps.c", i32 2027, i32 3}
!104 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @alps_hw_init_v1_v2._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @alps_hw_init_v1_v2._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/input/mouse/alps.c", i32 2032, i32 3}
!109 = !{ptr @alps_hw_init_v1_v2._entry.46, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @alps_hw_init_v1_v2._entry_ptr.48, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/input/mouse/alps.c", i32 2043, i32 3}
!113 = !{ptr @alps_hw_init_v1_v2._entry.49, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @alps_hw_init_v1_v2._entry_ptr.51, !112, !"_entry_ptr", i1 false, i1 false}
!115 = distinct !{null, !116, !"alps_dmi_has_separate_stick_buttons", i1 false, i1 false}
!116 = !{!"../drivers/input/mouse/alps.c", i32 170, i32 35}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/input/mouse/alps.c", i32 2230, i32 3}
!119 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @alps_hw_init_v3._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @alps_hw_init_v3._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/input/mouse/alps.c", i32 2272, i32 3}
!124 = !{ptr @alps_hw_init_v3._entry.54, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @alps_hw_init_v3._entry_ptr.56, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/input/mouse/alps.c", i32 2179, i32 3}
!128 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @alps_setup_trackstick_v3._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @alps_setup_trackstick_v3._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/input/mouse/alps.c", i32 2182, i32 3}
!133 = !{ptr @alps_setup_trackstick_v3.__UNIQUE_ID_ddebug243, !132, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/input/mouse/alps.c", i32 2184, i32 4}
!136 = !{ptr @alps_setup_trackstick_v3._entry.60, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @alps_setup_trackstick_v3._entry_ptr.62, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/input/mouse/alps.c", i32 1811, i32 3}
!140 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @alps_enter_command_mode._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @alps_enter_command_mode._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/input/mouse/alps.c", i32 1816, i32 3}
!145 = !{ptr @alps_enter_command_mode.__UNIQUE_ID_ddebug242, !144, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!146 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/input/mouse/alps.c", i32 564, i32 3}
!148 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @alps_process_trackstick_packet_v3._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @alps_process_trackstick_packet_v3._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/input/mouse/alps.c", i32 571, i32 3}
!153 = !{ptr @alps_process_trackstick_packet_v3.__UNIQUE_ID_ddebug233, !152, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!154 = !{ptr @alps_v3_nibble_commands, !155, !"alps_v3_nibble_commands", i1 false, i1 false}
!155 = !{!"../drivers/input/mouse/alps.c", i32 35, i32 42}
!156 = !{ptr @.str.69, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/input/mouse/alps.c", i32 2319, i32 2}
!158 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @alps_get_v3_v7_resolution.__UNIQUE_ID_ddebug244, !157, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!160 = !{ptr @.str.71, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/input/mouse/alps.c", i32 2397, i32 3}
!162 = !{ptr @alps_hw_init_v4._entry, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @alps_hw_init_v4._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @alps_hw_init_v4._entry.72, !165, !"_entry", i1 false, i1 false}
!165 = !{!"../drivers/input/mouse/alps.c", i32 2445, i32 3}
!166 = !{ptr @alps_hw_init_v4._entry_ptr.73, !165, !"_entry_ptr", i1 false, i1 false}
!167 = distinct !{null, !168, !"__already_done", i1 false, i1 false}
!168 = !{!"../drivers/input/mouse/alps.c", i32 906, i32 6}
!169 = !{ptr @alps_v4_nibble_commands, !170, !"alps_v4_nibble_commands", i1 false, i1 false}
!170 = !{!"../drivers/input/mouse/alps.c", i32 54, i32 42}
!171 = !{ptr @.str.74, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/input/mouse/alps.c", i32 2082, i32 3}
!173 = !{ptr @alps_hw_init_v6._entry, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @alps_hw_init_v6._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.75, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/input/mouse/alps.c", i32 840, i32 4}
!177 = !{ptr @alps_process_packet_v6._entry, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @alps_process_packet_v6._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @alps_v6_nibble_commands, !180, !"alps_v6_nibble_commands", i1 false, i1 false}
!180 = !{!"../drivers/input/mouse/alps.c", i32 73, i32 42}
!181 = !{ptr @.str.76, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/input/mouse/alps.c", i32 1097, i32 3}
!183 = !{ptr @alps_process_trackstick_packet_v7._entry, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @alps_process_trackstick_packet_v7._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.77, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/input/mouse/alps.c", i32 1358, i32 4}
!187 = !{ptr @alps_process_packet_ss4_v2._entry, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @alps_process_packet_ss4_v2._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{i32 1, !"wchar_size", i32 2}
!190 = !{i32 1, !"min_enum_size", i32 4}
!191 = !{i32 8, !"branch-target-enforcement", i32 0}
!192 = !{i32 8, !"sign-return-address", i32 0}
!193 = !{i32 8, !"sign-return-address-all", i32 0}
!194 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!195 = !{i32 7, !"uwtable", i32 1}
!196 = !{i32 7, !"frame-pointer", i32 2}
!197 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!198 = !{!"branch_weights", i32 1, i32 2000}
!199 = !{i64 2148288148, i64 2148288153, i64 2148288166, i64 2148288210, i64 2148288244, i64 2148288265}
!200 = !{!"branch_weights", i32 2000, i32 1}
